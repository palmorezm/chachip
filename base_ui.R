# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
# Developed with R version 3.3.2 (64-bit)
library(dplyr)
library(stringr)
library(png)
library(shinyjs)
library(DT)
library(visNetwork)
library(rintrojs)
library(shinydashboard)

source("carouselPanel.R")

# Panel div for visualization
# override the currently broken definition in shinyLP version 1.1.0
panel_div <- function(class_type, content) {
    div(class = sprintf("panel panel-%s", class_type),
        div(class = "panel-body", content)
    )
}

# Grab the css theme for editing then clone with git
# https://www.getpapercss.com/

shinyUI(
    navbarPage(
        title = img(src="Rock-County-Logo.png", 
                    height = "30px"), 
        id = "navBar",
        theme = "journal",
        collapsible = FALSE,
        inverse = FALSE,
        windowTitle = "RCPHD CHA-CHIP",
        position = "fixed-top",
        footer = includeHTML("./www/footer.html"),
        tabPanel(title = "HOME", 
                 value = "home"), 
        tabPanel(title = "DATA", 
                 value = "data"), 
        tabPanel(title = "About", 
                 value = "about")
    )
)