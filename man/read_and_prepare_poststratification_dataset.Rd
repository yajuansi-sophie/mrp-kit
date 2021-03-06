% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_and_prepare_poststrat.R
\name{read_and_prepare_poststratification_dataset}
\alias{read_and_prepare_poststratification_dataset}
\title{read_and_prepare_poststrat}
\usage{
read_and_prepare_poststratification_dataset(dataset_of_interest,
  desired_variables, correct_class)
}
\arguments{
\item{dataset}{A CSV file in which every row is a response and every column is a variable.}

\item{variables}{A list that specifies the necessary columns.}

\item{class}{A list that specifies the class of each of the necessary columns.}
}
\value{
postratification_dataset A dataset that is reduced to essentials and properly formatted.
}
\description{
This gets a CSV and checks whether the list of the variables is internally consistent.
}
\details{
Read and prepare post-stratification dataset
}
\examples{
TBD

}
