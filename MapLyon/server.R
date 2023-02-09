##################################################  Gp 3
##########_Carte avec les points en Shiny_########  
##################__server__######################  R - Shiny

library(shiny)

# Define server logic required to draw a histogram
function(input, output) {

  output$Carte <- renderLeaflet({
    Carte <- leaflet() %>% addTiles()
    Carte <- addMarkers(Carte, lng=4.84671 , lat=45.74846  , popup="Halles Paul Bocuse")
    Carte <- addMarkers(Carte, lng=4.8275 , lat=45.7607 , popup="Cathédral Saint Jean")
    Carte <- addMarkers(Carte, lng=4.8187 , lat=45.7337 , popup="Musée des Confluences")
    Carte <- addMarkers(Carte, lng=4.85528 , lat=45.77737 , popup="Parc de la tête d'Or")
    Carte <- addMarkers(Carte, lng=4.827787279578491 , lat=45.762048131221704 , popup="Musée de la miniature et du cinéma")
    Carte <- addMarkers(Carte, lng=4.818496726 , lat=45.75583031 , popup="Théâtre romain de Fourvière")
    Carte <- addMarkers(Carte, lng=4.833512 , lat=45.767272 , popup="Musée des Beaux-Arts ")
    Carte <- addMarkers(Carte, lng=4.835791 , lat=45.758038  , popup="Musée de l'illusion")
    Carte <- addMarkers(Carte, lng=4.821866 , lat=45.762361 , popup="Basilique de Fourvière")
    Carte
  })
}

#shinyApp(ui = ui, server = server)
