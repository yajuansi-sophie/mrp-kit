#' Bring together the survey and post-stratification datasets
#'
#' @title bring_together_survey_and_poststrat
#'
#' @description This takes a survey dataset and a post-stratification dataset and brings them together.
#'
#' @param survey_data A tibble of individuals and responses.
#' @param aligned_levels A csv specifying how the levels in each align.
#' @param survey_variable_of_interest A csv specifying how the levels in each align.
#'
#' @return aligned_survey A modified version of the survey dataset that has its levels aligned with the poststratification dataset.
#'
#' @examples TBD
#'
#' @export

# This first 'helper' function joins the survey data levels with the aligned levels
# To allow this to work the other way, we'd need another one that works for the poststrat dataset or to modify this one
get_aligned_levels_for_survey <- function(some_survey_data, survey_variable_of_interest, aligned_levels_type){
  some_survey_data %>%
    select(survey_variable_of_interest) %>%
    left_join(y = aligned_levels %>% filter(variable == aligned_levels_type) %>% select(-variable), by = setNames("sample", survey_variable_of_interest)) %>%
    select(-survey_variable_of_interest) %>%
    rename(setNames("popn", survey_variable_of_interest))
}

# This is the function that we want the user to use. It applies that helper function variously to the different columns
bring_together_survey_and_poststrat <- function(survey_data, aligned_levels, survey_variable_of_interest) {

  survey_data <- survey_data %>% select(survey_variable_of_interest)

  mashed_together <- purrr::map2_dfc(names(survey_data), unique(aligned_levels$variable), ~ get_aligned_levels_for_survey(survey_data, .x, .y))

  return(mashed_together)

}



