from rocker/shiny:4.0.4

copy R app

CMD ["R", "-e shiny::runApp('app')"]
