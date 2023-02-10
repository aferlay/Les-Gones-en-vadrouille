##################################################  Gp 3
######_Carte des centres d'intérêts de Lyon_######  
#####################__UI__#######################  R - Shiny

library(shiny)
library(leaflet)
library(shiny.fluent)
library(shinydashboard)
library(shinyWidgets)

fluidPage(
  navbarPage(
    "Navigation bar",id = "NBP",
    #### PAGE D'ACCUEIL ####
    tabPanel("Bienvenue",value = "BVN", source("Onglets/Bienvenue.R", local = TRUE)$value),
    #### CARTE ####
    tabPanel("Carte",value = "CRT", source("Onglets/Carte.R", local = TRUE)$value),
    ######## MONUMENTS ########
    navbarMenu("Monuments",
               ##### Fourvière #####
               tabPanel("Notre Dame de Fourvière",value = "NDF",source("Onglets/Notre Dame de Fourvière.R", local = TRUE)$value),
               ##### Illusion #####
               tabPanel("Musée de l’illusion",value = "MDI",source("Onglets/Musée de l illusion.R", local = TRUE)$value),
               ##### Halles #####
               tabPanel("Halles Paul Bocuse",value = "HPB",source("Onglets/Halles Paul Bocuse.R", local = TRUE)$value),
               ##### Saint-Jean #####
               tabPanel("Cathédrale Saint-Jean",value = "CSJ",source("Onglets/Cathédrale Saint-Jean.R", local = TRUE)$value),
               ##### Tête d'or #####
               tabPanel("Parc de la tête d’or",value = "PTO", source("Onglets/Parc de la tête d or.R", local = TRUE)$value),
               ##### Confluences #####
               tabPanel("Musée des confluences",value = "MDC",source("Onglets/Musée des confluences.R", local = TRUE)$value ),
               ##### Miniature&Cinéma #####
               tabPanel("Musée de la miniature et du cinéma",value = "MMC",source("Onglets/Musée de la miniature et du cinéma.R", local = TRUE)$value ),
               ##### Théatre Romain #####
               tabPanel("Théâtre Gallo Romain de Lyon-Fourvière",value = "TGR",source("Onglets/Théâtre Gallo Romain de Lyon-Fourvière.R", local = TRUE)$value ),
               ##### Beaux-arts #####
               tabPanel("Musée des beaux-arts",value = "MBA",source("Onglets/Musée des beaux-arts.R", local = TRUE)$value )
    )
  )
)
