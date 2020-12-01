#
# This i

library(shiny)

# Define UI for app that draws a histogram for mtcars data
shinyUI(fluidPage(

    # Application title
    titlePanel("Motor Trend Car Road Tests"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            p("The histogram built in this app shows the distribution of MPG for 32 car models from 1974. Use the slider below to visualize the distribution with different numbers of bins."),
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 15,
                        value = 8)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
