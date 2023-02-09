##################################################  Gp 3
##########_Carte avec les points en Shiny_########  
#####################__UI__#######################  R - Shiny

library(shiny)
library(leaflet)
library(shiny.fluent)
library(shinydashboard)
library(shinyWidgets)

fluidPage(
  navbarPage(
    "Navigation bar",
    #### PAGE D'ACCUEIL ####
    tabPanel("Bienvenue",source("Onglets/Bienvenu.R", local = TRUE)$value),
    #### CARTE ####
    tabPanel("Carte",source("Onglets/Carte.R", local = TRUE)$value),
    ######## MONUMENTS ########
    navbarMenu("Monuments",
               ##### Fourvière #####
               tabPanel("Notre dame de Fourvière",source("Onglets/Notre dame de Fourvière.R", local = TRUE)$value),
               ##### Illusion #####
               tabPanel("Musée de l’illusion",source("Onglets/Musée de l illusion.R", local = TRUE)$value),
               ##### Halles #####
               tabPanel("Halles Paul Bocuse",source("Onglets/Halles Paul Bocuse.R", local = TRUE)$value),
               ##### Saint-Jean #####
               tabPanel("Cathédrale Saint-Jean",source("Onglets/Cathédrale Saint-Jean.R", local = TRUE)$value),
               ##### Tête d'or #####
               tabPanel("Parc de la tête d’or", source("Onglets/Parc de la tête d or.R", local = TRUE)$value),
               ##### Confluences #####
               tabPanel("Musée des confluences",source("Onglets/Musée des confluences.R", local = TRUE)$value ),
               ##### Miniature&Cinéma #####
               tabPanel("Musée de la miniature et du cinéma",source("Onglets/Musée de la miniature et du cinéma.R", local = TRUE)$value ),
               ##### Théatre Romain #####
               tabPanel("Théâtre romain de Fourvière",source("Onglets/Théâtre romain de Fourvière.R", local = TRUE)$value ),
               ##### Beaux-arts #####
               tabPanel("Musée des beaux-arts",source("Onglets/Musée des beaux-arts.R", local = TRUE)$value )
    )
  )
)
