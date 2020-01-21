get_link <- function(table) {
  return(switch(table,
                players="https://docs.google.com/spreadsheets/d/16p-LNIhjx4tYwVnhWTf5QMyQmLmKY7oSO7p8zYZlCQo/edit?usp=sharing",
                star_players="https://docs.google.com/spreadsheets/d/1EPMOo6JGK172D9rPJ3g2A4CIb1xebShF787t5yxitBs/edit?usp=sharing",
                skills="https://docs.google.com/spreadsheets/d/1ltRvMvVye1jHMccgADG2AprNcNczk_UxmPjRG3xHbJQ/edit?usp=sharing"
  )
  )
}

get_data <- function(table) {
  return(switch(table,
                players=read_sheet(get_link(table)),
                star_players=read_sheet(get_link(table)),
                skills=read_sheet(get_link(table)),
                )
  )
}

withProgress(message = "Lodaing Data", value = 0, {
  incProgress(amount = 0.33, detail = "Loading Team Data")
  bb_data$players_table <- get_data("players")
  bb_data$team_names <- unique(bb_data$players_table$Team)
  incProgress(amount = 0.33, detail = "Loading Star Player Data")
  bb_data$star_players_table <- get_data("star_players")
  incProgress(amount = 0.33, detail = "Loading Skill Data")
  bb_data$skills_table <- get_data("skills")
})