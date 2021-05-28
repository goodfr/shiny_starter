# Load ui and server

# local test
# source("R/ui.R")
# source("R/server.R")

# for docker
source("ui.R")
source("server.R")

# create shiny object to call in runApp
app <- shiny::shinyApp(ui, server, options = list("port" = 3838, "host" = "0.0.0.0"))

app
