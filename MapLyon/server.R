##################################################  Gp 3
##########_Carte avec les points en Shiny_########  
##################__server__######################  R - Shiny

library(shiny)
library(leaflet)
library(shiny.fluent)
library(shinydashboard)
library(shinyWidgets)

monumentIcons <-iconList(
  museeicone <- makeIcon(iconUrl= "Images/icone_musee.png", iconWidth = 20 , iconHeight = 20),
  parcicone <- makeIcon(iconUrl = "Images/icone_parc.png",iconWidth = 20 , iconHeight = 20),
  egliseicone <- makeIcon(iconUrl = "Images/icone_cathedrale.png", iconWidth = 20 , iconHeight = 20),
  toqueicone <- makeIcon(iconUrl = "Images/icone_toque.png", iconWidth = 20 , iconHeight = 20)
)

# Define server logic required to draw a histogram
function(input, output) {

  output$Carte <- renderLeaflet({
    Carte <- leaflet() %>% addTiles()
    Carte <- addMarkers(Carte, lng=4.84671 , lat=45.74846  , popup="Halles Paul Bocuse", icon = toqueicone)
    Carte <- addMarkers(Carte, lng=4.8275 , lat=45.7607 , popup="Cathédral Saint Jean", icon = egliseicone)
    Carte <- addMarkers(Carte, lng=4.8187 , lat=45.7337 , popup="Musée des Confluences", icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.85528 , lat=45.77737 , popup="Parc de la tête d'Or", icon = parcicone)
    Carte <- addMarkers(Carte, lng=4.827787279578491 , lat=45.762048131221704 , popup="Musée de la miniature et du cinéma", icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.818496726 , lat=45.75583031 , popup="Théâtre romain de Fourvière", icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.833512 , lat=45.767272 , popup="Musée des Beaux-Arts ", icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.835791 , lat=45.758038  , popup="Musée de l'illusion", icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.821866 , lat=45.762361 , popup="Basilique de Fourvière", icon = egliseicone)
    Carte
  })
  
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
