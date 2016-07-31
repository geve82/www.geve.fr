---
layout: post
title:  "Solr 6, une nouvelle version sur-vitaminée"
date:   2016-04-28 10:00:00 +0200
categories:
  - Recherche verticale
tags:
  - Recherche verticale
  - Solr
  - Open Source
excerpt: "Solr 6 pointe son nez avec de nouvelles fonctionnalités qui vont parfois surprendre et surtout marquer le grand retour de Solr dans la course à l'innovation face à ElasticSearch."
original_post:
  url: http://blog.smile.fr/Solr-6-une-nouvelle-version-sur-vitaminee
  name: Blog des Experts Smile
---
Les deux produits partagent la même base technologique Apache Lucene. Solr est un sous projet de Lucene et à ce titre partage le même numéro de version et les mêmes développeurs. ElasticSearch, bien qu'étant concurrent porté par un éditeur et ayant ses propres équipes de développement, contribue lui même au développement de Lucene. Et il n'est pas rare de voir des développeurs de la société Elastic compiler leur concurrent Solr.

La compétition de façade entre les 2 produits est en réalité un formidable moteur pour les pousser mutuellement à innover et à apporter de nouvelles solutions. Une démarcation assez clair s'est constituée entre les 2 produits ces derniers mois sur les objectifs de chacun:

- Pour Solr les développeurs sont concentrés sur l'apport de nouvelles solutions technologiques pour rechercher de l'information, optimiser les performances de celles-ci et les mettre à disposition de l'ensemble de la communauté Open Source.
- Pour Elasticsearch le focus a été mis sur l'accompagnement et l'amélioration du confort du développeur et de l'utilisateur d'un moteur de recherche. Elasticsearch leur apporte notamment des outils, open source ou non, pour améliorer la productivité et simplifier les usages quitte à prendre du retard par rapport aux versions de Lucene (la version 5 n'a été adoptée que 9 mois après sa sortie au sein d'ElasticSearch 2.X).
Ce formidable engouement actuel permet à Solr d'apporter les nouvelles fonctionnalités suivantes :

- Requêtes de parcours de graphes empruntées aux bases de données NoSql spécialisées orientées graphe
- API de streaming permettant le support de la gestion en parallèle de l'algèbre relationnelle et d'opérations de map-reduce en temps-réel
- Support du langage SQL pour le requêtage qui pourra être exploité via un simple client JDBC traditionnel
- Un vrai système de réplication cross data-center

Tout en faisant monter de version l'ensemble du coeur de la plate-forme en exploitant les possibilités de :

- Java 8 (obligatoire à partir de cette nouvelle version)
- Jetty 9.3 qui permet d'apporter le support de HTTP2

Et en donnant un coup de jeune au produit en refondant :

- La zone d'administration sur une base d'AngularJS
- L'API de Solr vers une base REST JSON implémentant la norme HOCON (Human-Optimized Config Object Notation) et pouvant être introspecté

L'ensemble de ses nouveautés sont en réalité en tests depuis de nombreux mois et disponibles dans des versions beta depuis Solr 5.2 ce qui va permettre d'assurer leur usage dés Solr 6.0 en production.

Si vous voulez tester en avant première cette version c'est par ici :
<https://builds.apache.org/job/Solr-Artifacts-6.x/lastStableBuild/artifact/solr/package/>

## Parcours de Graphes

De nos jours, rechercher un document seul ne suffit plus, celui-ci peut être lié à d’autres documents qui affirment son sens et le complète. C’est de ce constat qu’est apparu il y a plusieurs mois la possibilité de gérer des documents enfants et le query parseur JOIN pour lier des documents au moment du requêtage. Mais l’approche actuelle est trop limitative. Les affaires comme Wikileaks et les Panama Papers nous ont démontré le besoin de pouvoir représenter et surtout de pouvoir rechercher dans des graphes de données complexes de l’information. Les équipes de développement se sont inspirées des travaux des bases de données NoSQL orientées graphe pour fournir un système de parcours simple au coeur de la plate-forme de recherche.

Exemple de requêtes :

{% highlight javascript linenos %}
+{!graph from=”folder_id” to “folder_id” traversalFilter=”table:document”}(
            {!graph from=”folder_id” to=“parent_id” traversalFilter=”table:folder”}folder_id:123
            ) +bar
{% endhighlight %}

## Streaming Expression

L’API de streaming apparue en version 5 arrive a maturité dans Solr 6 et va permettre de réaliser pleinement des opérations complexes en temps-réel sur des requêtes de recherche full-texte.

Opération de merge :

{% highlight javascript linenos %}
merge(
        search(collection1,
                q="id:(0 3 4)",
                fl="id,a_s,a_i,a_f",
                sort="a_f asc"),
        search(collection1,
                q="id:(1)",
                fl="id,a_s,a_i,a_f",
                sort="a_f asc"),
        on="a_f asc")
{% endhighlight %}

Opération de join :

{% highlight javascript linenos %}
leftOuterJoin(
      search(people, q=*:*, fl="personId,name", sort="personId asc"),
      select(
             search(pets, q=type:cat, fl="ownerId,name", sort="ownerId asc"),
             ownerId,
             name as petName
     ),
     on="personId=ownerId"
)
{% endhighlight %}

Opération récurrente par intervalles (daemon) :

{% highlight javascript linenos %}
daemon(id="uniqueId",
           runInterval="1000",
           update(destinationCollection,
                  batchSize=100,
                  topic(checkpointCollection,
                        topicCollection,
                        q="topic query",
                        fl="id, title, abstract, text",
                        id="topicId")
                  )
           )
{% endhighlight %}

Et bien plus...

Pour plus d’information :
<https://cwiki.apache.org/confluence/display/solr/Streaming+Expressions>

## Interface SQL parallèle

L’ajout d’une interface SQL à Apache Solr ne peut se résumer à uniquement l’ajout d’un driver JDBC et la possibilité de requêter Solr à travers celui-ci en SQL.

Les équipes du projet se sont basées sur 2 projets :

- Le parseur SQL Presto dédié au Big Data inventé par Facebook en 2012
- La nouvelle API de streaming de Solr

En a émergé une interface sur laquelle on va pouvoir réaliser des requêtes SQL en exploitant des algorithmes de map-reduce combinés à de la recherche full-texte et de l’aggregation.

Exemple de connexion via le le connecteur JDBC :

{% highlight java linenos %}
Connection con = null;
try   {
                  con = DriverManager.getConnection("jdbc:solr://" + zkHost + "?collection=collection1&aggregationMode=map_reduce&numWorkers=2");
        stmt = con.createStatement();
        rs = stmt.executeQuery("select a_s, sum(a_f) as sum from collection1 group by a_s order by sum desc");

        while(rs.next()) {
                 String a_s = rs.getString("a_s");
                 double s = rs.getDouble("sum");
        }
} finally {
        rs.close();
        stmt.close();
        con.close();
}
{% endhighlight %}

Pour plus d’information :

- <https://cwiki.apache.org/confluence/display/solr/Parallel+SQL+Interface>
- <http://fr.slideshare.net/lucidworks/parallel-computing-with-solrcloud-presented-by-joel-bernstein-alfresco>
- <https://prestodb.io/>

## Cross Data Center Replication (CDCR)

La fonctionnalité de Cross Data Center Replication ou plus simplement CDCR a été conçue et implémentée dans un fork de Apache Solr, HelioSearch, par Yonik Seeley en 2014. Il a été reversé à la communauté Apache en 2015 en vue de la version 6 de Solr.

Cette extension à été conçue pour :

- gérer de 2 à n data center
- gérer un mode actif/actif entre data-center
- limiter l’usage de la bande passante
- limiter le couplage entre les clusters

La première version de ce composant disponible dans Solr 6 sera limitée au scénario actif/passif. Un Data center source propage les modifications sur ses index vers un data center de destination qui lui même peut être la source pour un suivant. Cette réplication pourra être réalisée en temps réel où par intervalles.

Pour plus d’information :

- <http://yonik.com/solr-cross-data-center-replication/>
- <https://cwiki.apache.org/confluence/pages/viewpage.action?pageId=62687462>

## API REST JSON HOCON

L’API actuelle de Solr a peu évolué depuis 10 ans. Cette stabilité a été un énorme bénéfice comparativement à d’autres solutions. Un utilisateur passant de la version 1.4 à la version 5.5 peut utiliser exactement la même syntaxe. Mais cette API est également devenu au fil du temps un goulet d’étranglement pour les nouvelles fonctionnalités et un dinosaure face aux nouveaux usages.

Des versions béta de la nouvelle API ont été mis à disposition durant toute la durée de vie de Solr 5 et le passage se passera en douceur avec Solr 6. L’ancienne API sera laissée à disposition durant toute la durée de vie de Solr 6 via le contexte d’URL /v1/.

La nouvelle API est décomposée en 4 sous-APIs :

- /v2/collections/NAME/* : opération sur une collection en lecture / écriture
- /v2/cores/NAME/* : opération d’administration sur un core
- /v2/cluster/* : opération sur un cluster SolrCloud
- /v2/nodes/* : opération sur un noeud SolrCloud

Elle est auto-documentée en permettant son introspection /v2/_introspect :

{% highlight javascript linenos %}
{
  "id": "http://lucene.apache.org/v2/api/schemas/update-replicas-schema",
  "$schema": "http://json-schema.org/draft-04/schema#",
  "description": "Perform operations on a set of replicas for a shard.",
  "type": "object",
  "properties": {
    "add-replica": {
    "type": "object",
    "properties": {
    "node": { "type": "string" }
   }
 }
}
{% endhighlight %}

Elle permet de valider automatiquement les requêtes :

{% highlight bash linenos %}
curl http://localhost:8983/solr/techproducts/query -d '
{
    query : "memory",
    fulter : "inStock:true" // oops, we misspelled "filter"
}'

"Unknown top-level key in JSON request : fulter"
{% endhighlight %}

De faciliter l’usage des facettes :

{% highlight javascript linenos %}
&q="running shorts"
&fq={!tag=COLOR}color:(Blue Black)
&json.facet={
         sizes:{type:terms, field:size},
         colors:{type:terms, field:color, domain:{excludeTags:COLOR} },
         brands:{type:terms, field:brand, domain:{excludeTags:BRAND} }
}
{% endhighlight %}

De substituer des paramètres :

{% highlight bash linenos %}
curl "http://localhost:8983/solr/query?FIELD=text&TERM=hero&HOWMANY=10" -d '
{
     query:"${FIELD}:${TERM}",
     limit:${HOWMANY}
}'
{% endhighlight %}

Et de réaliser des opérations analytiques pour le moment réservées à ElasticSearch :

{% highlight bash linenos %}
curl http://localhost:8983/solr/demo/query -d 'q=*:*&
json.facet={
     states:{terms:{
        field:loc_s,
        facet:{
            over_time:{range:{ // nested range facet
                field : year_i,
                start : 2011,
                end : 2015,
                gap : 1,
                facet:{
                      median_salary : "percentile(salary_d,50)"
                }
            }}
       } // end facet block for the loc_s field
    }}
}'
{% endhighlight %}

Plus d’information :

- API Spécifications: <https://docs.google.com/document/d/1iCPK9tlp1VwoTAjMx3KXQBacZylHoARHo8u15b7m0qo/edit>
- <https://cwiki.apache.org/confluence/display/solr/JSON+Request+API>
- <https://cwiki.apache.org/confluence/display/solr/Faceted+Search>
