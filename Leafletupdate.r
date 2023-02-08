##################################################  Gp 3
##############_Carte avec les points_#############  
##################################################  R - Shiny

library(leaflet)

# Création de la carte de Lyon 


Carte <- leaflet()
Carte <- addTiles(Carte)

#Carte <- addMarkers(Carte, lng=4.835659, lat=45.764043, popup= "Lyon")

Carte <- addMarkers(Carte, lng=4.846710 , lat=45.748460  , popup="Halles Paul Bocuse")
Carte <- addMarkers(Carte, lng=4.831498 , lat=45.764151 , popup="Cathédral Saint Jean")
Carte <- addMarkers(Carte, lng=4.811084 , lat=45.753559 , popup="Musée des Confluences")
Carte <- addMarkers(Carte, lng=4.852289 , lat=45.774580 , popup="Parc de la tête d'Or")
Carte <- addMarkers(Carte, lng=4.839852 , lat=45.762048131221704 , popup="Musée de la miniature et du cinéma")
Carte <- addMarkers(Carte, lng=4.826751 , lat=45.763890 , popup="Théâtre romain de Fourvière")
Carte <- addMarkers(Carte, lng=4.841599 , lat=45.763650 , popup="Musée des Beaux-Arts ")
Carte <- addMarkers(Carte, lng=4.838861 , lat=45.754787  , popup="Musée de l'illusion")
Carte <- addMarkers(Carte, lng=4.827751 , lat=45.766907 , popup="Basilique de Fourvière")
