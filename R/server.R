library(shiny)

server <- function(input, output, session){
	output$table <- shiny::renderDataTable(iris)
}
