library(palmerpenguins)

ui <- fluidPage(
  
  navbarPage(
    "My navigation bar",
    tabPanel("Input",
             HTML('Vive les <u>pingouins</u> ! <br>
                  Ne pas confondre <b>pingouins</b> et <i>manchots</i>. <br>
                  Les pingouins sont &lt; ou &gt; aux manchots ? <br>
                  Les pingouins sont < ou > aux manchots ? <br>'),
             sliderInput(inputId = "bill_length", label = "Select the range of bill length?", value = c(40,50), min = 32, max = 60),
    ),
    navbarMenu("Analysis",
               tabPanel("Plot",
                        plotOutput("penguin_plot"),
               ),
               tabPanel("Table",
                        tableOutput("penguin_table")
               )
    )
    
  )
  
)


server <- function(input, output){
  
  data <- reactive({
    subset(penguins, bill_length_mm > input$bill_length[1] & bill_length_mm < input$bill_length[2])
  })
  
  output$penguin_plot <- renderPlot({
    plot(data()$bill_depth_mm, data()$bill_length_mm, col = data()$species)
  })
  
  output$penguin_table <- renderTable({
    data()
  })
  
  output$penguin_text <- renderText({
    "Let me introduce you to the life of the Palmer's Penguins"
  })
  
}
# Run the application 
shinyApp(ui = ui, server = server)
