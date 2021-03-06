% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.functions.R
\name{get.tornado.plot}
\alias{get.tornado.plot}
\title{Render a tornado plot}
\usage{
get.tornado.plot(
  outcome_variable,
  parameters = parms.tried.df,
  outcomes = outcomes.summary.df,
  method = "kendall-partial-correlation-slow",
  bin_width = 0.5,
  element_text_size = 12,
  order_by_absolute_value = FALSE,
  add_label = FALSE,
  height = NULL,
  width = NULL,
  parameter_labels = NULL
)
}
\arguments{
\item{outcome_variable}{a character element.}

\item{parameters}{the parms.tried.df data frame.}

\item{outcomes}{the outcomes.summary.df data frame.}

\item{method}{a character element ("kendall-partial-correlation-slow", "pearson-partial-correlation-fast", #' "pearson-partial-correlation-slow", "spearman-partial-correlation-slow", "negative-log-p-value", "t-test").}

\item{bin_width}{a numeric element representing the width of the bars (by default, 0.5).}

\item{element_text_size}{a numeric element (by default, 12).}

\item{order_by_absolute_value}{a logical element representing whether to order the bars by absolute value (by default, FALSE).}

\item{add_label}{a logical element representing whether to add labels to the bars (by default, FALSE).}

\item{height}{an integer element representing the height of the plot in pixels.}

\item{width}{an integer element representing the width of the plot in pixels.}

\item{parameter_labels}{a character vector representing custom labels for all parameters.}
}
\value{
none.
}
\description{
Render a tornado plot
}
\examples{
# Load demo data
data("EpiSim.demo")

# Define results
parameters.swept <- EpiSim.demo$parameters
outcomes.summary.df <- EpiSim.demo$results

get.tornado.plot(
  outcome_variable = "maxInc",
  parameters = parameters.swept,
  outcomes = outcomes.summary.df,
  height = 500,
  width = 756
)

}
