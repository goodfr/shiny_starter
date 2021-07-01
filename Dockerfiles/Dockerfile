FROM rocker/shiny:4.0.4

COPY R/app.R app/app.R

EXPOSE 3838

ENTRYPOINT ["R", "-e shiny::runApp('app')"]
