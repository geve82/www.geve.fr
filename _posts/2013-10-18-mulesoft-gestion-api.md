---
layout: post
title:  "MuleSoft se lance dans la bataille de la gestion d'API"
date:   2013-06-18 10:00:00 +0200
categories:
  - API-Management
tags:
  - Middleware
  - API Management
  - MuleSoft
  - REST
  - RAML
excerpt: "MuleSoft, éditeur du célèbre ESB MuleESB, ajoute une nouvelle corde à son arc : la gestion d'API avec la plate-forme d'intégration open source Anypoint Platform for API ainsi que, en collaboration avec des acteurs technologiques majeurs comme Google et Paypal, la définition des API REST via l’élaboration d’un langage, RESTful API Modeling Language (RAML), qui permet de définir précisément l'interface de l'API."
original_post:
  url: http://blog.smile.fr/Veille-techno/Mulesoft-se-lance-dans-la-bataille-de-la-gestion-d-api
  name: Blog des Experts Smile
---
Nous avons été invités au MuleSoft Summit édition 2013 à Paris et eu le privilège de nous faire présenter en avant-première les nouveaux produits de l'éditeur par Ross Mason himself !

## Anypoint Platform for API
L'exposition d'API à des tiers par les entreprises et les institutions étant en plein boom, MuleSoft veut simplifier la gestion de ces API. À cet effet, l'éditeur lance Anypoint Platform for APIs, composée de quatre briques logicielles :

- API Gateway, un proxy qui va exposer les web-services REST et SOAP existants vers l'extérieur,
- API Manager, un gestionnaire de catalogue d'API avec gestion des versions, règles de sécurité et SLA,
- APIKit, intégré à MuleStudio, qui permettra de faciliter l'élaboration et la mise en œuvre des API,
- API Developer Portal, un outil permettant aux développeurs de mettre à disposition de la documentation et des outils sociaux autour des services exploités.

MuleSoft arrive au bon moment dans un marché en pleine expansion et mutation, avec les rachats de solutions propriétaires comme Mashery par Intel et de Layer 7 par CA Technologies en début d'année.

Avec cette nouvelle offre, MuleSoft attaque frontalement son concurrent open source WSO2, qui s'est lancé dans ce segment l'année dernière avec le très similaire WSO2 API Manager. Ce dernier a été distingué par Forrester début 2013 comme étant l'un des leaders en devenir du secteur grâce à son socle technologique reconnu et son analogie du marketplace d'applications mobile appliqué aux API.

## RESTful API Modeling Language (RAML)
MuleSoft ne s'est pas contenté de développer un nouveau produit mais a également souhaité s'attaquer au manque de définition des API REST. La société s'est notamment alliée à AngularJS (Google), Paypal, Intuit et Box pour trouver une solution à cet épineux problème. Il en a résulté un nouveau langage basé sur YAML, RESTful API Modeling Language (ou RAML pour les intimes), qui se veut le WSDL des services REST.

Ce langage simple et intuitif permet de définir précisément l'interface de l'API en détaillant les verbes applicables, les paramètres avec leur type, leur optionnalité, leur description et exemple, et également les réponses possibles qui seront renvoyées par le serveur.

Notre sentiment est que ce langage vient résoudre l'un des principaux problèmes des services exposés via l'architecture REST en proposant une manière de les décrire uniforme, simple et ouverte. Mais MuleSoft a-t-il réellement la capacité d'influencer la communauté pour faire adopter RAML ? De nombreux autres s'y sont cassé les dents ; on pensera en particulier au WSDL 2.0 en 2007 ou à son dérivé WDAL en 2009, qui ne se sont pas imposés.

RAML n'a que quelques semaines, et ce seront les premières mises en pratique et retours de la communauté, dans les prochains mois, qui nous permettront de juger de sa pertinence et de sa capacité à remplir son rôle.
