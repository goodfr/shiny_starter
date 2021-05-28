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
