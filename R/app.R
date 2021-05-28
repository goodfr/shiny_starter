library(shiny)

ui <- function(){
	fluidPage(
		sidebarLayout(
			sidebarPanel = sidebarPanel(
				h3("To demonstrate basic shiny deployment with Docker")
			),
			mainPanel = mainPanel(
				shiny::dataTableOutput(outputId = "table")
				)
		)
	)
}

server <- function(input, output, session){
	output$table <- shiny::renderDataTable(iris)
}

shinyApp(ui, server, options = list("port" = 3838, "host" = "0.0.0.0"))
