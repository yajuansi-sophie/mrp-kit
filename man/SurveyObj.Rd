% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SurveyObj.R
\name{SurveyObj}
\alias{SurveyObj}
\title{An S4 class to represent a survey}
\usage{
SurveyObj(survey_data, questions = NA, answers = NA, design = "~.")
}
\description{
An S4 class to represent a survey
}
\section{Slots}{

\describe{
\item{\code{survey_data}}{A dataframe}

\item{\code{questions}}{A vector of questions}

\item{\code{design}}{A formula class that specifies the survey design. Examples include
~. a random sample, ~ (1|cluster), a one stage cluster sample, ~ stratum, a stratified sample}
}}

