from rocker/shiny:4.0.4

copy R/app.R app/app.R

expose 3838

CMD ["R", "-e shiny::runApp('app')"]
