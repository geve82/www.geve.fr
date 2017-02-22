---
layout: post
title:  "WSO2Con USA 2017 - reboot for the next 10 years"
date:   2017-02-22 10:00:00 +0200
categories:
  - Editeurs
tags:
  - WSO2
  - Open Source
excerpt: "La nouvelle édition de la conférence américaine de l'éditeur WSO2, WSOConUSA 2017,  s’est ouverte dans un esprit de renaissance accompagné  d’airs d’opéra, de musiques traditionnelles chinoises et de ballerines."
#original_post:
#  url: http://blog.smile.fr/Wso2con-europe-2016-citius-altius-fortius
#  name: Blog des Experts Smile
---

Nous l’avons suivi en streaming live pour vous avec, en clin d’oeil, le premier choc, et bonne surprise, d'apparaître dans la vidéo de lancement de cet évènement.

{% image {
    "src": "/img/posts/2017-02-22-wso2con-usa-2017-reboot-for-the-next-10-years/wso2conUSA2017-01.jpg",
    "alt": "WSO2Con USA 2017 - opening ceremony",
    "width": 600 }  %}

Si vous souhaitez revoir le lancement de la conférence c’est par ici:

{% youtube {"id": "zKgMChupEVQ" } %}

## WSO2

en quelques chiffres:

- 2005 année de fondation
- 4 Pays, Sri-Lanka (Colombo), USA (Mountain View, New-York), Royaume-Uni (Londres), Brésil (São Paulo)
- 350 clients dont 120 nouveaux en 2016
- 450 employés dont 300 ingénieurs

WSO2 annonce que la société sera rentable à partir de cette année.

## Transformation Digitale

Lors de sa keynotes de fin d'année Sanjiva avais accès son discours sur l’importance de la transformation digitale. Ce n'est donc pas une surprise que ce sujet est au coeur de la conférence aujourd'hui.

{% image {
    "src": "/img/posts/2017-02-22-wso2con-usa-2017-reboot-for-the-next-10-years/wso2conUSA2017-02.jpg",
    "alt": "WSO2Con USA 2017 - Sanjiva",
    "width": 600 }  %}

Sanjiva nous défini cette transformation en 3 points:

- Un modèle économique dynamique qui évolue sans cesse
- Centré sur l'expérience utilisateur
- Optimisant les opérations business

WSO2 nous annonce son nouvelle axe stratégique: “from middleware to… Open Technology for agile digital business”. On pourra remarquer que c'est également l'axe annoncé par Smile en début d’année! C’est le premier changement de position de l’éditeur depuis sa fondation en 2005.

{% slideshare {"id": "KQx81eap9AKAIO" } %}

Mais qu'est ce que l'open technology pour WSO2? WSO2 nous le défini comme composé de 5 domaines technologiques :

- API Management : pour construire un écosystème à destination des développeurs internes et externes de services core réutilisables pour développer son propre business
- **Integration** : une plateforme basée sur des microservices et micro integrations
- **Identity and Access Management** : gérer les identités, la sécurité et la protection des données à travers et pour le business digitale
- **Smart Analytics** : créer et analyser en temps réel des événements pour agir directement sur le business
- **Internet of Things** : Faire que les mobiles et les dispositifs IoT soient partie intégrante du business digitale

{% slideshare {"id": "BPBCys3CkyPXKW" } %}

## Ballerina

{% image {
    "src": "/img/posts/2017-02-22-wso2con-usa-2017-reboot-for-the-next-10-years/wso2conUSA2017-03.png",
    "alt": "WSO2Con USA 2017 - Ballerina" }  %}

C'était l'annonce a ne pas rater de la conférence, la sortie de Ballerina en technology preview. A ne surtout pas confondre avec le film d'animation! C’est le nouveau langage de programmation dédié à l'intégration conçu par WSO2. L’éditeur travaille dessus depuis 2 ans et nous avait communiqué les choix technologiques lors de la WSO2Con Europe en juin dernier.

WSO2 a constaté que toute les technologies d'intégration présente actuellement sur le marché sont basées sur des principes et des technologies d’il y a 15 ans. Que le principe de dataflow actuel ne répondait plus aux nouveaux usages d'intégration multi-partie. Et que le raisonnement par diagramme de séquences, universellement compris, était le plus à même de représenter des interactions multiples et potentiellement en parallèle.

WSO2 nous propose la solution sous forme d’un DSL inspiré des usages en Java et Go avec une contrepartie graphique sous forme de diagramme de séquence. Ballerina gère nativement, entre autre, HTTP, JSON, XML, OpenAPI (ex. Swagger) et des données SQL et NoSQL.

{% image {
    "src": "/img/posts/2017-02-22-wso2con-usa-2017-reboot-for-the-next-10-years/wso2conUSA2017-04.png",
    "alt": "WSO2Con USA 2017 - Ballerina Lang",
    "width": 600 }  %}

Balerina sera le coeur de médiation sous Carbon 5 de l’ensemble des produits de WSO2.

Nous reviendrons plus en détail sur le sujet dans un prochain billet.

{% slideshare {"id": "bQRal9WXLPnPP5" } %}

Site officiel: http://ballerinalang.org/

## WSO2 Enterprise Integrator

{% image {
    "src": "/img/posts/2017-02-22-wso2con-usa-2017-reboot-for-the-next-10-years/wso2conUSA2017-05.png",
    "alt": "WSO2Con USA 2017 - WSO2 EI" }  %}

WSO2 Enterprise Integrator 6.0.0 est, par sa numérotation et son code couleur, le successeur de WSO2 ESB. Mais attention cette réflexion est trompeuse. En réalité WSO2 EI est un méta-produit de produits existants. Il regroupe dans un même package :

- WSO2 Enterprise Service Bus (ESB)
- WSO2 Data Services Server (DSS)
- WSO2 Application Server (AS)
- WSO2 Business Process Server (BPS)
- WSO2 Message Broker (MB)

WSO2 EI 6.0.0 bénéficiera d’un support de longue durée sur Carbon 4.

{% image {
    "src": "/img/posts/2017-02-22-wso2con-usa-2017-reboot-for-the-next-10-years/wso2conUSA2017-06.png",
    "alt": "WSO2Con USA 2017 - WSO2 EI Architecture",
    "width": 600 }  %}

## WSO2 IoT Server

WSO2 IoT Server 1.0.0, sorti quelques semaines auparavant, est officiellement annoncé comme étant la généralisation de WSO2 EMM à l’internet des objets. WSO2 IOT regroupe toutes les fonctionnalités traditionnelles de gestion de dispositifs mobiles COPE ou BYOD et de ses applications avec la possibilité nouvelle de gérer également tout dispositif IoT.

{% image {
    "src": "/img/posts/2017-02-22-wso2con-usa-2017-reboot-for-the-next-10-years/wso2conUSA2017-07.png",
    "alt": "WSO2Con USA 2017 - WSO2 IoT Server Architecture",
    "width": 600 }  %}

Pour plus d’information: http://www.slideshare.net/wso2.org/wso2-iot-server-product-overview

## Governance Registry

WSO2 Governance Registry 5.4.0. vient de sortir. En parallèle l’éditeur nous annonce le repositionnement de ce produit qui est le 2ème plus ancien, après WSO2 ESB.

L'éditeur, avec le retour d'expérience de ses utilisateurs, c’est aperçu que l’approche gouvernance centralisée au sein d’un SI et top-down promu par ce type d’outils n’arrive pas à satisfaire l’ensemble de ses utilisateurs qui ont un besoin d’agilité et doivent combattre la volonté d’une partie d’entre eux de ne pas être gouvernée. L'éditeur fait donc le choix, tout en gardant ces capacités actuelles, de le recentrer vers la gouvernance des développement et le suivi de cette activité.

## Carbon 5

La migration des produits sous Carbon 5 a commencé. Les premiers produits seront WSO2 APIM 3.0.0, WSO2 IS 6.0.0, WSO2 EI 7.0.0. Une première release pour WSO2Con Europe en juin?

## WSO2 Cloud

La plateforme PaaS de WSO2 est maintenant disponible dans 12 régions, merci Amazon AWS.

Pour chaque utilisateur de WSO2 API Manager, l’utilisation de API Cloud est inclus.

Les fonctionnalités d’intégration ESB et DSS sont maintenant disponibles en production et entre en beta les fonctionnalités Identity, Device et Analytics.
