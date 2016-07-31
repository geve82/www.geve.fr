---
layout: post
title:  "Solr, retour sur 10 ans d’histoire"
date:   2016-04-13 10:00:00 +0200
categories:
  - Recherche verticale
tags:
  - Recherche verticale
  - Solr
  - Lucene
  - Nutch
  - Open Source
excerpt: "Solr, qui fête ses 10 ans en ce début d'année 2016, c'est d'abord et avant tout l'histoire de deux génies, et d'une rencontre qui a révolutionné l'Open Source pour longtemps."
original_post:
  url: http://blog.smile.fr/Solr-retour-sur-10-ans-d-histoire
  name: Blog des Experts Smile
---
Doug Cutting est l'inventeur de Lucene, de Nutch et d'Hadoop, et a permis de mettre à la disposition de la communauté open source les technologies de recherche auparavant chasse gardée de quelques entreprises; et Yonik Seeley un ingénieur débordant d'imagination et entrepreneur dans l'âme, il a notamment inventé Solr et la librairie Noggit.

En 1997, du temps où même Google n'existait que sur papier, Doug n'est plus enthousiasmé par son environnent professionnel chez Excite et cherche une nouvelle voie. Il a entendu parler d'un nouveau langage, Java, et souhaite le découvrir. Il a vu une niche dans le monde logiciel disponible dans le domaine de la recherche d'information. Il se lance dans la création d'une libraire sur son temps personnel qui lui permettra peut être d'en vivre. La librairie Lucene est née. Elle permet de rechercher de l'information de manière performante, que celle-ci soit sous format de documents, d'informations contenues dans des documents ou de méta-données.

En 2000 Doug se rend compte qu'il n'est pas un entrepreneur. Ce qui l'intéresse c'est de créer, d'inventer et surtout de mettre la main dans du code mais pas de vendre, de signer des contrats et de gérer des équipes. Pour que son travail ne soit pas perdu il décide de le rendre open source et de le mettre à disposition sur Sourceforge en mars 2000. Quelques personnes découvrent son projet, un peu ésotérique à l'époque, et le bouche à oreille faisant, la fondation Apache s'y intéresse et lui propose de le reprendre en 2001. Le 12 juin 2002 sort la première version réalisée par Apache Jakarta, la 1.2. (<http://jakarta.apache.org/site/news/200206.html#Lucene>)

En 2003 Cnet Networks, l'un des plus important média américain dédié aux nouvelles technologies, utilisait une version professionnelle d'AltaVista comme moteur de recherche pour son site d'information. Malheureusement cette même année AltaVista est racheté successivement par Overture puis Yahoo! et disparaît. Cnet à besoin d'une alternative. L'entreprise se met en contact avec l'ensemble des acteurs du marché mais ils sont soit trop chèrs soit ne fournissent pas les fonctionnalités nécessaires. L'équipe technique de Cnet décide alors de développer son propre moteur de recherche basé sur MySQL. En parallèle, elle décide également d'avoir un plan B, en développant un autre moteur sur la base de la librairie Lucene pour des besoins plus avancés. Elle embauche pour cela Yonik en juillet 2004 et appelle ce moteur SOLAR pour Search On Lucene And Resin. Cette même année, en août 2004, Shay Banon a la même idée et lance le projet de moteur de recherche open source Compass sur la même base technologique (<http://www.compass-project.org/>). Shay Banon expliqua son choix en disant que Lucene est "la librairie la plus avancée disponible aujourd'hui - open source ou non".

En février 2005 la petit librairie Lucene est devenue grande et est reconnue comme étant un TOP-LEVEL project de la fondation Apache. Après 1 an de développement les équipes de Cnet sont conquises et décident d'utiliser pleinement SOLAR sur leur site. En 2006, pour favoriser son usage et s'assurer de sa maintenance, ils reversent à la communauté Open Source leur logiciel et celui-ci est renommé en Solr (mail de proposition de Yonnik à la communauté Apache daté du 3 janvier 2006:  <http://markmail.org/message/qeuaeqc7spbumch4>). Le job est fait. Yonik a relevé le challenge. Il décide de quitter Cnet en 2007 et de fonder sa propre société, Lucid Imagination qui deviendra par la suite LucidWorks, pour supporter le développement de Solr qui est devenu entre temps un sous projet du projet Apache Lucene.

Pendant 3 ans, les 2 projets se développent et deviennent de plus en plus liés. De nouvelles fonctionnalités apparaissent dans Solr puis sont reversées dans Lucene, ou vis-versa. Le besoin se fait sentir d'harmoniser les développements et de mieux les coordonner. En 2010 il est décidé de fusionner les équipes, de mutualiser les releases en sortant les 2 produits en même temps et enfin d'harmoniser leur numéro de version. Solr reprend les numéros de version de Lucene et passe subitement de la version 1.4.1 à la version 3.1.0. Cette année 2010 est riche en événements. Elle voit également l'abandon du projet Compass et la naissance de la société ElasticSearch. Shay Banon, impressionné par les capacités de Solr comparativement à Compass, part dans un premier temps sur l'idée de rendre Solr clusterisable sur des centaines de machines. Mais très vite il se dit qu'il serait plus intelligent de repartir à zéro et de remonter entièrement un moteur pour adresser cette problèmatique. ElasticSearch est né.

Pendant que Shay développe son nouveau moteur, les équipes du projet Lucene sentant la menace s'organisent et redonnent un coup de fouet au projet Solr. En Octobre 2013 Solr publie sa version 4.0 qui est capable de scaler sur plusieurs centaines de machines avec son nouveau mode Solr Cloud, ce que Shay pensait impossible. Yonik expliquera plus tard que pour atteindre ce résultat ils se sont inspirés des travaux de Google et d'Amazon sur la scalabilité et qu'ils ont emprunté le concept de "chaos monkey" à Netflix pour pouvoir tester cette nouvelle plate-forme.

La version 4 n'est que le début du renouveau. ElasticSearch, qui sort mois après mois de nouvelles versions béta, apportent avec lui les nouveaux usages, API REST, single package, "schema-less", analyse statistique sur une base plus seine et plus simple à l'usage. ElasticSearch sort sa première version stable début 2014. Solr quand à lui est sur un coeur qui a 9 ans et qui a besoin d'un bon dépoussiérage pour s'adapter aux nouveaux usages. La version 5, qui sort en février 2015 est l'occasion de faire un grand nettoyage dans le code et de repartir sur des bases seines pour la suite. L'une des premières conséquences de ce travail, ce sont les performances. Entre la version 4.8.1 et la version 5.2, l'indexation devient deux fois plus rapide en mode SolrCloud. En parallèle de nombreux concepts sont testés, API REST JSON, HyperLogLog, AngularJS, et single package.

La dernière version de la branche 5 est sortie le 22 février 2016 et porte le numéro 5.5. Désormais commence une nouvelle vie pour Solr et Lucene avec leur version 6 et de nouvelles possibilités pour le moment inédites sur le marché, comme l'exécution parallèle de requêtes SQL, la réplication cross data-center ou la nouvelle API REST HOCON auto-documenté.

Sources:

- Lucene in Action, Second Edition - July 2010 ISBN 9781933988177, xvii
- Your own private Google: the quest for an open source search engine, 12/07/12, Klint Finley,
- <http://www.wired.com/2012/12/solar-elasticsearch-google/>
- <https://lucidworks.com/blog/2015/06/10/indexing-performance-solr-5-2-now-twice-fast>
- <https://lucidworks.com/blog/2016/02/02/happy-10th-birthday-apache-solr/>
- <http://slides.com/shalinmangar/what-s-cooking#/>
- <http://yonik.com/>
- <https://medium.com/@markobonaci/the-history-of-hadoop-68984a11704#.qdftqrjc3>
