---
layout: post
title:  "Panama-Papers, merci l’Open Source!"
date:   2016-04-13 10:00:00 +0200
categories:
  - Recherche verticale
tags:
  - Recherche verticale
  - Solr
  - Tika
  - Neo4j
  - Open Source
excerpt: "Panama Papers vous connaissez? 400 journalistes travaillant pour 100 médias pendant plusieurs mois dans le secret et coordonnés par l’ International Consortium of Investigative Journalists (ICIJ) ont dépouillé les étonnants documents de la compagnie Mossack Fonseka."
original_post:
  url: http://blog.smile.fr/Panama-papers-merci-l-open-source
  name: Blog des Experts Smile
---

C’est une véritable plaque tournante de la domiciliation offshore et de ses dérives : détournement de fonds, dissimulation d’avoir, corruption... utilisée par de nombreuses personnalités, légalement ou non : David Cameron, Balkany, Cahuzac, Poutine... et de grandes entreprises et institutions : HSBC, Société Générale, UEFA, Front-National, etc.

Le nombre de documents à traiter fût un énorme challenge pour le consortium, 11 millions de documents correspondant à 2,6 TB de données. A titre de comparaison Wikileaks ce n’était que 1,7 GB de documents. Pour y répondre et pour rester dans l’esprit de transparence du consortium, celui-ci a décidé de baser son infrastructure technologique sur une base Open Source.

- VeraCrypt : pour crypter l’ensemble des données
- Apache Tika : pour extraire les données des documents et les indexer dans Solr
- Apache Solr : pour fouiller les données
- Blacklight : UI pour restituer les informations contenu dans Solr
- Neo4j : pour stocker les relations entre les entités identifiées
- Linkurious : pour visualiser et comprendre les relations entre entités
- Oxwall : pour fournir un réseau social dédié à la communication entre les journalistes qui travaillent sur l’affaire

L’ensemble de ces technologies ont été installées sur la plate-forme d’Amazon AWS et leur accès sécurisé au moyen de 2 facteurs (mot de passe et OLTP) par Google Authenticator.

Rappelons également l'existence du projet Open Source Open Semantic Search (http://www.opensemanticsearch.org/) dédié à la fouille de données confidentielles pour les journalistes basé sur les même briques technologiques, Apache Solr et Tika.

Sources:

- <http://www.forbes.com/sites/thomasbrewster/2016/04/05/panama-papers-amazon-encryption-epic-leak/#75e332df1df5>
- <http://fortune.com/2016/04/09/data-sheet-saturday-april-9-2016/>
- <http://data.blog.lemonde.fr/2016/04/08/panama-papers-un-defi-technique-pour-le-journalisme-de-donnees/>
