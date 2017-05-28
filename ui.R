library(shiny)
shinyUI(fluidPage(
  titlePanel("Plotting Distributions"),
    sidebarLayout(
    sidebarPanel(
      radioButtons("dist", "Distribution type:", c("Normal" = "norm", "Uniform" = "unif",
                     "Log-normal" = "lnorm", "Exponential" = "exp")),
      br(),
      numericInput("n", "How Many Random Numbers Should Be Plotted?", value = 1000, min = 1, 
                   max = 1000)
    ),
      mainPanel(
        h3("Distribution Plot"),
        plotOutput("plot"),
        h6("This graphs shows a histopgram representation of different distributions. You can select
           the different types of distribution on the side panel to see how they look like in a 
           histogram. As well, you can enter the number of observations from 0 to 1,000 and see how 
           the distributions from from few data points to a lot.")
    )
  )
)
)
