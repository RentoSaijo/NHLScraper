#' Get TV schedule by date
#' 
#' @param date string Date in 'YYYY-MM-DD'
#' @return tibble with one row per broadcast
#' @export

get_tv_schedule <- function(date='2025-01-01') {
  out <- nhl_api(
    path=sprintf('network/tv-schedule/%s', date),
    query=list(),
    stats_rest=F
  )
  return(tibble::as_tibble(out$broadcasts))
}

#' Get partner odds now
#' 
#' @param country string Country code e.g. 'US'
#' @return tibble with one row per game
#' @export

get_partner_odds <- function(country='US') {
  out <- nhl_api(
    path=sprintf('partner-game/%s/now', country),
    query=list(),
    stats_rest=F
  )
  return(tibble::as_tibble(out$games))
}

#' Get all seasons
#' 
#' @return tibble with one row per season
#' @export

get_seasons <- function() {
  out <- nhl_api(
    path='season',
    query=list(),
    stats_rest=F
  )
  return(tibble::as_tibble(out))
}

#' Get glossary
#' 
#' @return ???
#' @export

get_glossary <- function() {
  out <- nhl_api(
    path='glossary',
    query=list(),
    stats_rest=T
  )
  return(tibble::as_tibble(out$data))
}

