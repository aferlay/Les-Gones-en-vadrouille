##################################################  Gp 3
##########_Carte avec les points en Shiny_########  
##################################################  R - Shiny
library(shiny)
library(leaflet)

ui <- fluidPage(
  navbarPage(
    "Navigation bar",
    #### PAGE D'ACCUEIL ####
    tabPanel("Bienvenu",
             #rajouter ici les éléments de code de l'onglet Bienvenu
    ),
    #### CARTE ####
    tabPanel("Carte",
             leafletOutput("Carte", height = "500px")
    ),
    #### MONUMENTS ####
    navbarMenu("Monuments",
               tabPanel("Notre dame de Fourvière",
                        HTML('Notre-Dame de Fourvière est une basilique située sur la colline de Fourvière à Lyon. Elle a été construite entre 1872 et 1896 pour célébrer les événements religieux et les bénédictions sur la ville de Lyon. Cette basilique est considérée comme un symbole de la dévotion maritale en France et a été érigée en reconnaissance des grâces accordées à la ville pendant la peste de 1849. Le bâtiment a une architecture néogothique unique et est considéré comme l’un des plus beaux monuments religieux de France. Il est également célébré pour son panorama sur la ville de Lyon et les Alpes. Environ 4 millions de personnes visitent Notre-Dame de Fourvière chaque année, ce qui en fait l’un des sites touristiques les plus populaires de la région lyonnaise. De plus, le nombre de visiteurs est en continuelle expansion.'
                        )
               ),
               tabPanel("NomMonument2",
                        HTML('Vive les <u>pingouins</u> ! <br>
               Ne pas confondre <b>pingouins</b> et <i>manchots</i>. <br>
               Les pingouins sont &lt; ou &gt; aux manchots ? <br>
               Les pingouins sont < ou > aux manchots ? <br>'
                        )
               )
    )
  )
)

server <- function(input, output){
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

# Run the application 
shinyApp(ui = ui, server = server)
