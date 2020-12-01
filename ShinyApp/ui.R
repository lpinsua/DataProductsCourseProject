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
