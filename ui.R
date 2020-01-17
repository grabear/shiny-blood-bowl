library(shinydashboard)
library(shiny)
library(googlesheets4)


# -----  Start UI -----
dashboardPage(
  dashboardHeader(title = "Loot Dashboard",
                  htmlOutput("profile"),
                  tags$li(class = "dropdown", actionLink("logout", "Logout"))),
  dashboardSidebar(
    # Sidebar Menu
    source(file.path("ui", "sidebarmenu.R"), local=TRUE)$value
    
  ),
  dashboardBody(
  )
)