---
layout: post
title:  "WSO2Con Europe 2016 - «Citius, Altius, Fortius» !"
date:   2016-06-15 10:00:00 +0200
categories:
  - Editeurs
tags:
  - WSO2
  - Open Source
excerpt: "Si l'on devait résumer la conférence Europe de WSO2 2016 on le ferait par la célèbre devise des Jeux Olympiques modernes choisi par Pierre de Coubertin «Citius, Altius, Fortius» qui signifient « plus vite, plus haut, plus fort »."
original_post:
  url: http://blog.smile.fr/Wso2con-europe-2016-citius-altius-fortius
  name: Blog des Experts Smile
---
{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-01.jpg",
    "alt": "WSO2Con Europe 2016 - opening ceremony"}  %}

Durant les 3 jours de conférences WSO2 nous a offert un concentré de son savoir faire et de sa formidable capacité à innover. Son premier ambassadeur, Sanjiva, lors de sa traditionnelle keynote, nous a présenté sa vision des usages de demain et des orientations technologiques à faire, tout en nous rappelant son engagement inflexible envers l'Open Source: "If you don't trust each other, you're not a team. We're open source and we'll always work that way".

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-02.jpg",
    "alt": "WSO2Con Europe 2016 - Sanjiva"}  %}

Sanjiva est revenu sur la success story de la société. Créée il y a 11 ans déjà, WSO2 compte maintenant plus de 500 employés répartis dans 5 pays, Sri-Lanka, Etats-Unis, Royaume-Uni, Brésil, Espagne (pas de bureau officiel dans ce dernier) et a construit “l'unique” plate-forme middleware complète sur le marché. Aujourd'hui WSO2 peut se prévaloir d'avoir 300 clients le supportant directement et de milliers d'anonymes usant quotidiennement de ses solutions. Parmi eux de très grands noms :

- **Ebay** dont 6 milliards de messages sont traités tous les jours par les technologies de WSO2
- **Uber** qui utilise WSO2 Complex Event Processor pour détecter les fraudes
- **Motorola** dont le célèbre MotoMaker exploite les solutions de WSO2 pour commander votre téléphone personnalisé
- **Transport For London (TFL)** qui contrôle, optimise et réduit les perturbations du trafic de bus londonien grâce à WSO2
- **United Airlines** qui optimise l'usage de sa flotte, les transferts passagers, et les temps d'escales
- **Domino's pizza** qui gére l'ensemble des commandes de ses clients grâce à WSO2

Quelques annonces:

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-03.jpg",
    "alt": "WSO2Con Europe 2016 - products update"}  %}

Nous détaillerons plus en détail WSO2 API Manager 2.0 et ESB 5.0 dans d’autres billets.

Il y a 10 ans WSO2 était un OVNI quand il a voulu mettre en place sa plate-forme mais il a su convaincre et prouver que sa vision était la bonne. Son écosystème s'est peu à peu enrichi et compte maintenant une vingtaine de produits. Mais 10 ans c'est long dans la haute technologie. Le coeur du système arrive à ses limites et WSO2 a su anticiper le problème en travaillant sur une nouvelle architecture. Carbon 5 est apparu au pied du sapin durant les fêtes de noël 2015. Depuis l’ensemble des équipes sont concentrés sur la migration de l’ensemble des composants actuels sur cette nouvelle plate-forme. En parallèle WSO2 continue à enrichir sa plate-forme actuel pour répondre à de nouveaux besoins, IOT, iBeacon, Analyse prédictive, Cloud, etc.

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-04.png",
    "alt": "WSO2Con Europe 2016 - history of Carbon"}  %}

Les premiers produits basés sur l'architecture Carbon 5 devrait arriver au pied du sapin fin 2016.

## Packaging & responsabilité des développements

Avec le développement de la société WSO2 s’est aperçu que son modèle de fonctionnement et de développement devait évoluer pour répondre aux nouvelles demandes et également pour combler les manques de l’organisation actuelle.

Fin 2015 WSO2 a donc décidé de revoir sa vision sur ce qu’est un produit et qu’elles sont les responsabilités de chacune de ses équipes. Un produit est composé maintenant de 3 éléments essentiels:

- Runtime: le produit en tant que tel qui implémente les fonctionnalités attendues
- Tools: pour  configurer le produit pour qu’il réponde aux besoins
- Analytics : pour collecter et présenter des informations techniques et métiers

a ces éléments s’ajoutent la vision que l’ensemble de ces produits doivent pouvoir être utilisé dans le cloud.

Ce nouveau paradigme a une conséquence concrète sur le processus de développement. Auparavant chaque élément était gérer pas des équipes différentes, maintenant chaque équipe est responsable d’un produit de bout en bout. La qualité et l’interconnexion entre ces différents éléments devraient donc pleinement s’améliorer dans les prochains mois.

## Modularité & Scalabilité

WSO2 a choisie de baser sa nouvelle framework Carbon 5 sur la philosophie de "container native architecture" que Sanjiva décrit comme se lançant très rapidement, de l'ordre de la seconde, remplissant une unique fonction et étant volatile. Docker, la base technologique choisie, sera complétée par Kubernetes ou Mesos selon les affinités de chacun.

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-05.jpg",
    "alt": "WSO2Con Europe 2016 - container architecture for Carbon 5"}  %}

Une réflexion de fond a été réalisé sur le design de la nouvelle architecture de Carbon 5 et le souhait de la faire "maigrir" pour être plus stable et souple pour répondre aux évolutions technologiques. La nouvelle version ne fera seulement que 5Mo! En effet à l'heure actuelle Carbon 4 souffre de sa forte adhérence à des technologies en perte de vitesse comme Axis2 et l'usage de XML et SOAP. La nouvelle architecture lui permettra plus facilement de pouvoir ajouter de nouvelles technologies ou d'en retirer progressivement de manière indolore.

Les fonctionnalités couvertes par ce nouveau coeur:

- OSGI serveur & runtime
- gestion des transports
- ordonnancement du démarrage des composants OSGI
- gestion des logs
- modèle de runtime
- multi-tenancy via la conteneurisation

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-06.jpg",
    "alt": "WSO2Con Europe 2016 - messaging architecture Carbon 5"}  %}

La maintenance évolutive et corrective est également un sujet de premier plan abordé avec le souhait de voir naître un "Update Server" qui permettra de mettre à jour dynamiquement sa plate-forme sans intervention manuelle.

Avoir tant d'outils commence à poser problème en terme d'expérience utilisateur qui peuvent être très différente selon les produits. Pour corriger cela WSO2 travaille sur le concept d'"Unified UI Framework", ou UUF (<https://github.com/wso2/carbon-uuf>) qui permettra à l'ensemble des produits de l'éditeur de partager un même socle front responsive avec des modules apportés par chacun et pouvant interagir ensemble.

Ces choix entraine également une réflexion profonde de WSO2 sur son mode de tarification actuel qui n'est plus applicable avec ce nouveau modèle. Une orientation vers une tarification à l'usage plus que sur un nombre de JVM fixe annuelle est en cours de test chez plusieurs clients.

## Integration

A l'heure actuelle le domaine de l'intégration est basé sur des concepts qui pour les plus jeunes ont une quinzaine d'années et des implémentations une dizaine. WSO2 a pour ambition de révolutionner le marché en adaptant les nouvelles technologies et concepts à ce domaine.

Le premier chantier est de passer d'une architecture Java 6 vers une architecture native Java 8 et d’exploiter le paradigme de la programmation réactive.

{% slideshare {"id": "L1SZE9HXtUvts6" } %}

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-07.jpg",
    "alt": "WSO2Con Europe 2016 - mediation framework overview"}  %}

Le deuxième est de repenser les usages et les solutions pour y répondre. WSO2 a commencé des développements exploratoires autour d'un nouveau produit appelé "Integration Server" qui verra naître un nouvelle librairie de médiation remettant au goût du jour les diagrammes de séquence UML qui serviront de support pour décrire ses flux de données et les orchestrer.

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-08.jpg",
    "alt": "WSO2Con Europe 2016 - futur mediation framework"}  %}

Le Data Service Serveur reposant entièrement sur Axis 2 se verra de même entièrement repensé sous le nom de "Data Integration Server". La brique ETL faisant défaut à l'écosystème actuelle sera notamment couverte par ce nouveau produit et permettra à WSO2 d'aborder le data warehousing.

## Mobilité & IOT

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-09.jpg",
    "alt": "WSO2Con Europe 2016 - WSO2 IoT"}  %}

WSO2 met à disposition depuis 2 ans sa solution de Mobile Device Management et de Mobile Application Management dans son produit WSO2 Enterprise Mobility Manager notamment plébiscité par Boeing. Les 3 OS principaux du marché sont couvert, Android, iOS et Windows Phone. Les modèles Bring Your Own Device (BYOD) ou Corporate-Owned Personally-Enabled (COPE) sont implémentés (pour iOS dans la prochaine version).

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-10.jpg",
    "alt": "WSO2Con Europe 2016 - IoT Maturity"}  %}

Mais aujourd'hui ne regarder que la sphère de la mobilité est beaucoup trop restrictif. Le domaine de l'Internet des Objets (IOT) est en plein boom est des besoins criant dans le monde des middlewares se font sentir. L'IOT apporte de nouveaux challenges avec l'usage de solutions légères Linux pour l'embarqué (<http://www.smile.fr/Ressources/Livres-blancs/Ingenierie/Linux-pour-l-embarque>), l'hétérogénéité des devices et des informations collectées, l'usage de protocoles de communications spécifiques, etc.

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-11.jpg",
    "alt": "WSO2Con Europe 2016 - WSO2 IoT Architecture"}  %}

WSO2 vient de sortir en bêta son nouveau produit "WSO2 IOT Server" pour y répondre. Mise à disposition en bêta test auprès de 150 sociétés, le produit apporte d'abord et avant tout une framework modulaire pour que chacun puisse y connecter son propre matériel. Ensuite la solution combine plusieurs produits de WSO2, ESB, IS, DAS pour vous permettre de gérer votre matériel, de communiquer avec lui de manière sécurisé et de collecter et restituer ses données analytiques.

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-12.jpg",
    "alt": "WSO2Con Europe 2016 - IoT flow"}  %}

Un grand merci à Isabelle, Nirosh et Sanjiva pour leur précieux temps qu’ils nous ont accordés et à toutes les équipes de WSO2 pour leur accueil. A l’année prochaine.

Les videos des conférences sont disponibles sur <https://www.youtube.com/user/WSO2TechFlicks>
et les slides sur <http://fr.slideshare.net/wso2.org>

{% image {
    "src": "/img/posts/2016-06-15-wso2con-europe-2016-citius-altius-fortius/wso2conEU2016-13.jpg",
    "alt": "WSO2Con Europe 2016 - Team"}  %}
