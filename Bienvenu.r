library(shiny)
library(shiny.fluent)
library(shinydashboard)
library(shinyWidgets)

ui <- fluidPage(
  
  fluidRow(column(12,
                  align = "center",
                  strong(tags$h4("☆☆☆☆☆")))),  
  
  fluidRow(column(12,
                  align = "center",
                  strong(tags$h1("Web-Guide Touristique")))),
  
  fluidRow(column(12,
                  align = "center",
                  (em(tags$h6("Ce Guide est créé par notre équipe OPEN :"))))),
  
  fluidRow(column(12,
                  align = "center",
                  em(tags$h6("Alexandre, Anthony, Camille, Inna, Larissa, Marie, Marion, Michael, Pierre, Rubenne, Théo")))),
  
  
  
  
  titlePanel(
    img(src="https://www.actualitix.com/wp-content/uploads/2016/12/carte-lyon.png",
        align = "left",
        width = 200,
        height = 200)),
  
  
  mainPanel(fluidRow(column(8,
                            align = "left",
                            strong(tags$h1(" ")))),
    
  fluidRow(column(8,
                  align = "left",
                  strong(tags$h1(" ")))),
            
  fluidRow(column(8,
                  align = "left",
                  strong(tags$h4("     - Conseil des lieux à visiter,")))),
  
  fluidRow(column(8,
                  align = "left",
                  strong(tags$h4("     - Carte interactive de Lyon.")))),
  
  fluidRow(column(8,
                  align = "left",
                  actionButton("Button", label = "Carte interactive >", class = "btn-success")))),
  
  
  
  fluidRow(column(12,
                  align = "center",
                  em(tags$h6("BIENVENUE! Je suis votre Web_Guide Touristique.")))),
  
  fluidRow(column(12,
                  align = "center",
                  em(tags$h6("Je peux vous aider à choisir les endroits à visiter selon vos exigences et votre disponibilité")))),
  
  fluidRow(column(12,
                  align = "center",
                  em(tags$h6("Vous êtes notre nouvel utilisateur. Avant de partir en voyage, une minute ...")))),
  
  fluidRow(column(12,
                  align = "center",
                  em(tags$h6("Je vous propose un questionnaire pour mieux vous connaitre.")))),
  
  
  #NAME
  fluidRow( textInput
            (inputId = "name",
              label = "Quel est votre prénom ? ",
              placeholder = "Prénom"),
           align = "center"),
  
  
  #AGE
  fluidRow(checkboxGroupInput("checkGroup1",
                     label = h5("Vous avez :"), 
                     choices = list("plus de 18 ans" = TRUE,
                                    "moins de 18 ans" = FALSE),
                     selected = TRUE),
           align = "center"),
  
  fluidRow(column(3, verbatimTextOutput("text_choice")),
           align = "center"),
  
  
  #N_DAYS
  fluidRow(checkboxGroupInput("checkGroup2", 
                              label = h5("Pour combien de jours serez-vous à Lyon ?"), 
                              choices = list("un week-end" = 1, 
                                             "4 jours" = 2, 
                                             "une semaine" = 3,
                                             "~14 jours" = 4),
                              ),
           align = "center"),
  
  fluidRow(column(3, verbatimTextOutput("text_choice"))),
  
  #Tourist_type
  fluidRow(checkboxGroupInput
           ("checkGroup3",
             label = h5("Quel type de touriste êtes-vous ?"),
             choices = list("Touriste domestique (voyage dans votre propre pays)",
                            "Touriste à l'étranger (voyage dans un autre pays)"),
             ),
           align = "center"),
  
  fluidRow(column(3, verbatimTextOutput("text_choice"))),
  
  
  
  #Transport
  fluidRow(checkboxGroupInput
           ("checkGroup4",
             label = h5("Votre type de transport :"),
             choices = list("voiture",
                            "transport public",
                            "marche à pied"),
             ),
           align = "center"),
  
  fluidRow(column(3, verbatimTextOutput("text_choice"))),
  
  #Object
  fluidRow(checkboxGroupInput
           ("checkGroup5",
             label = h5("Vos intérêts et objectifs touristiques :"),
             choices = list("découvrire la gastronomie",
                            "découvrir la culture",
                            "voyage de loisir"),
           ),
           align = "center"),
  
  fluidRow(column(3, verbatimTextOutput("text_choice"))),

  setBackgroundImage(
    src = "https://www.publicdomainpictures.net/pictures/440000/velka/blank-paper-background-16430205722ly.jpg") 
  
)

###################################
server <- function(input, output, session) {
  
  observeEvent(input$Button, {
    output$TextOutput <- renderText("X")
  })
  
  output$sentence <- renderText({
    paste(input$name,
          ", on vous propose de répondre à quelques questions. Ça ne prend pas beaucoup de temps ( ◡‿◡ *).")}) 
  
  output$text_choice <- renderPrint({
    return(paste0("Accesss is allowed :",input$checkGroup1))
    })
  
}

shinyApp(ui, server)
  