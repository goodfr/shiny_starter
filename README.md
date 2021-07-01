Shiny app deployment
================

## Objectives

Explore some ways to deploy shiny apps.

## How to use this project

One can test this project using one the following method :

-   Clone the repository and using docker commands

<!-- -->

    docker build -t shiny_test:v1 --file Dockerfiles/Dockerfile .
    docker run --name shiny_test -p 3838:3838 shiny_test:v1

-   (To do) Pull the image from docker hub then run it

<!-- -->

    # optionnal step if docker hub is used / mandatory if the repository is not part of docker hub
    # docker pull <name_of_the_repository>/shiny_test:v1
    docker run --name shiny_test -p 3838:3838 <name_of_the_repository>/shiny_test:v1

Done so far and working with docker :
  * mono app ok
  * multi file app ok
  * app as a package ?
