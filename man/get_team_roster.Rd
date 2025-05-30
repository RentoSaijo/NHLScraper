% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Team.R
\name{get_team_roster}
\alias{get_team_roster}
\title{Get team roster by season and player-type.}
\usage{
get_team_roster(team = "BOS", season = 20242025, player_type = "forwards")
}
\arguments{
\item{team}{string Team in 3-letter code}

\item{season}{integer Season in YYYYYYYY}

\item{player_type}{string Player-type of 'forwards', 'defensemen', or 'goalies'}
}
\value{
tibble with one row per player
}
\description{
Get team roster by season and player-type.
}
