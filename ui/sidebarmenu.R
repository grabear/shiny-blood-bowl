
sidebarMenu(
  id = "menu",
  menuItem("New Team", tabName = "team-creation"),
  wellPanel(span(h5(uiOutput("currentUser")), style = "color:black", align="center"))
)