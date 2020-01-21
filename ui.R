library(shinydashboard)
library(shiny)
library(googlesheets4)


# -----  Start UI -----
dashboardPage(
  dashboardHeader(title = "Loot Dashboard",
                  tags$li(class = "dropdown", actionLink("logout", "Logout"))),
  dashboardSidebar(
    # Sidebar Menu
    source(file.path("ui", "sidebarmenu.R"), local=TRUE)$value
    
  ),
  dashboardBody(
    tabItems(
      source(file.path("ui", "team-creation-tab.R"), local=TRUE)$value
    )
  )
)