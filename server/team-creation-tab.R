output$`team-output` <- renderUI({
  selectInput(inputId = "team-selection", label = "Select Your Team", choices=bb_data$team_names)
})