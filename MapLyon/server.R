##################################################  Gp 3
######_Carte des centres d'intérêts de Lyon_######   
##################__server__######################  R - Shiny

library(shiny)
library(leaflet)
library(shiny.fluent)
library(shinydashboard)
library(shinyWidgets)
##### DEFINITION DES ICONES #####
monumentIcons <-iconList(
  museeicone <- makeIcon(iconUrl= "Images/icone_musee.png", iconWidth = 20 , iconHeight = 20),
  parcicone <- makeIcon(iconUrl = "Images/icone_parc.png",iconWidth = 20 , iconHeight = 20),
  egliseicone <- makeIcon(iconUrl = "Images/icone_cathedrale.png", iconWidth = 20 , iconHeight = 20),
  toqueicone <- makeIcon(iconUrl = "Images/icone_toque.png", iconWidth = 20 , iconHeight = 20)
)
####### SERVER #######
function(input, output, session) {
  
##### DEFINITION DES POPUPS #####
  PopHPB <- paste(sep = "<br/>",
                       "Halles Paul Bocuse",
                       actionLink("?url=NPB/HPB", "en savoir plus...", 
                                  onclick = 'Shiny.onInputChange(\"link_click_HPB\",  Math.random())'))
  PopCSJ <- paste(sep = "<br/>",
                  "Cathédral Saint Jean",
                  actionLink("?url=NPB/CSJ", "en savoir plus...", 
                             onclick = 'Shiny.onInputChange(\"link_click_CSJ\",  Math.random())'))
  PopMDC <- paste(sep = "<br/>",
                  "Musée des Confluences",
                  actionLink("?url=NPB/MDC", "en savoir plus...", 
                             onclick = 'Shiny.onInputChange(\"link_click_MDC\",  Math.random())'))
  PopPTO <- paste(sep = "<br/>",
                  "Parc de la tête d'Or",
                  actionLink("?url=NPB/PTO", "en savoir plus...", 
                             onclick = 'Shiny.onInputChange(\"link_click_PTO\",  Math.random())'))
  PopMMC <- paste(sep = "<br/>",
                  "Musée de la miniature et du cinéma",
                  actionLink("?url=NPB/MMC", "en savoir plus...", 
                             onclick = 'Shiny.onInputChange(\"link_click_MMC\",  Math.random())'))
  PopTGR <- paste(sep = "<br/>",
                  "Théâtre Gallo Romain de Lyon-Fourvière",
                  actionLink("?url=NPB/TGR", "en savoir plus...", 
                             onclick = 'Shiny.onInputChange(\"link_click_TGR\",  Math.random())'))  
  PopMBA <- paste(sep = "<br/>",
                  "Musée des Beaux-Arts",
                     actionLink("?url=NPB/MBA", "en savoir plus...", 
                                onclick = 'Shiny.onInputChange(\"link_click_MBA\",  Math.random())'))
  PopMDI <- paste(sep = "<br/>",
                  "Musée de l'illusion",
                  actionLink("?url=NPB/MDA", "en savoir plus...", 
                             onclick = 'Shiny.onInputChange(\"link_click_MDI\",  Math.random())'))  
  PopNDF <- paste(sep = "<br/>",
                  "Notre Dame de Fourvière",
                     actionLink("?url=NPB/NDF", "en savoir plus...", 
                                onclick = 'Shiny.onInputChange(\"link_click_NDF\",  Math.random())'))
##### LA CARTE #####
  output$Carte <- renderLeaflet({
    Carte <- leaflet() %>% addTiles() 
    Carte <- addMarkers(Carte, lng=4.850516813124025 , lat=45.76315964094209 , 
                        popup= PopHPB, icon = toqueicone)
    Carte <- addMarkers(Carte, lng=4.827590704741025 , lat=45.76098790455786 , 
                        popup= PopCSJ, icon = egliseicone)
    Carte <- addMarkers(Carte, lng=4.818818317975190 , lat=45.73283704973472 , 
                        popup= PopMDC, icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.855225126161122 , lat=45.77738073069745 , 
                        popup= PopPTO, icon = parcicone)
    Carte <- addMarkers(Carte, lng=4.827787279578491 , lat=45.76204813122170 , 
                        popup= PopMMC, icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.820561330956112 , lat=45.75995029320802 , 
                        popup= PopTGR, icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.83412335263142  , lat=45.76730426755613 , 
                        popup= PopMBA, icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.83670549681269  , lat=45.75904162878503 , 
                        popup= PopMDI, icon = museeicone)
    Carte <- addMarkers(Carte, lng=4.822518708960921 , lat=45.76250235396492 , 
                        popup= PopNDF, icon = egliseicone)
    Carte
  })
  
  ##### LES LIENS DANS LES POPUPS #####
  observeEvent(input$link_click_HPB, {
    updateNavbarPage(session, "NBP","HPB")})
  observeEvent(input$link_click_CSJ, {
    updateNavbarPage(session, "NBP","CSJ")})
  observeEvent(input$link_click_MDC, {
    updateNavbarPage(session, "NBP","MDC")})
  observeEvent(input$link_click_PTO, {
    updateNavbarPage(session, "NBP","PTO")})
  observeEvent(input$link_click_MMC, {
    updateNavbarPage(session, "NBP","MMC")})
  observeEvent(input$link_click_TGR, {
    updateNavbarPage(session, "NBP","TGR")})
  observeEvent(input$link_click_MBA, {
    updateNavbarPage(session, "NBP","MBA")})
  observeEvent(input$link_click_MDI, {
    updateNavbarPage(session, "NBP","MDI")})
  observeEvent(input$link_click_NDF, {
    updateNavbarPage(session, "NBP","NDF")})
  
}
