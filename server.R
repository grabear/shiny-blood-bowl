library(shiny)
library(shinydashboard)
library(googledrive)
library(googlesheets4)


server <- function(input, output, session) {
  
  # Authentication Window and Login Sequence
  source(file.path("server", "authentication.R"), local=TRUE)$value
  
}