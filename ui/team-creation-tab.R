tabItem(tabName = "team-creation",
        fluidRow(
          box(strong(h2("New Team")),
              textInput(inputId = "campaign-name", label = "Campaign Name"),
              htmlOutput("team-output")
              )
        ))