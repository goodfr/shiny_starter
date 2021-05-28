How to launch a shiny app from a R session
================

To launch app use one of the following `appDir` parameter option :

* point to the folder (here `R`) where lives `app.R` OR `server.R` + `ui.R` OR `server.R` + `www/index.html`
```
shiny::runApp(appDir = "R")
```

* specify a list with the ui and server component
```
shiny::runApp(appDir = list(ui, server))
```

* use a shiny app object (created with `shiny::shinyApp`)
```
shiny::runApp(appDir = app)
```
