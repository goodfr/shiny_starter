# --- minimal example of a packaged app
#' UI function
#'
#' A function that returns the user interface
#'
#' @importFrom shiny fluidPage sidebarLayout sidebarPanel h3 mainPanel dataTableOutput
#'
#' @return the ui object

ui_fun <- function(){
	shiny::fluidPage(
		shiny::sidebarLayout(
			sidebarPanel = shiny::sidebarPanel(
				shiny::h3("To demonstrate basic shiny deployment with Docker")
			),
			mainPanel = shiny::mainPanel(
				shiny::dataTableOutput(outputId = "table")
			)
		)
	)
}

#' Server function
#'
#' @param input, user input
#' @param output, server results
#' @param session, user session (cookies, ...)
#'
#' @importFrom datasets iris
#' @importFrom shiny renderDataTable
#'
#' @return a server object

server_fun <- function(input, output, session){
	output$table <- shiny::renderDataTable(datasets::iris)
}

#' Run app as a shiny package
#'
#' @param .ui, the ui function
#' @param .server, the server function
#'
#' @importFrom shiny shinyApp runApp
#'
#' @return a running app
#' @export

pkg_app <- function(.ui = ui_fun(), .server = server_fun){

	app <- shiny::shinyApp(ui = .ui,
			server = .server,
			options = list("port" = 3838, "host" = "0.0.0.0")
	)

	shiny::runApp(appDir = app)
}
