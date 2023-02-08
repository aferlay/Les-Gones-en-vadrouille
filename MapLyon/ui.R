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
               tabPanel("Musée de l’Illusion",
                        HTML('Le Musée des Illusions de l illusion a été fondé en 2020 en tant que musée interactif et ludique consacré à l art des illusions d optique et des expériences sensorielles pour les visiteurs de tous âges.
Situé dans le centre de Lyon, il présente une collection d illusions d optique, de trompe-l œil, de jeux de miroirs et d autres expériences sensorielles. Les visiteurs peuvent explorer les différentes salles, prendre des photos amusantes et se laisser surprendre par les illusions. Le but du musée est à la fois de divertir et d éduquer les visiteurs en montrant comment le cerveau perçoit la réalité et comment les illusions peuvent manipuler nos sens.
                             Le Musée des illusions de Lyon est un choix populaire pour les familles, les amis et les groupes en quête d une expérience amusante et mémorable.'
                        )
               ),
               tabPanel("Halles Paul Bocuse",
                        HTML('Les Halles Paul Bocuse sont un marché couvert situé à Lyon. Ils ont été créés en 1859 et portent le nom du célèbre chef cuisinier Paul Bocuse. Les Halles sont considérées comme l un des plus grands et des plus anciens marchés couverts de France, offrant une variété de produits alimentaires frais tels que des fruits et des légumes, des viandes, du poisson et des fromages. Les Halles sont également connues pour leur atmosphère animée et leur architecture unique, avec leur plafond en fer forgé et leurs murs en pierre. Elles sont considérées comme un lieu emblématique pour les gourmets et les amateurs de cuisine à Lyon. Les Halles reçoivent environ 1 million de visiteurs par an et ont connu une popularité croissante au fil des ans en raison de leur renommée internationale et de leur rôle en tant que source d’ingrédients de qualité pour les chefs du monde entier.'
                        )
               ),
               tabPanel("Saint jean",
                        HTML('La Cathédrale Saint-Jean de Lyon est une cathédrale gothique située dans le centre-ville de Lyon. Elle a été construite entre le XIIIe et le XVe siècle et est considérée comme l une des plus grandes et des plus belles cathédrales gothiques de France.
La cathédrale est célèbre pour ses vitraux magnifiques, ses sculptures en pierre et ses nombreux autels et chapiteaux ornés. Elle est également connue pour son clocher imposant, qui offre une vue panoramique sur la ville de Lyon. La cathédrale Saint Jean est considérée comme un site touristique important à Lyon et est fréquenté par environ 500 000 visiteurs chaque année. Ce nombre continue d’augmenter en raison de son intérêt historique et de son importance architecturale. La cathédrale est également un lieu de culte actif pour la communauté catholique de Lyon.
'
                        )
               ),
               tabPanel("Parc de la tête d’or",
                        HTML('Le Parc de la Tête d Or, situé à Lyon en France, est un vaste parc public de 117 hectares accessible par 8 entrées, considéré comme l un des plus grands parcs urbains de France. Le parc a été créé en 1857 sous Napoléon III et l Impératrice Eugénie, comme un espace public pour la population lyonnaise.
Il a été conçu par le paysagiste Jean-Charles Alphand, qui a également travaillé sur les parcs de Bois de Boulogne à Paris et de La Canebière à Marseille. Il est réputé pour ses jardins paysagers, ses étangs, ses allées ombragées et ses installations de loisirs pour des activités en plein air. Le parc comprend également un zoo, un jardin botanique, une roseraie, un petit train touristique et une plage artificielle.
Celui-ci est composé de nombreux bâtiments comme les grandes serres, le vélodrome, le chalet des gardes et le chalet du parc, la clôture, les serres de collection, le monument aux morts de l île aux Cygnes ou encore la nouvelle roseraie.
C est un endroit de détente populaire pour les habitants de Lyon, où ils peuvent pique-niquer, se détendre sur les pelouses, faire du jogging, du vélo, etc. Le Parc de la Tête d Or est un incontournable pour les visiteurs de Lyon, offrant un espace vert paisible en plein cœur de la ville.
'
                        )
               ),
               tabPanel("Musée des confluences",
                        HTML('Le Musée des Confluences, situé dans le quartier de La Confluence à Lyon en France, est un établissement scientifique et culturel qui a ouvert ses portes en 2014, après plus de dix ans de travail et de préparation. Il se concentre sur la présentation de l histoire de l humanité, de la science et de la technologie, ainsi que sur les défis sociaux actuels.
Le bâtiment du Musée des Confluences a été conçu par l architecte Jean-Paul Viguier et a une forme distinctive en forme de boîte d œuf, située à la confluence du Rhône et de la Saône.
Le musée propose des expositions permanentes et temporaires, des activités éducatives pour tous les âges et une variété de programmes culturels. La collection permanente du musée comprend des artefacts scientifiques, historiques et culturels provenant du monde entier.
Le Musée des Confluences est considéré comme un important centre culturel et scientifique, offrant des activités éducatives pour les enfants et les adultes, ainsi qu une programmation culturelle variée. Depuis son ouverture, le musée a attiré des milliers de visiteurs chaque année et est devenu un lieu incontournable pour ceux qui cherchent à en savoir plus sur l histoire, la science et la société.
'
                        )
               ),
               tabPanel("Musée de la miniature et du cinéma",
                        HTML('Le Musée de la miniature et du cinéma a été créé en 2005 en raison du travail de l artiste miniaturiste nommé Dan Ohlmann. Dans le musée sont exposées deux collections permanentes: une partie consacrée à l art de la miniature et l autre partie, le cinéma. La partie des miniatures a plus de 100 maquettes réalistes qui représentent des scènes du quotidien. Ces œuvres ont été réalisées par divers artistes de l ébénisterie en passant par la maroquinerie, l orfèvrerie ou encore la lutherie. La partie dédiée au cinéma réunit toutes types de décors, costumes, masques ou prothèses utilisées en grands films. Le musée a aussi un support explicatif sur la réalisation des effets spéciaux au cinéma et comporte, également, des robots et des monstres ainsi que toute type de masques qui permettent de vieillir ou de rajeunir les acteurs.'
                        )
               ),
               tabPanel("Théâtre romain de Fourvière",
                        HTML('Le théâtre de Lugdunum est un site archéologique remarquable, emblématique de Lyon antique et un des principaux monuments romains existants. Il a été construit au début de l Empire, possiblement dans le règne d Auguste, et peut accueillir jusqu à 10 000 spectateurs, ce monument a été abandonné à la fin de l Empire romain et transformé en carrière complètement enseveli jusqu à au Moyennage. Le site archéologique a été dégagé au début du 20ème siècle et est inscrit sur la liste du patrimoine mondial de l Unesco.'
                        )
               ),
               tabPanel("Musée des beaux-arts",
                        HTML('Le musée des Beaux-Arts de Lyon est localisé dans l abbaye des Dames de Saint-Pierre, une bâtiment du 17ème siècle situé dans la région historique de la ville de Lyon. Le musée est ouvert au public depuis 1803 et, en 1998, a été entièrement rénové. Actuellement le musée a l une des plus importantes collections d oeuvres d art d Europe en cinq départements et 70 salles répartis sur plus de 7.000 m² : le département des Antiquités avec l histoire des grandes civilisations antiques du Bassin Méditerranéen. Le département des Objets d art et des sculptures mêlent les arts précieux et la sculpture, du Moyen-âge à la période Art Déco.Le Médailler du musée est l un des plus importants de France avec plus de 50 000 monnaies, médailles, sceaux et plombs. Les sculptures des 19ème et 20ème et la collection de peintures depuis le 14ème siècle jusqu aux années 1980. Toute l année, le musée des Beaux-Arts propose aussi des grandes expositions et des activités culturelles.'
                        )
               )
    )
  )
)