% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Goalie.R
\name{get_goalies}
\alias{get_goalies}
\title{Get all goalies' biographies by range of seasons}
\usage{
get_goalies(start_season = 19171918, end_season = get_season_now()$seasonId)
}
\arguments{
\item{start_season}{integer Season to start search in YYYYYYYY}

\item{end_season}{integer Season to end search in YYYYYYYY}
}
\value{
tibble with one row per goalie
}
\description{
Get all goalies' biographies by range of seasons
}
\examples{
goalies_2000s <- get_goalies(start_season=20002001, end_season=20242025)
}
