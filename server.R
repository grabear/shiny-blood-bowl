library(shiny)
library(shinydashboard)
library(googledrive)
library(googlesheets4)


server <- function(input, output, session) {
  # Initialize blood bowl data variable.
  bb_data <- reactiveValues()
  
  # Authentication Window and Login Sequence
  source(file.path("server", "authentication.R"), local=TRUE)$value
  source(file.path("server", "team-creation-tab.R"), local=TRUE)$value
}