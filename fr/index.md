---
layout: base-fr
date: 2016-09-21
---

# Avant-propos
Le présent guide décrit les procédures pour la soumission de données au Centre mondial de données sur l’ozone et le rayonnement ultraviolet et fournit des renseignements sur le format, la structure et le contenu des fichiers, tant pour les données sur l’ozone que celles sur le rayonnement ultraviolet. Il est destiné à la fois aux fournisseurs de données (pour la soumission de données) qu’aux clients (renseignements sur la façon de lire les fichiers de données).

Cette version du guide est le résultat de la combinaison de deux documents distincts; le premier sur la soumission de données sur l’ozone et le second, sur la soumission de données sur le rayonnement ultraviolet. Ils ont été combinés dans le but d’offrir un document plus clair et uniforme.

Le site Web du WOUDC est utilisé pour mettre à jour les renseignements et comme « babillard » virtuel. Étant donné que ce guide est appelé à évoluer, vous pourrez récupérer la version la plus récente sur le site Web du WOUDC.


# Table des matières
[Chapitre 1 Introduction](#chapitre-1-introduction)

  * 1.1 [Public cible](#11-public-cible)
  * 1.2 [But](#12-but)
  * 1.3 [Emplacement du document](#13-emplacement-du-document)
  * 1.4 [Historique et mise à jour du document](#14-historique-et-mise-à-jour-du-document)
  * 1.5 [Site Web](#15-site-web)
  * 1.6 [Contribution au WOUDC](#16-contribution-au-woudc)

[Chapitre 2 Procédure de soumission de données](#chapitre-2-procédure-de-soumission-de-données)

  * 2.1 [Inscription des contributeurs](#21-inscription-des-contributeurs)
  * 2.2 [Inscription d’une station](#22-inscription-dune-station)
  * 2.3 [Soumission des données](#23-soumission-des-données)
  * 2.4 [Types de données](#24-types-de-données)

[Chapitre 3 Format de données standard](#chapitre-3-format-de-données-standard)

  * 3.1 [Format de données standard du WOUDC ](#31-format-de-données-standard-du-woudc)
    * 3.1.1 [Règles de syntaxe du format CSV étendu](#311-règles-de-syntaxe-du-format-csv-étendu)
  * 3.2 [Métadonnées des fichiers de données extCSV du WOUDC](#32-métadonnées-des-fichiers-de-données-extcsv-du-woudc)
    * 3.2.1 [Introduction](#321-introduction)
  * 3.3 [Contenu des données propres à l’ozone ](#33-contenu-des-données-propres-à-lozone)
    * 3.3.1 [Introduction](#331-introduction)
    * 3.3.2 [Catégorie : Lidar ](#332-catégorie-lidar)
    * 3.3.3 [Catégorie: Microwave](#333-catégorie-microwave)
    * 3.3.4 [Catégorie: Ozonesonde](#334-category-ozonesonde)
    * 3.3.5 [Catégorie: TotalOzoneObs](#335-categorie-totalozoneobs)
    * 3.3.6 [Catégorie: TotalOzone](#336-catégorie-totalozone)
    * 3.3.7 [Catégorie: UmkehrN14](#337-catégorie-umkehrn14)
  * 3.4 [Contenu des données propres au rayonnement ultraviolet](#34-contenu-des-données-propres-au-rayonnement-ultraviolet)
    * 3.4.1 [Introduction](#341-introduction)
    * 3.4.2 [Catégorie: Spectral](#342-catégorie-spectral)
    * 3.4.3 [Catégorie: Multiband](#343-catégorie-multiband)
    * 3.4.4 [Catégorie: Broadband](#344-catégorie-broadband)
    * 3.4.5 [Catégorie: Pyranometer](#345-catégorie-pyranometer)
    * 3.4.6 [Données accessoires et auxiliaires ](#346-données-accessoires-et-auxiliaires)

[Chapitre 4 Traitement des données](#chapter-4-chapitre-4-traitement-des-données)

  * 4.1 [Politique sur les données](#41-politique-sur-les-données)
  * 4.2 [Flux et traitement des données](#42-flux-et-traitement-des-données)

[Chapitre 5 Qualité des données](#chapitre-5-qualité-des-données)

[Chapitre 6 Consultation et extraction de données](#chapitre-6-consultation-et-extraction-de-données)

[Chapitre 7 Coordonnées du WOUDC](#chapitre-7-coordonnées-du-woudc)

  * 7.1 [Le page de contact](#71-le-page-de-contact)
  * 7.2 [Adresse](#72-adresse)

[Chapitre 8 Références](#chapitre-8-références)

[Appendice A Exemples](#appendice-a-exemples)

  * A.1 [Exemple pour la catégorie Lidar ](#a1-exemple-pour-la-catégorie-lidar)
  * A.2 [Exemple pour la catégorie Microwave ](#a2-exemple-pour-la-catégorie-microwave)
  * A.3 [Exemple pour la catégorie Ozonesonde ](#a3-exemple-pour-la-catégorie-ozonesonde)
  * A.4 [Exemple pour la catégorie TotalOzoneObs ](#a4-exemple-pour-la-catégorie-totalozoneobs)
  * A.5 [Exemple pour la catégorie TotalOzone ](#a5-exemple-pour-la-catégorie-totalozone)
  * A.6 [Exemple pour la catégorie UmkehrN14 ](#a6-exemple-pour-la-catégorie-umkehrn14)
  * A.7 [Exemple pour la catégorie Spectral ](#a7-exemple-pour-la-catégorie-spectral)
  * A.8 [Exemple pour la catégorie Multiband ](#a8-exemple-pour-la-catégorie-multiband)
  * A.9 [Exemple pour la catégorie Broadband ](#a9-exemple-pour-la-catégorie-broadband)
  * A.10 [Exemple pour la catégorie Pyranometer ](#a10-exemple-pour-la-catégorie-pyranometer)

# Chapitre 1 Introduction
Le Centre mondial de données sur l’ozone et le rayonnement ultraviolet (WOUDC) a vu le jour en 1960 sous le nom de Centre mondial des données sur l’ozone (WODC). En 1992, Environnement Canada a accepté que les données sur le rayonnement ultraviolet soient ajoutées au WODC, et c’est à ce moment-là que le WODC est devenu le WOUDC. Le WOUDC est exploité par le Service météorologique du Canada, une division d’Environnement et Changement climatique Canada.

Le WOUDC est régi par le programme de Veille de l’atmosphère du globe (VAG) de l’Organisation météorologique mondiale (OMM). Les groupes consultatifs scientifiques de l’OMM fournissent des conseils au WOUDC sur les enjeux liés à l’ozone et au rayonnement ultraviolet.

## 1.1 Public cible
Le présent document est destiné à être utilisé par les contributeurs du centre de données, mais il peut également s’avérer utile pour les utilisateurs du centre de données et les opérateurs du WOUDC.

## 1.2 But
Le but de ce document est de décrire les procédures pour la soumission de données au WOUDC. Cela inclut, sans toutefois s’y limiter : 

- l’inscription des contributeurs;
- l’inscription des stations;
- la soumission de données;
- les formats et descriptions de fichier supportés.



Le guide sera mis à jour au fil de l’évolution du WOUDC et sera accessible électroniquement sur le site Web du WOUDC. Le site Web du WOUDC est utilisé pour mettre à jour les renseignements et comme « babillard » virtuel. Vous pouvez accéder au site Web pour télécharger la version la plus récente du guide, s’il y a lieu. 

## 1.3 Emplacement du document
L'emplacement de la version du document faisant autorité est le suivant [http://guide.woudc.org](http://guide.woudc.org). Les versions ou copies du document qui seraient disponibles ailleurs qu'à cet emplacement ne font pas autorité.

## 1.4 Historique et mise à jour du document
Dans le passé, le guide du contributeur était divisé en deux guides distincts : le premier portait sur la soumission de données sur l’ozone [[1](#chapitre-8-références)] et le second, sur la soumission de données sur le rayonnement ultraviolet [[2](#chapitre-8-références)]. Ils ont été combinés dans le but d’offrir un document plus clair et uniforme. 

## 1.5  Site Web
L’adresse du site Web du WOUDC est [http://woudc.org](http://woudc.org). Il offre une application Web pour la diffusion de données sur l’ozone et le rayonnement ultraviolet, des produits dérivés et des métadonnées.

## 1.6 Contribution au WOUDC
Le WOUDC est le système d’archivage standard pour les données sur l’ozone et le rayonnement ultraviolet. Les contributeurs de données profitent des avantages suivants : 
- un service de stockage et de sauvegarde de données sans frais, indépendant et sécuritaire; 
- un accès Web 24 heures par jour, 7 jours par semaine à leurs données par le biais de divers mécanismes de consultation de données offrant une expérience utilisateur améliorée, ainsi qu'un accès multi-application;
- des capacités de recherche, de visualisation et de consultation de données à valeur ajoutée reposant sur des normes internationales;
- un accès à des produits à valeur ajoutée créés à l’aide de leurs données, comme des formats de données géospatiales/du SIG, des cartes et des graphiques. 

Pour qu’un contributeur soit admissible à soumettre des données, il doit : 

- s’inscrire auprès du WOUDC (il est aussi fortement recommandé de s’inscrire auprès du programme VAG); 
- inscrire ses stations auprès du WOUDC (et préférablement auprès du programme VAG);
- soumettre ses données (sur l’ozone et le rayonnement ultraviolet) dans le format de fichier supporté par le WOUDC, soit le format CSV « étendu » (extCSV).

Si les données à soumettre ne sont pas liées à l’ozone ni au rayonnement ultraviolet, elles peuvent être admissibles à l’un des cinq autres centres mondiaux des données suivants : 

- Centre mondial de données relatives à la composition chimique des précipitations [http://www.qasac-americas.org](http://www.qasac-americas.org)
- Centre mondial de données relatives aux aérosols [http://ebas.nilu.no](http://ebas.nilu.no)
- Centre mondial de données relatives au rayonnement [http://wrdc.mgo.rssi.ru/wrdc_en_new.htm](http://wrdc.mgo.rssi.ru/wrdc_en_new.htm)
- Centre mondial de données relatives à la télédétection de l’atmosphère[http://wdc.dlr.de](http://wdc.dlr.de)
- Centre mondial de données relatives au gaz à effet de serre [http://ds.data.jma.go.jp/gmd/wdcgg](http://ds.data.jma.go.jp/gmd/wdcgg)


# Chapitre 2 Procédure de soumission de données
## 2.1 Inscription des contributeurs
La demande d'inscription compte quatre étapes :

1. Le nouveau contributeur envoie une [demande d'inscription](http://woudc.org/contact.php?lang=fr) à WOUDC, dans laquelle il indique pourquoi il souhaite contribuer au WOUDC.
2. L'opérateur du centre de données vérifie la demande et indique au contributeur de fournir au WOUDC l'ID VAG de la station ou de s'inscrire à partir de [GAWSIS](https://gawsis.meteoswiss.ch/) pour obtenir un ID VAG.
3. Une fois qu'il a un ID VAG valide, le contributeur le fournit à l'opérateur du centre de données pour inscrire la nouvelle station en incluant celle-ci dans la base de données du WOUDC.
4. Une fois la station incluse dans la base de données du WOUDC, l'opérateur du centre de données envoie au contributeur ses nouveaux justificatifs de connexion privés pour le client FTP, qu'il utilisera pour télécharger des données.

La Figure 1 est un diagramme illustrant la procédure d’inscription des contributeurs. 

![Figure 1 - Procédure d’inscription des contributeurs](/static/site/img/contributor-registration-procedure-fr.jpg)

## 2.2 Inscription d’une station
Après s'être inscrit au WOUDC de la façon indiquée à la [section 2.1](#21-inscription-des-contributeurs), le contributeur peut ajouter des stations ou modifier l’information sur une station existante en soumettant un nouveau ID VAG ou en mettant à jour l'information sur une station avec GAWSIS :

1. Le contributeur obtient un nouvel ID VAG pour la nouvelle station ou modifie l'information sur une station existante à partir de [GAWSIS](https://gawsis.meteoswiss.ch/).
2. Le contributeur envoie [WOUDC](http://http://woudc.org/contact.php?lang=fr), la demande de changement visant à ajouter une nouvelle station ou à modifier l'Information sur une station existante. Il lui envoie aussi l'ID VAG. 
3. L'opérateur inclut la nouvelle station dans la base de données du WOUDC ou met à jour l'information sur une station existante.


## 2.3 Soumission des données
Le WOUDC permet aux contributeurs de soumettre des données par le biais d’un client de protocole de transfert de fichiers (protocole FTP). Le site FTP du WOUDC est accessible à l’adresse suivante : [ftp://ftp.woudc.org](ftp://ftp.woudc.org). Il faut un nom d’utilisateur et un mot de passe valides pour pouvoir transférer des données au WOUDC. 

!!! md-alert ""
    **Remarque:** Le site FTP ne permet pas d’accéder aux données (voir la page Accessbilité des données à l'adresse [http://woudc.org/about/data-access.php?lang=fr#ftp](http://woudc.org/about/data-access.php?lang=fr#ftp)).

Une fois que le contributeur est dûment inscrit :

1. Le contributeur téléverse des données dans le format extCSV vers le site FTP.
2. Le WOUDC récupère les données sur le site FTP.
3. Le WOUDC traite les données (validation du contributeur et des données).
4. Si l’opérateur du WOUDC relève des problèmes pendant la validation, il doit en aviser le contributeur. 
5. Si aucun problème n’est relevé, les données sont publiées sur le site Web et peuvent alors être téléchargées à partir du site Web, des services Web géospatiaux ou des dossiers accessibles sur le Web (WAF).

La Figure 2 est un diagramme illustrant la procédure de soumission de données.

![Figure 2 - Procédure de soumission de données](/static/site/img/data-submission-procedure-fr.jpg)

!!! md-alert ""
    **Remarque :** La procédure détaillée pour le transfert de fichiers par FTP varie en fonction du système d’exploitation de votre ordinateur et de votre logiciel client FTP.

## 2.4 Types de données
Les catégories de données suivantes ont été définies pour le moment (en anglais seulement) : 

***Ozone***
- Lidar
- Microwave (Micro-ondes)
- Ozonesonde (Sonde d'ozone)
- TotalOzone (Ozone total)
- Umkehr

***Rayonnement Ultraviolet***
- Spectral
- Multiband (Multibande)
- Broadband (Large bande)
- Pyranometer (Pyranomètre)


# Chapitre 3 Format de données standard
## 3.1 Format de données standard du WOUDC 
Les contributeurs de données doivent soumettre leurs données au WOUDC en texte ASCII dans un fichier au format de valeurs séparées par des virgules (CSV). Le codage de caractères UTF-8 est nécessaire pour la soumission de données. Le format CSV « étendu » du WOUDC (ou extCSV) permet de définir de multiples tableaux, de multiples champs, des commentaires sur les tableaux, des commentaires sur les fichiers et des groupes de tableaux (tableaux réunis pour former des ensembles) à l’intérieur d’un fichier CSV unique. Le format de fichier extCSV supporte à la fois les renseignements sur les métadonnées et les données de haute résolution (temporelles et spatiales). Le WOUDC exige que les contributeurs soumettent leurs données dans ce format standard afin de faciliter le traitement efficace des ensembles de données. 

Les fichiers extCSV comportent deux sections principales : la section des métadonnées et la section du contenu des données. On peut considérer la section des métadonnées comme l’« en tête » d’un fichier de données, étant donné qu’elle est commune à tous les fichiers du WOUDC sur le plan du format et du contenu des tableaux. La section sur les données est propre à chacune des catégories (ou types) de données, comme TotalOzone et Ozonesonde.

Les fichiers CSV < étendu> (extCSV) fournissent un format commun qui est indépendant du type d'instrument et du type de données (Ozone / Ultraviolet et sous-types comme décrit dans 2.4). Le format extCSV n’est pas produit directement par les instruments, mais ce format est produit par le traitement ultérieur des données de l'instrument pour créer des fichiers en format extCSV. Les noms de champ suivants sont utilisés par WOUDC de distinguer entre les données de l'instrument et des donnés en format extCSV pour WOUDC, ou le Level (<niveau de traitement>) d'un fichier de données:

- level 0: données brutes ou primaire (des données non traitées qui viennent directement à partir de l'instrument). Par exemple, des fichiers "B-fichier" sont  des fichiers en format d'ozone produites par le logiciel d'exploitation Brewer ([http://kippzonen-brewer.com/wp-content/uploads/2014/10/KippZonen_Service_Manual_Brewer_MKIII_V1206-1.pdf](http://kippzonen-brewer.com/wp-content/uploads/2014/10/KippZonen_Service_Manual_Brewer_MKIII_V1206-1.pdf)).  Ces fichiers ne sont pas lire ou traitées par WOUDC directement, mais sont utilisés par des logiciels tels que O3Brewer ([http://www.o3soft.eu/doc/o3brewer.pdf](http://www.o3soft.eu/doc/o3brewer.pdf)).
- level 1: Les données au format extCSV pour WOUDC qui sont produites et évalueés par le contributeur pour faire un contrôle de qualité. Les fichiers au Level 1 contiennent toute l’information pour la station, le type de données, l’information pour l’identification de la station, et des métadonnées d'une session de mesure dans un seul fichier, dans un format standard. Ces fichiers sont généralement produits par le contributeur par le traitement de données de Level 0 et en ajoutant les sections de métadonnées appropriées. Par exemple, le logiciel O3Brewer (de [http://www.o3soft.eu/doc/o3brewer.pdf](http://www.o3soft.eu/doc/o3brewer.pdf)) produira extCSV pour WOUDC (Level 1) des fichiers à partir de fichiers au Level 0 dans le "B-fichier" pour Brewer.

- level 2: les données de niveau 2 sont des données de niveau 1 (le format extCSV WOUDC) qui a été transformés (comme interpolée, remaillées, lissée ou autre) pour l'analyse ou l'entrée dans un autre logiciel. Par exemple, les fichiers pour Umkehr au Level 2 sont produites par un traitement supplémentaire de fichiers de Level 1 (les données de Level 2 est indiqué dans les fichiers en format extCSV par un "2" dans le champ du tableau de contenu de level. Voir Section 3.2.1.1) 

### 3.1.1 Règles de syntaxe du format CSV étendu
Le principal format de fichier utilisé par le WOUDC est le format extCSV (format de valeurs séparées par des virgules étendu), qui élargit les règles de syntaxe du format CSV standard de manière à pouvoir insérer des commentaires et de multiples contenus de données (tableaux) dans un seul et même fichier. Étant donné que les fichiers extCSV sont formatés en texte clair (ASCII), ils peuvent être utilisés dans l’ensemble des plateformes/systèmes d’exploitation et, par conséquent, être facilement importés dans divers outils d’analyse. 

Un fichier extCSV est composé de deux sections : un en-tête de métadonnées et des tableaux de données. Les règles relatives au format et au contenu des en-têtes de données sont strictes, mais celles liées aux tableaux de données sont plus souples et adaptées en fonction des types de données. 

Voici les règles de syntaxe du format CSV étendu : 

- Les champs, dont la largeur est variable, doivent être séparés par une virgule (,).
- Lorsque le nom d’un champ ou les valeurs qu’il renferme comprennent une virgule (,) ou des guillemets (“), il faut placer l’ensemble du champ entre guillemets (").
- Les valeurs NULLES sont représentées par des champs vides (,,) et les lignes vides sont ignorées. 
- Les lignes qui commencent par un astérisque (*) sont des commentaires.
- Les lignes qui commencent par un carré (#) sont des noms de tableau.
- La première ligne après la ligne `#TABLENAME` sert à préciser le nom des colonnes (champs). Le nom de chaque colonne de données (champ) doit être séparé par une virgule.


Example:

```
* The following data are simulated...
#TABLENAME
Field1, Field2, Comment
12,35.6,Clear sky.
12.5,,Thunderstorm (can't measure Y).
13,55.5,"It's raining, it's pouring!"
13.5,70,"Better start ""The Ark""."
```

Voici les règles relatives au contenu du WOUDC :

- Le nom des tableaux doit être saisi en MAJUSCULES et précédé du carré (#). Le nom des champs est sensible à la casse. 
- Un tableau se compose des trois sections suivantes : nom du tableau, nom des colonnes (champs) et un ou plusieurs enregistrements de données. Il est aussi possible d’insérer des commentaires dans les tableaux (facultatif). 
- Les attributs de données non spécifiés se voient attribuer une valeur « nulle ».
- Chaque fichier doit contenir une seule occurrence de chacun des tableaux de métadonnées statiques (`#CONTENT, #DATA_GENERATION, #INSTRUMENT et #PLATFORM`) et les appliquer à l’ensemble des données du fichier. 
- Chaque fichier doit contenir au moins une occurrence des tableaux de métadonnées dynamiques (`#LOCATION` et `#TIMESTAMP`), lesquelles sont en vigueur jusqu'à ce qu'elles soient mises à jour. Les données qui figurent dans les champs de ces tableaux peuvent modifier les attributs (p. ex., l'heure peut être mise à jour par des échantillons individuels). 
- Il est possible d’inclure d’autres renseignements sur les conditions et la météorologie des sites, des images du ciel, etc. sous forme de commentaires ou à l’aide d’autres tableaux générés à la discrétion du contributeur. Par exemple, si un contributeur souhaite insérer une remarque spéciale (« quelqu’un a heurté l’instrument pendant l’échantillonnage »), il est raisonnable de le faire au moyen d’un commentaire. Les variations dynamiques instantanées comme la météorologie (p. ex., conditions du ciel ou du vent) ou les données d’étalonnage doivent être présentées dans un tableau. 

Example:
```
#TABLENAME
Field1,Field2,Field3
Datum1,Datum2,Datum3
*Table comment
```

Example:
```
#SITE_METEOROLOGY
Date,Time,Temperature,Pressure,WindDirection,WindSpeed
```

## 3.2 Métadonnées des fichiers de données extCSV du WOUDC
### 3.2.1 Introduction
L’en-tête du WOUDC renferme des métadonnées qui sont communes à tous les fichiers de données du WOUDC. Il est essentiel que les champs de l'en-tête soient toujours les mêmes. Ainsi, si on reçoit un fichier de données en double, il faut qu’au moins une des variables de l’en-tête ait été modifiée pour que le fichier soit accepté dans les archives. 

Le Tableau 3.2 1 et le Tableau 3.2 2 présentent les tableaux devant se trouver dans tous les fichiers de données du WOUDC (colonne « Nom du tableau ») et le nom de leurs champs respectifs (colonne « Nom des champs (colonnes) »). Les [sections 3.2.1.1](#3211-tableau-content) à [3.2.1.6](#3216-tableau-timestamp) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux. 

***Tableau 3.2 1 – Métadonnées statiques (une seule occurrence par fichier)***

| Nom du tableau | Nom des champs (colonnes) |
|--------|--------|
|`#CONTENT`|`Class, Category, Level, Form`|
|`#DATA_GENERATION`|`Data, Agency, Version, ScientificAuthority`|
|`#PLATFORM`|`Type, ID, Name, Country, GAW_ID`|
|`#INSTRUMENT`|`Name, Model, Number`|

***Tableau 3.2 2 – Métadonnées dynamiques (au moins une occurrence par fichier; les occurrences multiples sont permises)***

| Nom du tableau | Nom des champs (colonnes) |
|--------|--------|
|`#LOCATION`|`Latitude, Longitude, Height`|
|`#TIMESTAMP`|`UTCOffset, Date, Time`|

!!! md-alert "" 
    **Remarque :** S’ils le veulent, les contributeurs peuvent inclure un historique des versions de leur fichier dans un bloc de commentaires à la fin du fichier extCSV. Les dates des versions doivent être présentées par ordre chronologique décroissant (date la plus récente en premier). 

#### 3.2.1.1 Tableau CONTENT
**Class**: Le type général de données qui suivent; la valeur WOUDC doit être utilisée ici.

**Category**: Sous-groupe des données soumises (p. ex., Ozonesonde ou Lidar). 

**Level**: Ce level se réfère au produit de données. Les valeurs acceptables sont "1" pour les données qui a été traité pour produire des données en format extCSV
pour WOUDC (et donc les données sont prêtes à être soumis à WOUDC), ou "2" pour les données qui ont également été interpolées, re-quadrillées, lissées ou autrement traitées. (Notez que le Level n’est pas la même chose que la version qui est décrite dans 3.2.1.2. Le mot <Version> est utilisé pour indiquer qu’un fichier a été modifié ou révisées selon le processus utilisé par WOUDC tandis que le Level est utilisé pour indiquer « l’étapedu  traitement de données" dans un fichier (il est possible d’y avoir montré plusieurs versions pour les fichiers de Level 1 et les fichiers de Level 2).

**Form**: La version du format des données qui suivent. La valeur initiale du champ `FORM` (valeur=1) fait référence à la description de base du tableau. Si un tableau existant est modifié ou qu’un nouveau tableau est ajouté, la valeur du champ `FORM` augmente. Prenons l’exemple d’un tableau composé d’un nombre donné de colonnes et dont la valeur du champ `FORM` est réglée à « 1 ». Si on ajoute une ou plusieurs colonnes au tableau, la valeur du champ `FORM` augmente de un après chaque modification. La valeur du champ `FORM` (index) se veut un indicateur du lecteur de fichiers requis pour les tableaux de données qui suivent, pour aider les programmeurs à lire le fichier. Seul le WOUDC peut apporter des modifications à cet index. 

#### 3.2.1.2 Tableau DATA GENERATION
**Date**: Date à laquelle le fichier a été traité ou généré. La date est affichée selon le format de la norme ISO 8610, c.-à-d. AAAA-MM-JJ. Exemple : 2015-12-31.

**Agency**: Sigle de l’organisation qui a soumis les données.

**Version**: Version des données, telle qu’elle a été précisée par l’organisation ayant soumis les données. Le format de la version est « majeure.mineure » (p. ex., 3.2). La valeur « majeure » augmente lorsque des changements sont apportés à l’algorithme de traitement, et la valeur « mineur », lorsque des changements sont apportés aux valeurs de caractérisation ou d’étalonnage. Remarque : la valeur « mineure » est remise à zéro lorsque des changements sont apportés à l’algorithme de traitement. 

**ScientificAuthority**: Nom de la ou des personnes responsables de la qualité des données au sein de l’organisation qui a soumis les données. 

#### 3.2.1.3 Tableau PLATFORM
**Type**: Type de plateforme d’observation : stationnaire (STN) ou mobile (c.-à-d., aéroportée [FLT], embarquée [SHP], etc.). La valeur par défaut est STN. Par exemple, ce champ permet de tenir compte de l’installation à bord d’un aéronef effectuant des sondages d’ozone d’un système GPS qui détermine l’emplacement exact des sondages. Le cas échéant, il faut choisir FLT au lieu de STN.

**ID**: ID de station ou de vol unique attribué par le WOUDC à chacune des plateformes inscrites. 

**Name**: Nom de la plateforme (doit être entré à l’aide de caractères ASCII).

**Country**: Code de trois lettres du pays où est située la plateforme, conformément à la norme ISO 3166 (p. ex., FIN pour Finlande et CHE pour Suisse). 

**GAW_ID**: ID VAG de trois lettres attribué par le système GAWSIS, s’il y a lieu (recommandé).

#### 3.2.1.4 Tableau INSTRUMENT
**Name**: Nom courant de l’instrument. Par exemple, le spectrophotomètre Brewer est appelé « Brewer » et la sonde d’ozone Brewer-Mast est appelée « Brewer-Mast ». Reportez-vous à la liste des instruments sur le site Web du WOUDC : [http://woudc.org/data/instruments/?lang=fr](http://woudc.org/data/instruments/?lang=fr).

**Model**: ID du modèle, s’il y a lieu. Reportez-vous à la liste des instruments sur le site Web du WOUDC : [http://woudc.org/data/instruments/?lang=fr](http://woudc.org/data/instruments/?lang=fr)

**Number**: Numéro de série de l’instrument, tel qu’il a été attribué par le fabricant.

#### 3.2.1.5 Tableau LOCATION
**Latitude**: Latitude de l’instrument. En règle générale, les instruments sont installés dans un lieu fixe à la même latitude que la plateforme à laquelle ils sont associés. Elle est exprimée en degrés (deg.) avec deux décimales significatives (valeur positive pour le Nord et négative pour le Sud).

**Longitude**: Longitude de l’instrument. En règle générale, les instruments sont installés dans un lieu fixe à la même longitude que la plateforme à laquelle ils sont associés. Elle est exprimée en degrés (deg.) avec deux décimales significatives (valeur positive pour l’Est et négative pour l’Ouest). 

**Height**: Altitude, élévation ou hauteur de la plateforme et de l’instrument au-dessus du niveau de la mer. En règle générale, les instruments sont installés dans un lieu fixe à la même altitude que la plateforme à laquelle ils sont associés. Elle est exprimée en mètres au-dessus du niveau de la mer. 

#### 3.2.1.6 Tableau Timestamp
**UTCOffset**: Le décalage UTC représente le temps qui doit être soustrait de l’heure locale pour obtenir le temps universel (où l’Est est positif et l’heure locale définie par le contributeur des données). Le décalage UTC est indiqué selon le format de la norme ISO 8601, c’est-à-dire hh:mm:ss. Par défaut, l’heure est donnée en UTC. Par conséquent, UTCOffset=+00:00:00. Si l’heure n’est pas donnée en UTC dans la section Data Content, alors l’heure correspond à l’heure locale et le décalage UTC doit être précisée avec une valeur autre que zéro.

!!! md-alert ""
    **Remarque :** Cela est équivalent à UTC = heure – décalage UTC.

**Date**: La date est affichée selon le format de la norme ISO 8610, c.-à-d. AAAA-MM-JJ, qui correspond au code de l’heure. Exemple : 2015-12-31.

**Time**: L’heure est affichée selon le format de la norme ISO 8601, c’est-à-dire hh:mm:ss.

#### 3.2.1.7 Exemple
Vous trouverez ci-dessous un exemple d’en tête. Cet en-tête renferme l’ensemble des tableaux et des champs obligatoires, ainsi que des commentaires. 
`*SOFTWARE: SNDPRO 1.3`
`*TROPOPAUSE IN MB 320`
`*M.S.C.-O3 T1200`

`#CONTENT`
`Class,Category,Level,Form`
`WOUDC,OzoneSonde,1.0,1`

`#DATA_GENERATION`
`Date,Agency,Version,ScientificAuthority`
`1999-05-07,MSC,1.0,Jonathan Davies`

`#PLATFORM`
`Type,ID,Name,Country,GAW_ID`
`STN,315,Eureka,CAN,71917`

`#INSTRUMENT`
`Name,Model,Number`
`ECC,6a,6a2355`

`#LOCATION`
`Latitude,Longitude,Height`
`79.99,-85.94,10`

`#TIMESTAMP`
`UTCOffset,Date,Time`
`+00:00:00,1999-04-28,23:15:00`

#### 3.2.1.8 Configuration des tableau de métadonnées ####
Dessous est un tableau qui récapitule les tables requises dans le fichier WOUDC-EXTCSV pour différents ensembles de données.

***Tableau 3.2-3 - Tableau requise pour différents jeux de données***

| Dataset | Table Name | Required/Optional | Number of Occurences | Incompatible |
|--------|--------|--------|--------|--------|
|Tout|`#CONTENT`|`Required`|`1`|`N/A`|
|Tout|`#DATA_GENERATION`|`Required`|`1`|`N/A`|
|Tout|`#PLATFORM`|`Required`|`1`|`N/A`|
|Tout|`#INSTRUMENT`|`Required`|`1`|`N/A`|
|Tout|`#LOCATION`|`Required`|`1`|`N/A`|
|`Broad-band`|`#TIMESTAMP`|`Required`|`1`|`N/A`|
|`Broadband`|`#DIFFUSE`|`Required`|`1`|`#GLOBAL`|
|`Broad-band`|`#GLOBAL`|`Required`|`1`|`#DIFFUSE`|
|`Lidar`|`#TIMASTAMP`|`Required`|`1`|`N/A`|
|`Lidar`|`#OZONE_SUMMARY`|`Required`|`1+`|`N/A`|
|`Lidar`|`#OZONE_PROFILE`|`Required`|`1+`|`N/A`|
|`Multi-band`|`#TIMESTAMP`|`Required`|`1`|`N/A`|
|`Multi-band`|`#GLOBAL`|`Required`|`1`|`#SIMULATANEOUS`|
|`Multi-band`|`#SIMULATANEOUS`|`Required`|`1`|`#GLOBAL`|
|`OzoneSonde`|`#TIMESTAMP`|`Reqiured`|`1`|`N/A`|
|`OzoneSonde`|`#FLIGHT_SUMMRAY`|`Required`|`1`|`N/A`|
|`OzoneSonde`|`#PROFILE`|`Required`|`1`|`N/A`|
|`OzoneSonde`|`#AUXILIARY_DATA`|`Optional`|`1`|`N/A`|
|`OzoneSonde`|`#PUMP_CORRECTION`|`Optional`|`1`|`N/A`|
|`Spectral`|`#TIMESTAMP`|`Optional`|`1+`|`N/A`|
|`Spectral`|`#GLOBAL_SUMMARY_NSF`|`Required`|`1+`|`#GLOBAL_SUMMARY`|
|`Spectral`|`#GLOBAL_SUMMARY`|`Required`|`1+`|`#GLOBAL_SUMMARY_NSF`|
|`Spectral`|`#GLOBAL`|`Required`|`1+`|`N/A`|
|`TotalOzone`|`#TIMESTAMP`|`Required`|`2`|`N/A`|
|`TotalOzone`|`#DAILY`|`Required`|`1`|`N/A`|
|`TotalOzone`|`#MONTHLY`|`Optional`|`1`|`N/A`|
|`TotalOzone`|`#SAOZ_DATA_V2`|`Optional`|`1`|`N/A`|
|`TotalOzoneObs`|`#TIMESTAMP`|`Required`|`1`|`N/A`|
|`TotalOzoneObs`|`#OBSERVATIONS`|`Required`|`1`|`N/A`|
|`TotalOzoneObs`|`#DAILY_SUMMARY`|`Required`|`1`|`N/A`|
|`UmkehrN14`|`#TIMESTAMP`|`Required`|`2`|`N/A`|
|`UmkehrN14`|`#N14_VALUES`|`Required`|`1`|`N/A`|
|`UmkehrN14 level 2`|`#TIMESTAMP`|`Required`|`2`|`N/A`|
|`UmkehrN14 level 2`|`#C_PROFILE`|`Required`|`1`|`N/A`|

## 3.3 Contenu des données propres à l’ozone 
### 3.3.1 Introduction
La présente section porte sur le contenu des données des différentes catégories de données relatives à l’ozone. Chaque catégorie comporte un ensemble de tableaux définis. Vous trouverez ci-après, pour chacun des tableaux, le nom des champs (colonnes) qu’ils contiennent, l’ordre de ces champs, selon lesquelles les données doivent être consignées. 

#### 3.3.1.1 Lidar
Lidar est l’abréviation de l’expression « détection et télémétrie par ondes lumineuses) ». Il s’agit de données de télédétection dont la plage temporelle par fichier correspond à la durée d’une période d’observation (habituellement un ou deux jours pour l’obtention d’un profil unique).

#### 3.3.1.2 Microwave
Cette catégorie de données contient des renseignements sur les profils verticaux de l’ozone. Il s’agit de données de télédétection dont la plage temporelle par fichier correspond à la durée d’une période d’observation (habituellement un ou deux jours pour l’obtention d’un profil unique).

#### 3.3.1.3 Ozonesonde
Une sonde d’ozone est un instrument fixé à un ballon qui sert à mesurer le profil vertical de l’ozone dans l’atmosphère. Il s’agit de données de télédétection dont la plage temporelle par fichier correspond à la durée d’un vol de ballon (habituellement un seul vol). 

#### 3.3.1.4 TotalOzoneObs
Les observations de l’ozone total (TotalOzoneObs) sont des mesures de la colonne d’ozone total exprimées en unités Dobson. Il s’agit de données de télédétection dont la plage temporelle par fichier correspond habituellement à un jour.

#### 3.3.1.5 TotalOzone
L’ozone total (TotalOzone) est une mesure de la colonne d’ozone total exprimée en unités Dobson. Il s’agit de données de télédétection dont la plage temporelle par fichier correspond à un mois de synthèses quotidiennes.

#### 3.3.1.6 UmkehrN14
Les mesures Umkehr (UmkehrN14) sont des profils d’ozone établis à l’aide de 14 valeurs N (qui correspondent à 14 angles du zénith solaire). Il s’agit de données de télédétection dont la plage temporelle par fichier correspond à un mois de synthèses quotidiennes.

### 3.3.2 Catégorie : Lidar 
La catégorie Lidar comporte deux tableaux obligatoires : `#PROFILE_SUMMARY` et `#OZONE_PROFILE`.

!!! md-alert ""
    **Remarque :** Les tableaux de la catégorie Lidar ont été tirés directement des fichiers formatés 2160 du Ames Research Centre de la NASA [3, 4] utilisés par le Network for the Detection of Atmospheric Composition Change (NDACC), anciennement appelé Network for Detection of Stratospheric Change (NDSC).

Le Tableau 3.3 1 présente les tableaux devant être remplis pour la catégorie Lidar (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.3.2.1](#3321-tableau-profile_summary) et [3.3.2.2](#3322-table-ozone_profile) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux.

***Tableau 3.3 1 – Tableaux de données de la catégorie Lidar***

| Nom du tableau | Nom des champs (colonnes) (dans l’ordre) |
|--------|--------|
|`#PROFILE_SUMMARY`|`Altitudes, MinAltitude, MaxAltitude, StartDate, StartTime, EndDate, EndTime, PulsesAveraged`|
|`#OZONE_PROFILE`|`Altitude, OzoneDensity, StandardError, RangeResolution, AirDensity, Temperature`|

#### 3.3.2.1 Tableau PROFILE_SUMMARY
**Altitudes**: Nombre de niveaux (couches) observés.

**MinAltitude**: Altitude minimale du profil en mètres (m).

**MaxAltitude**: Altitude maximale du profil en mètres (m).

**StartDate**: Date de début déterminée en fonction de la période d’observation. Le format de date de la norme ISO 8601 (aaaa-mm-jj) est utilisé.

**StartTime**: Heure de début déterminée en fonction de la période d’observation. Le format de l’heure de la norme ISO 8601 (hh : mm : ss) est utilisé.

**EndDate**: Date de fin déterminée en fonction de la période d’observation. Le format de date de la norme ISO 8601 (aaaa-mm-jj) est utilisé.

**EndTime**: Heure de fin déterminée en fonction de la période d’observation. Le format de l’heure de la norme ISO 8601 (hh : mm : ss) est utilisé.

**PulsesAveraged**: Nombre d’impulsions utilisées pour intégrer le profil.

#### 3.3.2.2 Table OZONE_PROFILE
**Altitude**: Altitude (plage) en mètres (m).

**OzoneDensity**: Densité (concentration) de l’ozone (molécules*cm-3).

**StandardError**: Erreur-type estimée de la concentration de l’ozone (molécules*cm-3).

**RangeResolution**: Résolution en distance, exprimée en mètres (m).

**AirDensity**: Densité de l’air (molécules*cm-3).

**Temperature**: Température (Kelvin).

#### 3.3.2.3 Exemple
Vous trouverez un exemple de fichier de données pour la catégorie Lidar à l’[annexe A.1](#a1-exemple-pour-la-catégorie-lidar) et en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/Lidar.csv](http://woudc.org/archive/Documentation/Examples-extCSV/Lidar.csv).

### 3.3.3 Catégorie : Microwave
La catégorie Microwave comporte deux tableaux obligatoires : `#PROFILE_SUMMARY` et `#OZONE_PROFILE`. 

!!! md-alert ""
    **Remarque :** Les tableaux de la catégorie Microwave sont fondés sur les sorties de données de la station météorologique de Payerne, en Suisse, qui est exploitée par MétéoSuisse [5].

Le Tableau 3.3 2 présente les tableaux devant être remplis pour la catégorie Microwave (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.3.3.1](#3331-tableau-profile_summary) et [3.3.3.2](#3332-tableau-ozone_profile) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux.

***Tableau 3.3 2 – Tableaux de données de la catégorie Microwave ***

| Nom du tableau | Nom des champs (colonnes) (dans l’ordre) |
|--------|--------|
|`#PROFILE_SUMMARY`|`Levels, AveragingTime, ZenithAngle, NoiseTemperature, TTF, CalculatedSpectrum`|
|`#OZONE_PROFILE`|`Altitude, OzoneVMR, VariableError, FixedError, SmoothingError, TotalError, A-priori, Temperature, Pressure`|

#### 3.3.3.1 Tableau PROFILE_SUMMARY
**Levels**: Nombre de niveaux (couches) observés.

**AveragingTime**: Durée moyenne

**ZenithAngle**: Angle du zénith solaire (degrés décimaux).

**NoiseTemperature**: Température de bruit du système moyenne (K).

**TTF**: Facteur de transmission troposphérique (TTF).

**CalculatedSpectrum**: État de la mesure – spectre calculé (K).

#### 3.3.3.2 Tableau OZONE_PROFILE
**Altitude**: Altitude en mètres au-dessus du niveau de la mer.

**OzoneVMR**: Rapport de mélange en volume (VMR) de l’ozone (ppm).

**VariableError**: Erreur variable (stochastique) du VMR de l’ozone (ppm).

**FixedError**: Erreur fixe (systématique) du VMR de l’ozone (ppm).

**SmoothingError**: Erreur de lissage (ppm).

**TotalError**: Total des erreurs (ppm).

**A-priori**: Contribution de données a priori (%).

**Temperature**: Profil de température utilisé aux fins de récupération (K).

**Pressure**: Profil de pression utilisé aux fins de récupération (Pa).

#### 3.3.3.3 Exemple
Vous trouverez un exemple de fichier de données pour la catégorie Microwave à l’[annexe A.2](#a2-exemple-pour-la-catégorie-microwave).

### 3.3.4 Category: Ozonesonde
La catégorie Ozonesonde comporte 12 tableaux obligatoires :  `#PREFLIGHT_SUMMARY`, `#RADIOSONDE`, `#INTERFACE_CARD`, `#SAMPLING_METHOD`, `#PUMP_SETTINGS`, `#PUMP_CORRECTION`, `#FLIGHT_SUMMARY`, `#OZONE_REFERENCE`, `#PROFILE`, `#PROFILE_UNCERTAINTY`, `#PRELAUNCH`, and `#DESELECTED_DATA`.

!!! md-alert ""
    **Remarque :** La valeur qui figure dans le champ `FORM` du tableau `#CONTENT` doit être « 2 ». La raison de cette modification est la suivante : la valeur du champ `FORM` (index) correspond à la version du format de données. Si un tableau existant est modifié ou qu’un nouveau tableau est ajouté, la valeur du champ `FORM` augmente de un après chaque modification. La valeur du champ `FORM` (indice) se veut un indicateur du lecteur de fichiers requis pour les tableaux de données qui suivent, pour aider les programmeurs à lire le fichier. Seul le WOUDC peut apporter des modifications à cet index. Par conséquent, l’ajout de tableaux ou les changements apportés aux tableaux originaux de la catégorie Ozonesonde exigent la modification de la valeur du champ `FORM`, qui, dans le présent cas, doit être réglée à « 2 » en date du « Jour Mois 2013 ». Pour plus de détails, veuillez vous reporter à la s[ection 3.2.1.1](#3211-tableau-content).

Le Tableau 3.3 3 présente les tableaux devant être remplis pour la catégorie Ozonesonde (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.3.4.1](#3341-preflight_summary) à [section 3.3.4.12](#33412-tableau-deselected_data) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux. La [section 3.3.4.13](#33413-tableaux-de-codes) comporte deux tableaux de codes : le Tableau 3.3 4 – Codes d’algorithme de l’ozone résiduel (correction et le Tableau 3.3 5 – Codes de niveau .

***Tableau 3.3 3 – Tableaux de données de la catégorie Ozonesonde***

| Nom du tableau | Nom des champs (colonnes) (dans l’ordre) |
|--------|--------|
|`#PREFLIGHT_SUMMARY`|`Ib0, ib1, ib2, SolutionType, SolutionVolume, PumpFlowRate, OzoneSondeResponseTime`|
|`#RADIOSONDE`|`Manufacturer, Model, Number`|
|`#INTERFACE_CARD`|`Manufacturer, Model, Number`|
|`#SAMPLING_METHOD`|`TypeOzoneFreeAir, CorrectionWettingFlow, SurfaceOzone, DurationSurfaceOzoneExposure, LengthBG, WMOTropopausePressure, BurstOzonePressure, GroundEquipment, ProcessingSoftware`|
|`#PUMP_SETTINGS`|`MotorCurrent, HeadPressure, VacuumPressure`|
|`#PUMP_CORRECTION`|`Pressure, PumpCorrectionFactor`|
|`#FLIGHT_SUMMARY`|`IntegratedO3, CorrectionCode, SondeTotalO3, NormalizationFactor, BackgroundCorrection, SampleTemperatureType`|
|`#OZONE_REFERENCE`|`Name, Model, Number, Version, TotalO3, WLCode, ObsType, UTC_Mean`|
|`#PROFILE`|`Duration, Pressure, O3PartialPressure, Temperature, WindSpeed, WindDirection, LevelCode, GPHeight, RelativeHumidity, SampleTemperature, SondeCurrent, PumpMotorCurrent, PumpMotorVoltage, Latitude, Longitude, Height`|
|`#PROFILE_UNCERTAINTY`|As in `#PROFILE`|
|`#PRELAUNCH`|As in `#PROFILE`|
|`#DESELECTED_DATA`|As in `#PROFILE`|

#### 3.3.4.1 PREFLIGHT_SUMMARY
**Ib0**: Courant électrique de fond de la sonde d’ozone mesuré en laboratoire avant que la sonde ne soit exposée à de l’ozone (µA).

**Ib1**: Courant électrique de fond de la sonde d’ozone mesuré en laboratoire après que la sonde a été exposée à une quantité définie d’ozone (µA).

**Ib2**: Courant électrique de fond de la sonde d’ozone mesuré sur le site juste avant le lancement de la sonde (µA).

**SolutionType**: Composition chimique de la solution de détection de la sonde d’ozone.

**SolutionVolume**: Volume de la solution de détection dans la cellule de la sonde d’ozone (ml).

**PumpFlowRate**: Débit de la pompe mesuré en laboratoire dans des conditions de surface (corrigée en fonction de la teneur en humidité lorsque cela est possible : voir la section 3.2.4 du rapport no 201 du programme VAG – [http://www.wmo.int/pages/prog/arep/gaw/documents/GAW_201.pdf](http://www.wmo.int/pages/prog/arep/gaw/documents/GAW_201.pdf)) (cm3/min).

**OzonesondeResponseTime**: Temps de réponse à 1/e (en minutes) mesuré pendant le test de détérioration en laboratoire.

#### 3.3.4.2 Tableau RADIOSONDE
**Manufacturer**: Fabricant de la radiosonde sur laquelle le capteur d’ozone est installé. 

!!! md-alert ""
    **Remarque :** Dans le rapport no 201 du programme VAG de janvier 2013, Quality Assurance and Quality Control for Ozonesonde Measurements in GAW (section 4.8.2, page 45), le nom de ce champ est « Name ».

**Model**: Modèle de la radiosonde.

**Number**: Numéro de série de la radiosonde.

#### 3.3.4.3 Tableau INTERFACE_CARD
**Manufacturer**: Fabricant de la carte d’interface entre la radiosonde et le capteur d’ozone. 

!!! md-alert ""
    **Remarque :** Dans le rapport no 201 du programme VAG de janvier 2013, Quality Assurance and Quality Control for Ozonesonde Measurements in GAW (section 4.8.2, page 45), le nom de ce champ est « Name ».

**Model**: Modèle de la carte d’interface. 

**Number**: Numéro de série de la carte d’interface. 

#### 3.3.4.4 Tableau SAMPLING_METHOD
**TypeOzoneFreeAir**: Technique utilisée pour prélever de l’air dépourvue d’ozone au site de lancement avant le lancement de la radiosonde (p. ex., « filtre à charbon actif »).

**CorrectionWettingFlow**: Facteur de correction appliqué au débit de la pompe pour compenser l’utilisation d’air non saturé au cours de l’étalonnage préalable au vol. 

**SurfaceOzone**: Ozone troposphérique mesuré au moyen d’une méthode indépendante (ppbv).

**DurationSurfaceOzoneExposure**: Durée pendant laquelle la sonde d’ozone a mesuré (a été exposée) l’ozone troposphérique (min).

**LengthBG**: Distance entre la base du ballon et la charge utile ou nacelle de la sonde (m).

**WMOTropopausePressure**: Pression de l’air ambiant dans la tropopause établie en fonction de la définition de l’OMM (hPa).

**BurstOzonePressure**: Pression partielle de l’ozone à l’altitude d’éclatement du ballon (hPa).

**GroundEquipment**: Équipement de base utilisé au sol.

**ProcessingSoftware**: Logiciel de traitement après vol.

#### 3.3.4.5 Tableau PUMP_SETTINGS
**MotorCurrent**: Courant électrique alimentant le moteur de la pompe (mA).

**HeadPressure**: Pression maximale lorsque l’orifice de refoulement de la pompe est à l’arrêt (hPa).

**VacuumPressure**: Pression minimale lorsque l’orifice d’aspiration de la pompe est à l’arrêt (hPa).

#### 3.3.4.6 Tableau PUMP_CORRECTION
**Pressure**: Niveau de pression en hectopascals (hPa).

**PumpCorrectionFactor**: Facteur de correction appliqué au débit de la pompe en fonction du niveau de pression.

#### 3.3.4.7 Tableau FLIGHT_SUMMARY
**IntegratedO3**: Quantité intégrée d’ozone entre la plateforme de lancement et l’altitude d’éclatement du ballon (DU).

**CorrectionCode**: Code de l’algorithme utilisé pour estimer la concentration de l’ozone (résiduel calculé) au-dessus de l’altitude d’éclatement du ballon jusqu’au sommet de l’atmosphère. (Voir le Tableau 3.3 4 à la [section 3.3.4.13](#33413-tableaux-de-codes)).

**SondeTotalO3**: Intégré + résiduel calculé (DU).

**NormalizationFactor**: Facteur en fonction duquel la pression partielle d’ozone apparente a été multipliée pour que la valeur du champ `SondeTotalO3` concorde avec la valeur du champ `TotalO3` du tableau `#OZONE_REFERENCE`. Un facteur négatif indique qu’une valeur a été calculée, mais qu’elle n’a pas été appliquée. 

**BackgroundCorrection**: Méthode utilisée pour tenir compte du courant électrique de fond produit par la sonde d’ozone en l’absence d’ozone. 

**SampleTemperatureType**: Méthode utilisée pour calculer la température de l’air échantillonné par la sonde d’ozone. Il peut s’agir d’une valeur estimative, d’une constante, ou d’une mesure prise par un capteur à thermistor installé dans la boîte, la pompe ou le tube d’admission.

#### 3.3.4.8 Tableau OZONE_REFERENCE
**Name**: Nom courant de l’instrument de mesure de l’ozone, par exemple « Brewer » ou « TOMS ». Pour la liste des instruments, voir le site Web du WOUDC :  [http://woudc.org/data/instruments/?lang=fr](http://woudc.org/data/instruments/?lang=fr).

**Model**: ID du modèle, s’il y a lieu. Voir la liste des instruments du WOUDC :  [http://woudc.org/data/instruments/?lang=fr](http://woudc.org/data/instruments/?lang=fr).

**Number**: Numéro de série de l’instrument, tel qu’il a été attribué par le fabricant.

**Version**: Version des données définie par l’organisation qui a soumis les données. Le format de la version est « majeure.mineure » (p. ex., 3.2). La valeur « majeure » augmente lorsque des changements sont apportés à l’algorithme de traitement, et la valeur « mineur », lorsque des changements sont apportées aux valeurs de caractérisation ou d’étalonnage. 

!!! md-alert ""
    **Remarque :** La valeur « mineure » est remise à zéro lorsque des changements sont apportés à l’algorithme de traitement.

**TotalO3**: Valeur quotidienne de l’ozone total de la colonne (en unités Dobson, c.-à-d. m-atm-cm), définie comme étant la « valeur la plus représentative » (généralement dans l’ordre suivant : DS, ZS et FM).

**WLCode**: Code désignant la ou les paires de longueurs d’onde utilisées pour mesurer l’ozone total. (Voir le Tableau 3.3 5 à la [section 3.3.4.13](#33413-tableaux-de-codes).)

**ObsType**: Code désignant le type de mesure d’ozone total. (Voir le Tableau 3.3 5 à la [section 3.3.4.13](#33413-tableaux-de-codes).)

**UTC_Mean**: Durée moyenne des observations (en heures décimales, UTC).

#### 3.3.4.9 Tableau PROFILE
**Duration**: Temps de vol écoulé depuis le lancement, exprimé en variables primaires.

**Pressure**: Pression atmosphérique de chaque niveau, exprimée en hectopascals (hPa).

**O3PartialPressure**: Pression partielle de l’ozone du niveau, exprimée en millipascals (mPa).

**Temperature**: Température du niveau, exprimée en degrés Celsius (C).

**WindSpeed**: Vitesse du vent, exprimée en mètres par seconde (m/s).

**WindDirection**: Direction du vent, exprimée en degrés.

**LevelCode**: Code du type de niveau. (Voir le Tableau 3.3 5 à la [Section 3.3.4.13](#33413-code-tables)).

**GPHeight**: Hauteur géopotentielle, exprimée en mètres (m).

**RelativeHumidity**: Humidité relative, exprimée en pourcentage (%).

**SampleTemperature**: Température à l’endroit où l’échantillon est mesuré, exprimée en degrés Celsius (C).

**SondeCurrent**: Mesure du courant de la sonde d’ozone (µA), sans correction.

**PumpMotorCurrent**: Courant électrique (mA) mesuré par le biais du moteur de la pompe (s’il y a lieu).

**PumpMotorVoltage**: Tension appliquée (V) mesurée par le biais du moteur de la pompe (s’il y a lieu).

**Latitude**: Latitude géographique (p. ex., à partir d’un GPS) (-90 à +90 degrés décimaux).

**Longitude**: Longitude géographique (p. ex., à partir d’un GPS) (-180 à +180 degrés décimaux).

**Height**: Hauteur géographique (p. ex., à partir d’un GPS) (mètres au-dessus du niveau de la mer).

#### 3.3.4.10 Tableau PROFILE_UNCERTAINTY
Il faut saisir le degré estimatif d’incertitude (si disponible) relatif à chacun des paramètres de profil mesurés dans le tableau `#PROFILE`, en fonction de la durée. 

**Duration**: Temps de vol écoulé depuis le lancement, exprimé en variables primaires.

**Pressure**: Pression atmosphérique de chaque niveau, exprimée en hectopascals (hPa).

**O3PartialPressure**: Pression partielle de l’ozone du niveau, exprimée en millipascals (mPa).

**Temperature**: Température du niveau, exprimée en degrés Celsius (C).

**WindSpeed**: Vitesse du vent, exprimée en mètres par seconde (m/s).

**WindDirection**: Direction du vent, exprimée en degrés.

**LevelCode**: Espace réservé pour un usage futur; laisser vide.

**GPHeight**: Hauteur géopotentielle, exprimée en mètres (m).

**RelativeHumidity**: Humidité relative, exprimée en pourcentage (%).

**SampleTemperature**: Température à l’endroit où l’échantillon est mesuré, exprimée en degrés Celsius (C).

**SondeCurrent**: Mesure du courant de la sonde d’ozone (µA), sans correction.

**PumpMotorCurrent**: Courant électrique (mA) mesuré par le biais du moteur de la pompe (s’il y a lieu).

**PumpMotorVoltage**: Tension appliquée (V) mesurée par le biais du moteur de la pompe (s’il y a lieu).

**Latitude**: Latitude géographique (p. ex., à partir d’un GPS) (-90 à +90 degrés décimaux).

**Longitude**: Longitude géographique (p. ex., à partir d’un GPS) (-180 à +180 degrés décimaux).

**Height**: Hauteur géographique (p. ex., à partir d’un GPS) (mètres au-dessus du niveau de la mer).


#### 3.3.4.11 Tableau PRELAUNCH
Données enregistrées par un système de télémétrie (c.-à-d. d'acquisition de données) avant le lancement de la sonde, y compris les vérifications de prélancement et les mesures de surface.

Comme la durée est relative à l’heure du lancement (délai avant le lancement, en secondes), il s’agit d’une valeur négative. Tous les autres paramètres du tableau correspondent à ceux du tableau `#PROFILE_UNCERTAINTY` ([section 3.3.4.10](#33410-tableau-profile_uncertainty)).

#### 3.3.4.12 Tableau DESELECTED_DATA
Données enregistrées par la sonde d’ozone qui ne sont pas consignées dans le tableau `#PROFILE`.

Cela inclut les données qui ont été rejetées en raison de problèmes de télémétrie ou d’instrument présumés et les données enregistrées après l’éclatement du ballon (profil de descente). Les paramètres du tableau sont les mêmes que ceux du tableau `#PROFILE_UNCERTAINTY` ([section 3.3.4.10](#33410-tableau-profile_uncertainty)). La valeur `O3PartialPressure` peut être calculée, mais elle n’est pas obligatoire. 

#### 3.3.4.13 Tableaux de codes
***Tableau 3.3 4 – Codes d’algorithme de l’ozone résiduel (correction)***

| Code de correction | Algorithme |
|:--------:|--------|
|Aucun (vide)|Inconnu|
|0|Aucun|
|1|Climatologie par satellite obtenue à partir des données de SBUV (d’après un article de McPeters, R.D., Labow, G.J. et Johnson, B.J. publié dans JGR en 1997).|
|2|Rapport de mélange constant extrapolé à partir de la valeur à la hauteur d’éclatement.
Ozone résiduel (DU) = 7,892 * pression partielle de l’ozone (mPa) à la hauteur d’éclatement.
|
|3|Rapport de mélange constant extrapolé à partir de la moyenne des trois derniers niveaux significatifs au-dessus du 17 mbar (méthode du SMC). Ozone résiduel (DU) = 7,892 * pression atmosphérique totale * (moyenne du rapport de mélange d’au moins trois niveaux) (mPa)|
|4|Rapport de mélange constant extrapolé à partir de la valeur à la hauteur d’éclatement. Ozone résiduel (DU) = 7,892 * pression partielle de l’ozone (mPa) à la hauteur d’éclatement. Toutefois, la hauteur de l’extrapolation est limitée à 7 hPa. Si le ballon atteint une hauteur supérieure à 7 hPa, le profil est intégré jusqu’à 7 hPa, puis la pression partielle de l’ozone (si le point de référence est bon) à ce point est multipliée par 7,892. Si le ballon éclate en dessous de 7 hPa, alors le profil est extrapolé à partir du point d’éclatement. |
|5|La climatologie mensuelle moyenne du profil vertical de l’ozone est calculée spécialement pour Lauder à l’aide des données de 1992 à 1998 du radiomètre hyperfréquence de Lauder. Cette climatologie est similaire à celle de McPeters/Labow, en ce sens où elle est représentée par des incréments de 1 hPa, de 30 à 1 hPa.|
|6|Climatology 2011: An MLS and sonde derived ozone climatology for satellite retrieval algorithms. (Article de McPeters, R.D. et Labow G.J. publié en 2012 dans JGR.)|
|7-98|À déterminer par le WOUDC.|
|99|Autre algorithme (pas encore défini) fourni par le contributeur de données.|

***Tableau 3.3 5 – Codes de niveau ***

| Code de niveau | Description |
|:--------:|--------|
|Aucun (vide)|Inconnu|
|0|Niveau régulier (valeur/point de référence)|
|1|**Niveau standard**: Les 15 niveaux standard du WOUDC sont les suivants : 1000, 700, 500, 300, 200, 150, 100, 70, 50, 30, 20, 10, 7, 5, 3, 2 et 1 (hPa).|
|2|**Niveau important**: Surface, tropopause ou autre important point d’inflexion pour l’ozone, la température, etc. |
|3|Niveau standard et niveau important|
|4|Moyenne de niveau|
|Other codes|D’autres codes seront générés, au besoin, conformément au modèle simple ci-dessous :  <p></p>**Code de niveau – Description**: <table><tr><td>8</td><td>important pour la température</td></tr><tr><td>16</td><td>important pour l’ozone</td></tr><tr><td>32</td><td>important pour l’HR</td></tr> </table>P. ex., un niveau standard qui serait important pour la température et l’ozone serait établi comme suit : 1+2+8+16 = 27|

#### 3.3.4.14 Exemple
Vous trouverez un exemple de fichier de données pour la catégorie Ozonesonde à l’[annexe A.3](#a3-exemple-pour-la-catégorie-ozonesonde) et en ligne à l’adresse  [http://woudc.org/archive/Documentation/Examples-extCSV/Ozonesonde.csv](http://woudc.org/archive/Documentation/Examples-extCSV/Ozonesonde.csv).

### 3.3.5 Categorie : TotalOzoneObs
La catégorie TotalOzoneObs comporte deux tableaux obligatoires : `#OBSERVATIONS` et `#DAILY_SUMMARY`. 

Le Tableau 3.3 6 présente les tableaux devant être remplis pour la catégorie TotalOzoneObs (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.3.5.1](#3351-tableau-observations) et [3.3.5.2](#3352-tableau-daily_summary) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux. La [section 3.3.5.3](#3353-tableaux-de-codes) comporte deux tableaux de codes : Tableau 3.3 7 – Codes de longueur d’onde et le Tableau 3.3 8 – .

***Tableau 3.3 6 – Tableaux de données de la catégorie TotalOzoneObs ***

| Nom du tableau | Nom des champs (colonnes) (dans l’ordre) |
|--------|--------|
|`#OBERVATIONS`|`Time, WLCode, ObsCode, Airmass, ColumnO3, StdDevO3, ColumnSO2, StdDevSO2`|
|`#DAILY_SUMMARY`|`WLCode, ObsCode, nObs, MeanO3, StdDevO3`|

#### 3.3.5.1 Tableau OBSERVATIONS

**Time** : hh : mm : ss

**WLCode**: Code désignant la ou les paires de longueurs d’onde utilisées pour mesurer l’ozone total. Les codes 0 à 7 sont utilisés pour les instruments Dobson seulement, le code 8, pour les instruments Filter seulement, et le code 9, pour les instruments Brewer seulement. Voir le tableau Tableau 3.3 7 à la [section 3.3.5.3](#3353-tableaux-de-codes).

**ObsCode**: Code désignant le type de mesure d’ozone total. Voir le Tableau 3.3 8 à la section [section 3.3.5.3](#3353-tableaux-de-codes).

**Airmass**: Inclinaison relative dans l’atmosphère.

**ColumnO3**: Quantité totale distincte d’ozone (O3) de la colonne (en unités Dobson, c.-à-d. m-atm-cm) mesurée au moment de l’observation.

**StdDevO3**: Écart-type de la mesure de la quantité totale d’ozone de la colonne (s’il y a lieu).

**ColumnSO2**: Quantité totale distincte de dioxyde de soufre (SO2) de la colonne (en unités Dobson, c.-à-d. m-atm-cm) mesurée au moment de l’observation.

**StdDevSO2**: Écart-type de la mesure de la quantité totale de SO2 de la colonne (s’il y a lieu).

#### 3.3.5.2 Tableau DAILY_SUMMARY

**WLCode**: Code désignant la ou les paires de longueurs d’onde utilisées pour mesurer l’ozone total. Les codes 0 à 7 sont utilisés pour les instruments Dobson seulement, le code 8, pour les instruments Filter seulement, et le code 9, pour les instruments Brewer seulement. Voir le Tableau 3.3 7 à la [section 3.3.5.3](#3353-tableaux-de-codes).

**ObsCode**: Code désignant le type de mesure d’ozone total. Voir le Tableau 3.3 8 à la [section 3.3.5.3](#3353-tableaux-de-codes).

**nObs**: Nombre d’observations utilisées pour calculer la valeur de l’ozone total de la colonne.

**MeanO3**: Valeur moyenne de la quantité totale d’ozone (O3) de la colonne (en unités Dobson, c.-à-d. m-atm-cm).

**StdDevO3**: Écart-type de la mesure de la colonne d’ozone total (s’il y a lieu)

#### 3.3.5.3 Tableaux de codes

***Tableau 3.3 7 – Codes de longueur d’onde***

|WLCode|Description|
|--------|--------|
|0|Longueurs d’onde AD, configuration ordinaire|
|1|Longueurs d’onde BD, configuration ordinaire|
|2|Longueurs d’onde CD, configuration ordinaire|
|3|Longueurs d’onde CC', configuration ordinaire|
|4|Longueurs d’onde AD, image focalisée|
|5|Longueurs d’onde BD, image focalisée|
|6|Longueurs d’onde CD, image focalisée|
|7|Longueurs d’onde CC', image focalisée|
|8|Utilisé pour désigner les instruments d’un ozonomètre à filtre|
|9|Utilisé pour désigner les instruments d’un spectrophotomètre Brewer |
|10-n|À déterminer|

***Tableau 3.3 8 – Codes d’observation***

|ObsCode|Description|
|--------|--------|
|0 ou DS|Lumière solaire directe |
|1 ouFM|Lune dégagée|
|2 ou B|Ciel bleu au zénith|
|3 ou ZS|Nuages au zénith (couche peu opaque uniforme ou stratifiée)|
|4 ou ZS|Nuages au zénith (couche moyennement opaque uniforme ou modérément variable)|
|5 ou ZS|Nuages au zénith (couche hautement opaque uniforme ou modérément variable)|
|6 ou ZS|Nuages au zénith (couche hautement variable avec ou sans précipitations)|
|7 ou ZS|Nuages au zénith (brouillard) |
|8 ou UV|Ozone obtenu du spectre UV|
|9-n|À déterminer par le WOUDC. On invite les contributeurs de données à communiquer avec le WOUDC pour proposer de nouveaux codes, au besoin.|
|GI|Valeur de l’ozone total calculée à l’aide d’une mesure de l’éclairement énergétique (GI) global (pour les instruments Brewer).|

#### 3.3.5.4 Exemple
Vous trouverez un exemple de fichier de données pour la catégorie TotalOzoneObs à l’[annexe A.4](#a4-exemple-pour-la-catégorie-totalozoneobs) et en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/TotalOzoneObs.csv.](#http://woudc.org/archive/Documentation/Examples-extCSV/TotalOzoneObs.csv.)

### 3.3.6 Catégorie : TotalOzone

La catégorie TotalOzone comporte deux tableaux obligatoires : `#DAILY` et `#MONTHLY`.

Le Tableau 3.3 9 présente les tableaux devant être remplis pour la catégorie TotalOzone (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.3.6.1](#3361-tableu-daily) et [3.3.6.2](#3362-tableau-monthly) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux.

***Tableau 3.3 9 – Tableaux de données de la catégorie TotalOzone ***

|Nom du tableau|Nom des champs (colonnes) (dans l’ordre)|
|--------|--------|
|`#DAILY`|`Data, WLCode, ObsCode, ColumnO3, StdDevO3, UTC_Begin, UTC_End, UTC_Mean, nObs, mMu, ColumnSO2`|
|`#MONTHLY`|`Date, ColumnO3, StdDevO3, Npts`|


#### 3.3.6.1 Tableu DAILY

**Date**: yyyy - mm - dd

**WLCode**: Code désignant la ou les paires de longueurs d’onde utilisées pour mesurer l’ozone total. (Voir le Tableau 3.3 7 à la [section 3.3.5.3](#3353-tableaux-de-codes).)

**ObsCode**: Code désignant le type de mesure d’ozone total. (Voir le Tableau 3.3 8 à la [section 3.3.5.3](#3353-tableaux-de-codes).)

**ColumnO3**: Valeur quotidienne de l’ozone total de la colonne (en unités Dobson, c.-à-d. m atm-cm) définie comme étant la « valeur la plus représentative » (généralement dans l’ordre suivant : DS, ZS et FM).

**StdDevO3**: Écart-type de la mesure de la quantité totale d’ozone utilisée pour la valeur quotidienne.

**UTC_Begin**: Heure de début des observations (en heures décimales, UTC).

**UTC_END**: Heure de fin des observations (en heures décimales, UTC).

**UTC_Mean**: Durée moyenne des observations (en heures décimales, UTC).

**nObs**: Nombre d’observations utilisées pour calculer la valeur de l’ozone total de la colonne.

**mMu**: Moyenne harmonique de l’inversion relative dans la couche d’ozone à 22 km\( \mu \ M \)) de chaque observation servant à calculer la valeur quotidienne. Il s’agit d’une statistique utile relativement aux effets des incertitudes liées aux extrapolations faites à partir de l'absorption atmosphérique nulle et à la génération de données à partir de données indépendantes. mMu=NN\( \sigma \ \Sigma \) (1/\( \mu \ M \)).

**ColumnSO2**: Quantité quotidienne totale de dioxyde de soufre (SO2) calculée en tant que moyenne des quantités individiduelles de SO2 (en unités Dobson, c.-à-d. m-atm-cm) relevées grâce aux mêmes observations ayant permis de déterminer la quantité d’O3.

#### 3.3.6.2 Tableau MONTHLY

**Date**: aaaa-mm-jj (le premier jour du mois est la valeur par défaut).

**ColumnO3**: Valeur quotidienne de l’ozone total de la colonne (en unités Dobson, c.-à-d. m atm-cm) définie comme étant la « valeur la plus représentative » (généralement dans l’ordre suivant : DS, ZS et FM).

**StdDevO3**: Écart-type de la mesure de la quantité totale d’ozone de la colonne.

**Npts**: Nombre de points (en général, il s’agit du nombre de moyennes quotidiennes) utilisés pour estimer la valeur mensuelle moyenne de l’ozone.

#### 3.3.6.3 Exemple

Vous trouverez un exemple de fichier de données pour la catégorie TotalOzone à l’[annexe A.5](#a5-exemple-pour-la-catégorie-totalozone) et en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/TotalOzone-Brewer.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/TotalOzone-Brewer.csv).

### 3.3.7 Catégorie : UmkehrN14

La catégorie UmkehrN14 comporte deux tableaux obligatoires : `#N14_VALUES` et `#C_PROFILE`.

Le Tableau 3.3 10 présente les tableaux devant être remplis pour la catégorie UmkehrN14 (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.3.7.1](#3371-tableau-n14_values) à [3.3.7.2](#3372-tableau-c_profile) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux.

***Tableau 3.3 10 – Tableaux de données de la catégorie UmkehrN14 ***

|Nom du tableau|Nom des champs (colonnes) (dans l’ordre)|
|--------|--------|
|`#DAILY`|`Date, H, L, WLCode, ObsCode, ColumnO#, N600, N650, N700, N740, N750, N770, N800, N830, N840, N850, N865, N880, N890, N900`|
|`#MONTHLY`| `Date, H, L, ColumnO3Obs, ColumnO3Retr, Layer10, Layer9, Layer8, Layer7, Layer6, Layer5, Layer4, Layer3, Layer2, Layer1, ITER, SX, SZA_1, nSZA, DFMRS, FEPS, RMSRES|

#### 3.3.7.1 Tableau N14_VALUES

**Date**: aaaa-mm-jj

**H**: Code correspondant à la période d’observation : 0 = inconnu, 1 = AM et 2 = PM.

**L**: Code de la paire de longueurs d’onde utilisée pour l’observation : 

1=paire de longueurs d’onde A 

2=paire de longueurs d’onde B

3=paire de longueurs d’onde C

4=paire de longueurs d’onde D

5=observation non solaire ajustée en fonction d'une observation DS

**WLCode**: Code désignant la ou les paires de longueurs d’onde utilisées pour mesurer l’ozone total. Voir le Tableau 3.3 7 à la [section 3.3.5.3](#3353-tableaux-de-codes).

**ObsCode**: Code désignant le type de mesure d’ozone total. Voir le Tableau 3.3 8 à la [section 3.3.5.3](#3353-tableaux-de-codes).

**ColumnO3**: Quantité totale d’ozone de la colonne (en unités Dobson, c.-à-d. m-atm-cm) applicable à l’observation Umkehr.

**N600 to N900**: Le logarithme Log(I'/I + C) permet de déterminer les trois décimales (nnn) de l'angle du zénith solaire (_###). L’angle du zénith solaire est indiqué au dixième de degré près, sans signe décimal. Lorsque la valeur de Log(I’/I + C) est supérieure à une unité, il faut omettre l’entier relatif. Par exemple, si Log(I’/I + C)=1,231, le code nnn saisit doit être 231. Les données manquantes sont indiquées comme suit : « -1 ».

!!! md-alert ""
    **Remarque :** La mantisse est de seulement trois décimales après le point décimal du logarithme Log(I'/I) + C). La caractéristique du logarithme est déduite par inférence. Les valeurs n sont indiquées en fonction des angles du zénith solaire correspondant : 60, 65, 70, 74, 75, 77, 80, 83, 84, 86,5, 88, 89 et 90 degrés.

#### 3.3.7.2 Tableau C_PROFILE

**Date**: aaaa-mm-jj

**H**: Code correspondant à la période d’observation : 1 = AM et 2 = PM.

**L**: Zénith dégagé = 3, zénith ennuagé = 5 (utilisé à la station 035, Arosa seulement)

**ColumnO3Obs**: Valeur observée de l’ozone total de la colonne (similaire à TotalOzone) (en unités Dobson, c.-à-d. m-atm-cm).

**ColumnO3Retr**: Valeur récupérée de l’ozone total de la colonne, exprimée en unités Dobson (somme la quantité de chacune des couches).

**Layer10 - Layer1**: Quantité d’ozone calculée dans chaque zone, exprimée en unités Dobson. La somme des couches 10 à 1 = valeur du champ ColumnO3Retr.

**ITER**: Nombre d’itérations (2, 3, 4 ou 5).

**SX**: Matrice de covariance des erreurs a priori utilisée pour le traitement :100: 

U = Matrice de covariance uniforme 

C = Matrice de covariance climatologique 

**SZA_1**: Code utilisé pour indiquer le premier angle du zénith solaire (SZA), par exemple : 1 = 60, 2 = 65 et 3 = 70 degrés. 

**NSZA**: Nombre d’angles du zénith solaire : 9, 10, 11 ou 12.

**DFMRS**: Modification de la valeur efficace de la solution fragmentaire depuis la dernière itération.

**FEPS**: Modification de la valeur efficace du vecteur de forçage depuis la dernière itération.

**RMSRES**: Variance résiduelle de l'ajustement de la valeur efficace.

#### 3.3.7.3 Exemple

Vous trouverez un exemple de fichier pour la catégorie Umkehr14 à l’[annexe A.6](#a6-exemple-pour-la-catégorie-umkehrn14) et en ligne aux adresses suivantes : [http://woudc.org/archive/Documentation/Examples-extCSV/Umkehr-N_values-Dobson.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Umkehr-N_values-Dobson.csv) (niveau 1) et  [http://woudc.org/archive/Documentation/Examples-extCSV/Umkehr_UMK92Retrieval-Dobson.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Umkehr_UMK92Retrieval-Dobson.csv) (niveau 2).

## 3.4 Contenu des données propres au rayonnement ultraviolet
### 3.4.1 Introduction

La présente section porte sur le contenu des données des différentes catégories relatives au rayonnement ultraviolet. Chaque catégorie comporte un ensemble de tableaux défini. Vous trouverez ci-après, pour chacun des tableaux, le nom des champs (colonnes) qu’ils contiennent, l’ordre de ces champs, selon lesquelles les données doivent être consignées. 

On invite les contributeurs de données à soumettre les données accessoires ou auxiliaires qu’ils jugent pertinentes. Les données accessoires sont des données qui décrivent des variables atmosphériques et diverses caractéristiques relatives au site, notamment sur la température, l’ozone, la pression, l’ennuagement (p. ex., au moyen d’un index de nuages ou d’une image du ciel) ou l’albédo, ou encore des données de pyranomètre (renseignements sur les caractéristiques permanentes du site de mesure). Les données auxiliaires incluent les caractéristiques/propriétés de l’instrument ayant servi à prendre les mesures, les renseignements sur la façon dont on a utilisé l’instrument, les algorithmes qui ont servi à calculer les valeurs mesurées à partir des signaux de l’instrument, etc. Les données auxiliaires peuvent s’avérer utiles pour l’utilisateur, ou encore absolument essentielles lorsque les données de base sont brutes (niveau 0).

#### 3.4.1.1 Spectral

Le rayonnement spectral est un rayonnement mesuré dans une bande spectrale continue, avec une résolution inférieure ou égale à 2 nm.

#### 3.4.1.2 Multibande

Le rayonnement multibande est mesuré à l’aide de plusieurs filtres passe-bande discrets dont la résolution spectrale nominale (LTMH) est de 2 à 10 nm.

#### 3.4.1.3 Large bande

Le rayonnement à large bande est la mesure des rayons UVA et UVB, ou rayonnement ultraviolet pondéré par le spectre érythémal.

#### 3.4.1.4 Pyranometer

Un pyranomètre sert à mesurer l'éclairement énergétique solaire.

### 3.4.2 Catégorie : Spectral

La catégorie Spectral comporte quatre tableaux obligatoires : `#GLOBAL`, `#DIRECT`, `#DIFFUSE` et `#ACTINOMETRIC`.

Le Tableau 3.4 1 présente les tableaux devant être remplis pour la catégorie Spectral (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.4.2.1](#3421-tableau-global) à [3.4.2.4](#3424-tableau-actinometric) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux.

***Tableau 3.4 1 – Tableaux de données de la catégorie Spectral ***

|Nom du tableau|Nom des champs (colonnes) (dans l’ordre)|
|--------|--------|
|`#GLOBAL`|`Wavelength, S - Irradiance, Time`|
|`#DIRECT`|`Wavelength, S - Irradiance, Time`|
|`#DIFFUSE`|`Wavelength, S - Irradiance, Time`|
|`ACTINOMETRIC`|`Wavelength, S - Irradiance, Time`|

!!! md-alert ""
    **Remarque :** Time est en italiques pour indiquer qu’une place est réservée pour ce champ, mais qu’il ne doit pas obligatoirement être rempli.

#### 3.4.2.1 Tableau GLOBAL

**Wavelength**: Exprimée en nanomètres (nm).

**S - Irradiance**: Éclairement énergétique spectral, exprimé en Wm^-2nm^-1

**Time**: Heure affichée selon le format de la norme ISO 8601, c’est-à-dire hh : mm : ss.

#### 3.4.2.2 Tableau DIRECT

Pour une description des champs du tableau `#DIRECT`, voir la [section 3.4.2.1](#3421-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.2.3 Tableau DIFFUSE

Pour une description des champs du tableau `#DIFFUSE`, voir la [section 3.4.2.1](#3421-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.2.4 Tableau ACTINOMETRIC

Pour une description des champs du tableau `#ACTINOMETRIC`, voir la [section 3.4.2.1](#3421-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.2.5 Exemple
Vous trouverez un exemple de fichier de données pour la catégorie Spectral à l’[annexe A.7](#a7-exemple-pour-la-catégorie-spectral) et en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/Spectral.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Spectral.csv).

### 3.4.3 Catégorie : Multiband

La catégorie Multiband comporte cinq tableaux obligatoires : `#GLOBAL`, `#DIRECT`, `#DIFFUSE`, `#ACTINOMETRIC` et `#SIMULTANEOUS`. 

Le Tableau 3.4 2 présente les tableaux devant être remplis pour la catégorie Multiband (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.4.3.1](#3431-tableau-global) à [3.4.3.5](#3435-tableau-simultaneous) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux.

***Tableau 3.4 2 – Tableaux de données de la catégorie Multiband***

|Nom du tableau|Nom des champs (colonnes) (dans l’ordre)|
|--------|--------|
|`#GLOBAL`|`Wavelength, S - Irradiance, Time`|
|`#DIRECT`|`Wavelength, S - Irradiance, Time`|
|`#DIFFUSE`|`Wavelength, S - Irradiance, Time`|
|`ACTINOMETRIC`|`Wavelength, S - Irradiance, Time`|
|`#SIMULTANEOUS`|`Wavelength, GLS - Irradiance, DFS - Irradiance, DRS - Irradiance, Time`|

!!! md-alert ""
    **Remarque :** Time, DFS-Irradiance et DRS-Irradiance sont en italiques pour indiquer qu’une place est réservée pour ces champs, mais qu’ils ne doivent pas obligatoirement être remplis.

#### 3.4.3.1 Tableau GLOBAL

**Wavelength**: Exprimée en nanomètres (nm).

**S - Irradiance** : Éclairement énergétique spectral, exprimé en Wm^-2nm^-1

**Time**: Heure affichée selon le format de la norme ISO 8601, c’est-à-dire hh : mm : ss.

#### 3.4.3.2 Tableau DIRECT

Pour une description des champs du tableau `#DIRECT`, voir la [section 3.4.3.1](#3431-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.3.3 Tableau DIFFUSE

Pour une description des champs du tableau `#DIFFUSE`, voir la [section 3.4.3.1](#3431-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.3.4 Tableau ACTINOMETRIC

Pour une description des champs du tableau `#ACTINOMETRIC`, voir la [section 3.4.3.1](#3431-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.3.5 Tableau SIMULTANEOUS

**Wavelength**: Exprimée en nanomètres (nm).

**GLS - Irradiance** : Éclairement énergétique spectral global, exprimé en Wm^-2nm^-1.

**DFS - Irradiance**: Éclairement énergétique spectral diffus, exprimé en Wm^-2nm^-1.

**DRS - Irradiance**: Éclairement énergétique spectral direct, exprimé en Wm^-2nm^-1.

**Time**: Heure affichée selon le format de la norme ISO 8601, c’est-à-dire hh : mm : ss.

!!! md-alert ""
    **Remarque :** Le tableau `#SIMULTANEOUS` fait référence à un détecteur unique à l’aide duquel des mesures sont prises en mode quasi simultané, mais rapporté sur la même échelle de temps. Par exemple, les mesures sont enregistrées à des intervalles de 15 secondes, d’abord pour l’éclairement énergétique spectral global, puis pour l’éclairement énergétique spectral diffus, après quoi une valeur intégrée est rapportée toutes les 15 minutes. Pour les besoins de ce tableau, cette valeur intégrée est jugée comme étant « simultanée ». En ce qui concerne les mesures simultanées réalisées à l’aide de deux détecteurs indépendants ou plus, il faut un fichier de données pour chacun des détecteurs.

#### 3.4.3.6 Exemple

Vous trouverez un exemple de fichier de données pour la catégorie Multiband à l’[annexe A.8](#a8-exemple-pour-la-catégorie-multiband) et en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/Multi-band.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Multi-band.csv).

### 3.4.4 Catégorie : Broadband

La catégorie Broadband comporte cinq tableaux obligatoires : `#GLOBAL`, `#DIRECT`,0 `#DIFFUSE`, `#ACTINOMETRIC` et `#SIMULTANEOUS`.

Le Tableau 3.4 3 présente les tableaux devant être remplis pour la catégorie Broadband (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.4.4.1](#3441-tableau-global) à [3.4.4.5](#3445-tableau-simultaneous) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux.

***Tableau 3.4 3 – Tableaux de données de la catégorie Broadband ***

|Nom du tableau|Nom des champs (colonnes) (dans l’ordre)|
|--------|--------|
|`#GLOBAL`|`S - Irradiance, Time`|
|`#DIRECT`|`S - Irradiance, Time`|
|`#DIFFUSE`|`S - Irradiance, Time`|
|`ACTINOMETRIC`|`S - Irradiance, Time`|
|`#SIMULTANEOUS`|`Time, GL - Irradiance, DF - Irradiance, DR - Irradiance`|

!!! md-alert ""
    **Remarque :** DF-Irradiance et DR-Irradiance sont en italiques pour indiquer qu’une place est réservée pour ces champs, mais qu’ils ne doivent pas obligatoirement être remplis.

#### 3.4.4.1 Tableau GLOBAL

**Time**: Heure affichée selon le format de la norme ISO 8601, c’est-à-dire hh : mm : ss.

**S - Irradiance**: Éclairement énergétique spectral, exprimé en Wm^-2.

#### 3.4.4.2 Tableau DIRECT

Pour une description des champs du tableau `#DIRECT`, voir la [section 3.4.4.1](#3441-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.4.3 Tableau DIFFUSE

Pour une description des champs du tableau `#DIFFUSE`, voir la [section 3.4.4.1](#3441-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.4.4 Tableau ACTINOMETRIC

Pour une description des champs du tableau `#ACTINOMETRIC`, voir la [section 3.4.4.1](#3441-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.4.5 Tableau SIMULTANEOUS

**Time**: Heure affichée selon le format de la norme ISO 8601, c’est-à-dire hh : mm : ss.

**GL - Irradiance**: Éclairement énergétique global, exprimé en Wm^-2.

**DF - Irradiance**: Éclairement énergétique diffus, exprimé en Wm^-2.

**DR - Irradiance**: Éclairement énergétique direct, exprimé en Wm^-2.

!!! md-alert ""
    **Remarque : ** Le tableau `#SIMULTANEOUS` fait référence à un détecteur unique à l’aide duquel des mesures sont prises en mode quasi simultané, mais rapporté sur la même échelle de temps. Par exemple, les mesures sont enregistrées à des intervalles de 15 secondes, d’abord pour l’irradiance globale, puis pour l’irradiance diffuse, après quoi une valeur intégrée est rapportée toutes les 15 minutes. Pour les besoins de ce tableau, cette valeur intégrée est jugée comme étant « simultanée ». En ce qui concerne les mesures simultanées réalisées à l’aide de deux détecteurs indépendants ou plus, il faut un fichier de données pour chacun des détecteurs.

#### 3.4.4.6 Exemple

Vous trouverez un exemple de fichier de données pour la catégorie Broadband à l’[annexe A.9](#a9-exemple-pour-la-catégorie-broadband) et en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/Broad-band.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Broad-band.csv).

### 3.4.5 Catégorie : Pyranometer

La catégorie Pyranometer comporte quatre tableaux obligatoires : `#GLOBAL`, `#DIRECT`, `#DIFFUSE` et `#ACTINOMETRIC`.

Le Tableau 3.4 4 présente les tableaux devant être remplis pour la catégorie Pyranometer (colonne Nom du tableau) et le nom de leurs champs respectifs. Les [sections 3.4.5.1](#3451-tableau-global) à [3.4.5.4](#3454-tableau-simultaneous) renferment des descriptions plus détaillées des champs de l’ensemble des tableaux.

***Tableau 3.4 4 – Tableaux de données de la catégorie Pyranometer ***

|Nom du tableau|Nom des champs (colonnes) (dans l’ordre)|
|--------|--------|
|`#GLOBAL`|`S - Irradiance, Time`|
|`#DIRECT`|`S - Irradiance, Time`|
|`#DIFFUSE`|`S - Irradiance, Time`|
|`ACTINOMETRIC`|`S - Irradiance, Time`|
|`#SIMULTANEOUS`|`Time, GL - Irradiance, DF - Irradiance, DR - Irradiance`|

!!! md-alert ""
    **Remarque : ** DF-Irradiance et DR-Irradiance sont en italiques pour indiquer qu’une place est réservée pour ces champs, mais qu’ils ne doivent pas obligatoirement être remplis.

#### 3.4.5.1 Tableau GLOBAL

**Time**: Heure affichée selon le format de la norme ISO 8601, c’est-à-dire hh : mm : ss.

**S - Irradiance**: Éclairement énergétique spectral, exprimé en Wm-2.

#### 3.4.5.2 Tableau DIRECT

Pour une description des champs du tableau `#DIRECT`, voir la [section 3.4.5.1](#3451-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.5.3 Tableau DIFFUSE

Pour une description des champs du tableau `#DIFFUSE`, voir la [section 3.4.5.1](#3451-tableau-global) sur le tableau `#GLOBAL`.

#### 3.4.5.4 Tableau SIMULTANEOUS

**Time**: Heure affichée selon le format de la norme ISO 8601, c’est-à-dire hh : mm : ss.

**GL - Irradiance**: Éclairement énergétique global, exprimé en Wm^-2.

**DF - Irradiance**: Éclairement énergétique diffus, exprimé en Wm^-2.

**DR - Irradiance**: Éclairement énergétique direct, exprimé en Wm^-2.

!!! md-alert ""
    **Remarque :** Le tableau `#SIMULTANEOUS` fait référence à un détecteur unique à l’aide duquel des mesures sont prises en mode quasi simultané, mais rapporté sur la même échelle de temps. Par exemple, les mesures sont enregistrées à des intervalles de 15 secondes, d’abord pour l'éclairement énergétique global, puis pour l'éclairement énergétique diffus, après quoi une valeur intégrée est rapportée toutes les 15 minutes. Pour les besoins de ce tableau, cette valeur intégrée est jugée comme étant « simultanée ». En ce qui concerne les mesures simultanées réalisées à l’aide de deux détecteurs indépendants ou plus, il faut un fichier de données pour chacun des détecteurs.

#### 3.4.5.5 Exemple

Vous trouverez un exemple de fichier de données pour la catégorie Pyranometer à l’[annexe A.10](#a10-exemple-pour-la-catégorie-pyranometer).

### 3.4.6 Données accessoires et auxiliaires 

On invite les contributeurs de données à soumettre des données accessoires ou auxiliaires qu’ils jugent pertinentes. 

!!! md-alert ""
    **Remarque :** Il est préférable de soumettre les données accessoires et auxiliaires dans des fichiers distincts.

Le Tableau 3.4 5 présente les différents tableaux permettant de soumettre des données accessoires et auxiliaires. 

!!! md-alert ""
    **Remarque :** Chacun des tableaux est accompagné d’exemples de nom de champ pouvant être inclus dans les catégories associées au rayonnement ultraviolet. 

***Tableau 3.4 5 – Exemple de données accessoires et auxiliaires***

{:.foo}
|Nom du tableau|Noms de champ suggérés|
|--------|--------|
|`#CALIBRATION`|Specified by the data originator (Scientific Authority)|
|`#METEOROLOGY`|Temperature, Pressure, Relative Humidity|
|`METEOROLOGY_SUMMARY`|Time, Temperature, Pressure, Relative Humidity|
|`SURFACE_CONDITIONS`|Albedo, Comments about Surface cover (Example: "Snow" or "Shrubland" or "Grassland")|
|`IMAGE`|Filename, Comments (Example: sky97001.gif)|

Le Tableau 3.4 6 énumère l’ensemble des champs obligatoires et facultatifs pour la soumission de données au WOUDC, accompagnés de commentaires et de leur unité physique respective [6].

***Tableau 3.4 6 – Nom des champs***

|Nom du champ|Unité physique|Commentaires|
|--------|--------|--------|
|Albedo|Dimensionless|Aucun commentaire|
|Cloud Amount|Aucune unité|Codes spéciaux|
|Date|aaaa-mm-jj|Norme ISO-8601|
|DF - Irradiance|Wm^-2|Éclairement énergétique diffus|
|DFS - Irradiance|Wm^-2 nm^-1|Éclairement énergétique spectral diffus|
|DR - Irradiance|Wm^-2|Éclairement énergétique direct|
|DRS - Irradiance|Wm^-2 nm^-1|Éclairement énergétique spectral direct|
|GL - Irradiance|Wm^-2|Éclairement énergétique global|
|GLS - Irradiance|Wm^-2 nm^-1|Éclairement énergétique spectral global|
|Height|Mètres (m))|Au-dessus du niveau de la mer|
|Image filename and -path|Aucune unité|*.bmp, *.gif, *.jpeg etc.|
|Irradiance|Wm^-2|Aucun commentaire|
|Irradiation|KJ m^-2 m,^-1|Éclairement énergétique intégré quotidien|
|Latitude|Degrés décimaux|Nord positif|
|Longitude|Degrés décimaux|Est positif|
|Pressure|Hectopascal (hPa)|Aucun commentaire|
|RelativeHumidity|Sans dimension (%)|Aucun commentaire|
|S- Irradiance|Wm^-2 nm^-1|Éclairement énergétique spectral|
|S - Irradiation| KJm^-2|Irradiation spectral|
|Time|hh : mm : ss|ISO-8601 standard|
|Temperature|Degrees Celsius (°C)|Aucun commentaire|
|Wavelength|Nanomètres (nm)|Aucun commentaire|
|WindSpeed|ms^-1|Aucun commentaire|
|WindDirection|Degrés décimaux|Aucun commentaire|

# Chapter 4 Chapitre 4 Traitement des données
## 4.1 Politique sur les données
L’utilisation des données du WOUDC est régie par la [politique sur les données de l’OMM](https://www.wmo.int/pages/about/exchangingdata_en.html) et par la [politique sur l’utilisation des données du programme VAG de l’OMM](https://gawsis.meteoswiss.ch/GAWSIS/index.html#/faq). Pour plus de renseignements sur la politique d’utilisation des données du WOUDC, allez à l’adresse [enligne](http://woudc.org/about/data-policy.php?lang=fr).

## 4.2 Flux et traitement des données
La [section 2.3](#23-soumission-des-données) fournit des procédures détaillées concernant le traitement des données. Il est possible d’accéder aux données correctement soumises par le biais des dossiers accessibles sur le Web (WAF), des services Web géospatiaux et de la fonction de recherche. 

Essentiellement, les données soumises par les contributeurs sont reçues, traitées, puis archivées. Après qu’un fichier a été saisi dans le système, le processus de traitement s’amorce. On détermine d’abord le format du fichier entrant, puis on le valide pour s’assurer qu’il respecte le format de fichier standard du WOUDC (extCSV). Une fois que cela a été fait, le système tente de créer et de valider une taxonomie et une adresse URI pour le fichier. Enfin, le fichier est soumis à une rigoureuse série de validations appelée File Level Validation (FLV). La FLV permet : 

- de s’assurer que le fichier extCSV est conforme aux spécifications du programme VAG et du WOUDC sur le plan syntaxique;
- d’effectuer une validation des métadonnées pour s’assurer que les valeurs contenues dans les en têtes (`#TIMESTAMP`, `#PLATFORM`, `#INSTRUMENT`, `#CONTENT`, `#DATA_GENERATION`, `#LOCATION`) sont exactes et uniformes;
- d’effectuer une validation unique des tableaux, soit une série de tests servant à valider des tableaux d’ensemble de données spécifiques;
- de s’assurer que les valeurs sont modifiées conformément à la politique de « non-intervention » (c.-à-d. avec le moins de modifications syntaxiques possible).


Le fichier extCSV obtenu à la suite de la FLV est une version « nettoyée » du fichier original. Une fois que le fichier extCSV a réussi la validation de taxonomie, la validation de l’adresse URI et la FLV, il est prêt à être intégré à la base de données. Toutes les erreurs relevées pendant le processus de validation sont transmises au contributeur pour qu’il les corrige et ainsi faciliter l’intégration de leurs futurs fichiers de données. 

# Chapitre 5 Qualité des données
Une fois qu’un fichier a été soumis au WOUDC, la qualité des données qu’il contient est évaluée à différentes étapes du processus de traitement des données. Le contrôle de la qualité comprend la vérification du format de fichier et du contenu des métadonnées, l’inspection des plages de valeurs des données et des vérifications relatives à la redondance de données.

Voici un résumé des vérifications effectuées aux fins de l’assurance de la qualité des données : 

**Validation de la structure**

- Permet de s’assurer que le fichier extCSV est conforme aux spécifications relatives aux fichiers extCSV : 
        - Vérification du format du fichier;
        - Vérification de l’ensemble des tableaux et des champs contenus dans le fichier, etc.


**Validation des métadonnées**

- Validation de l’ensemble des métadonnées (organisation, station, instrument);
- Vérification de l’intégralité des métadonnées et correction des métadonnées incorrectes, dans la mesure du possible.


**Validation des données **

- Vérification de l’exactitude de l’ensemble des dates contenues dans le fichier (p. ex., la date de génération du fichier ne précède pas la date d’observation); 
- Vérification des valeurs dérivées contenues dans le fichier (p. ex., valeurs du champ TotalOzone dans le tableau `#MONTHLY`) :
        - Correction des valeurs incorrectes et insertion des données manquantes.


Au départ, les fichiers sont validés pour confirmer qu’ils sont conformes aux spécifications relatives au format de fichier, mais, par la suite, des résumés statistiques plus généraux peuvent être générés, de manière à relever des valeurs erronées, des problèmes d’étalonnage, etc. Même si ces derniers exemples exigent une connaissance plus approfondie des données, les archives renferment déjà suffisamment de données pour porter des jugements critiques et faire des évaluations générales au sujet des données. À mesure que le volume de données augmentera et que les connaissances statistiques s’amélioreront, la portée de ces évaluations sera élargie. 

# Chapitre 6 Consultation et extraction de données
La consultation et l’extraction de données sont des fonctions de base du WOUDC. Le grand public a accès gratuitement aux données du WOUDC. Pour des renseignements sur la façon de consulter les données, voir le page [Accessibilité des données](http://woudc.org/about/data-access.php?lang=fr).

# Chapitre 7 Coordonnées du WOUDC
La principal moyenne de communication avec le WOUDC est par le page de contact. La boîte de réception est vérifiée sur une base quotidienne par les services opérationnels des centres de données. Conformément à sa norme de service, le WOUDC est tenu à répondre à toutes les demandes de renseignements transmises sur l'internet dans un délai de deux jours ouvrables.

## 7.1 Le page de contact
[http://woudc.org/contact.php?lang=fr](http://woudc.org/contact.php?lang=fr).

## 7.2 Adresse

Centre mondial de données sur l’ozone et le rayonnement ultraviolet

Service météorologique du Canada

Environnement et Changement climatique Canada

4905, rue Dufferin 

Toronto (Ontario)   M3H 5T4

Canada


# Chapitre 8 Références
\[1] User Guide to the WMO/GAW World Ozone Data Centre Version 3.1, Environment Canada publication, 2013.

\[2] Guide to the WMO/GAW World Ultraviolet Radiation Data Centre Version 6.0, Environment Canada publication, 2006.

\[3] Gaines, S.E. and R.S. Hipskind, Format Specification for Data Exchange Version 1.0, NASA Ames Research Center publication, 1990.

\[4] Gaines, S.E. and R.S. Hipskind, Format Specification for Data Exchange Version 3.1, NASA Ames Research Center publication, 1998.

\[5] Ruffieux, D., Personal communication, 2006

\[6] R. Dogniaux, et al., "Solar Meteorology: Units and Symbols": Int. J. Solar Energy, 1984, volume 2 number 3, pages 249-255.

# Appendice A Exemples
## A.1  Exemple pour la catégorie Lidar 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie Lidar. Vous pouvez aussi consulter un exemple en ligne à l’adresse  [http://woudc.org/archive/Documentation/Examples-extCSV/Lidar.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Lidar.csv).

```
`*NOTE:One Event per file
* This file was generated by NA2110LI - version 1.0.
* Originating NASA-Ames file: NDSC\EUREKA\euo39302.cal
* --- NASA-Ames MNAME ---
* NDSC
#CONTENT
Class,Category,Level,Form
WOUDC,Lidar,1.0,1
#DATA_GENERATION
Date,Agency,Version,ScientificAuthority
1993-12-14,CRESTech,0.0,"(Carswell, A. I.), (carswell@lidar.ists.ca) 416-665-5418"
#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,315,Eureka,CAN
#INSTRUMENT
Name,Model,Number
DIAL,Lotard,1
* --- NASA-Ames SCOM ---
* Data processed using version 2.0 software
* --- NASA-Ames NCOM ---
* Temperature and Density data above about 25 Km
* is lidar derivied. Temperature and density below
* 15-25 Km (maximum sonde height) is that given
* by the nearest in time Eureka radiosonde.
* Between the maximum sonde height up to
* around 25 Km the temperature and denisty is
* estimated by interpolationg between the sonde
* and lidar values.
#LOCATION
Latitude,Longitude,Height
80,-85.9,607
#TIMESTAMP
UTCOffset,Date,Time
+00:00:00,1993-02-10,13:11:00
#OZONE_SUMMARY
Altitudes,MinAltitude,MaxAltitude,StartDate,StartTime,EndDate,EndTime,PulsesAveraged
112,12150,45430,1993-02-10,13:11:00,,,1.26e+006
#OZONE_PROFILE
Altitude,OzoneDensity,StandardError,RangeResolution,AirDensity,Temperature
12150.,2.428e+012,4.67e+010,1000
12450.,2.761e+012,4.82e+010,1000
12750.,2.996e+012,5.02e+010,1000
… etc
```
## A.2  Exemple pour la catégorie Microwave 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie Microwave. 

```
*NOTE: One Event per file

* This file was originally received in NASA-Ames 2110 format and has been
* translated into WOUDC extCSV format using converter software XXX ver xx
*
* --------------------------------------------------------------
* NOTE: Original file header information is appended at the end of this file.
* --------------------------------------------------------------
*

#CONTENT
Class,Category,Level,Form
WOUDC,Microwave,1.0,1

#DATA_GENERATION
Date,Agency,Version,ScientificAuthority
2006-07-01,Meteoswiss,1.0,Dominique Ruffieux

#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,156,Payerne,CHE

#INSTRUMENT
Name,Model,Number
SOMORA,???,???

#LOCATION
Latitude,Longitude,Height
46.82,6.95,491 

* Observing technique: total power 
* Center frequency: 142.175 GHz 
* Inversion method: Optimal Estimation 
* Temp. and press. profiles : CIRA 86 + daily NCEP + Payerne radiosondes
* A-priori profile: season standard atmosphere 
* Measurement Error Cov.: variable, adjusted to wings BT 
* A Priori Error Cov.: 0 - 1.5 ppm (correlation 3-5 km)

#TIMESTAMP
UTCOffset,Date,Time
+0:00:00,2005-10-09,00:18:00

*282.01 25 2005 10 9 0 18 30 46.82 6.95 491 52.0 2741 0.57 0.13
#PROFILE_SUMMARY
Levels,AveragingTime,ZenithAngle,NoiseTemperature,TTF,CalculatedSpectrum
25,30,52.0,2741,0.57,0.13

#OZONE_PROFILE
Altitude,OzoneVMR,VariableError,FixedError,SmoothingError,TotalError,A-Priori,
Temperature,Pressure
13000,0.40,0.01,0.05,0.28,0.29,18,213.75,172.92
15000,0.69,0.03,0.12,0.43,0.45,18,214.17,125.88
17000,1.29,0.05,0.18,0.44,0.48,17,213.04,91.56
…
73500,0.56,0.03,0.02,0.11,0.12,64,216.68,,0.03
76500,0.54,0.02,0.01,0.10,0.10,73,214.20,,0.02

#TIMESTAMP
UTCOffset,Date,Time
+0:00:00,2005-10-09,00:48:00

*282.03 25 2005 10 9 0 48 30 46.82 6.95 491 52.0 2748 0.57 0.13
#PROFILE_SUMMARY
Levels,AveragingTime,ZenithAngle,NoiseTemperature,TTF,CalculatedSpectrum
25,30,52.0,2748,0.57,0.13

#OZONE_PROFILE
Altitude,OzoneVMR,VariableError,FixedError,SmoothingError,TotalError,A-Priori,
Temperature,Pressure
13000,0.42,0.01,0.05,0.28,0.29,18,213.75,172.92
15000,0.74,0.03,0.11,0.43,0.45,17,214.17,125.88
17000,1.34,0.05,0.18,0.44,0.48,17,213.04, 91.56
…
70500,0.59,0.05,0.03,0.14,0.15,56,219.34,,0.04
73500,0.56,0.03,0.02,0.11,0.12,65,216.68,,0.03
76500,0.53,0.02,0.01,0.10,0.10,74,214.20,,0.02

etc ...

#TIMESTAMP
UTCOffset,Date,Time
+0:00:00,2005-10-09,23:47:00

*282.99 25 2005 10 9 23 47 25 46.82 6.95 491 52.0 2740 0.63 0.18
#PROFILE_SUMMARY
Levels,AveragingTime,ZenithAngle,NoiseTemperature,TTF,CalculatedSpectrum
25,25,52.0,2740,0.63,0.18

#OZONE_PROFILE
Altitude,OzoneVMR,VariableError,FixedError,SmoothingError,TotalError,A-Priori,Temperature,Pressure
13000,0.34,0.01,0.04,0.28,0.29,24,211.78,174.52
15000,0.53,0.03,0.11,0.43,0.44,22,212.61,126.65
17000,1.01,0.05,0.16,0.43,0.46,21,211.64, 91.94
…
70500,0.55,0.06,0.03,0.14,0.15,56,219.34,,0.04
73500,0.53,0.03,0.02,0.11,0.12,66,216.68,,0.03
76500,0.52,0.02,0.01,0.10,0.10,76,214.20,,0.02

* RUFFIEUX D.,,,, MWAVE,,, PAYERNE,, OZONE,,, 09-Oct-2005 00:18:0009-Oct-2005 23:47:001001 
* 47 2110 
* RUFFIEUX, Dominique 
* MeteoSwiss, Station Aerologique de Payerne, Switzerland 
* Stratospheric Ozone Monitoring Radiometer (SOMORA) / Payerne 
* NDSC / GAW 
* 1 1 
* 2005 10,9 2005 10 10 
* 0.0 0.0 
* Altitude (m) 
* Fractional day (day of year) 
* 8 
* 1 1 1 1 1 1 1 100 
* 99.99 99.99 99.99 99.99 99.99 999 999.99 9999.99 
* Ozone VMR (ppm) 
* Variable (stochastic) error for ozone VMR (ppm) 
* Fixed (systematic) error for ozone VMR (ppm) 
* Smoothing error (ppm) 
* Total error (ppm) 
* A-priori data contribution (%) 
* Temperature profile used for retrieval (K) 
* Pressure profile used for retrieval (Pa) 
* 14 
* 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
* 99 9999 99 99 99 99 999 99.99 99.99 999 99 9999 9.99 9.99 
* Number of altitudes recorded in subsequent data records 
* Year 
* Month 
* Day 
* Hour (Time=UT) 
* Minutes 
* Averaging Time (Minutes) 
* Latitude (Deg. north) 
* Longitude (Deg. east) 
* Altitude above sea level (m) 
* Zenith angle (Deg.) 
* Mean system noise temperature (K) 
* Tropospheric Transmission Factor 
* Std. of Meas. - Calc. Spectrum (K) 
* 0 
* 7 
* Observing technique: total power 
* Center frequency: 142.175 GHz 
* Inversion method: Optimal Estimation 
* Temp. and press. profiles : CIRA 86 + daily NCEP + Payerne radiosondes
* A-priori profile: season standard atmosphere 
* Measurement Error Cov.: variable, adjusted to wings BT 
* A Priori Error Cov.: 0 - 1.5 ppm (correlation 3-5 km)
```

## A.3  Exemple pour la catégorie Ozonesonde 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie Ozonesonde. Vous pouvez aussi consulter un exemple en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/Ozonesonde.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Ozonesonde.csv).

```
#CONTENT
Class,Category,Level,Form
WOUDC,OzoneSonde,1.0,2

#DATA_GENERATION
Date, Agency, Version, ScientificAuthority
2013-02-11, Environment Canada,1.0,Jonathan Davies

#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,21,Stonyplain,CAN

#INSTRUMENT
Name,Model,Number
ECC,Z,Z14850

#LOCATION
Latitude,Longitude,Height
53.54,-114.1,766

#TIMESTAMP
UTCOffset,Date,Time
+00:00:00,2013-01-30,11:16:00

*EXAMPLE OF NEW OZONESONDE 
*FILE FORMAT* 
* ----- correction applied for 1% KI solution in ENSCI sonde ----------
* ----- correction applied for 2.5 cc of solution instead of 3.0 ---
* ----- residual ozone interpolated from 2011 MLS climatology (McPeters and Labow) ---

#PREFLIGHT_SUMMARY
ib0,ib1,1b2,SolutionType,SolutionVolume,PumpFlowRate,OzoneSondeResponseTime
0.1,0.04,0.04,1%KIFullBuffer,2.5,214.36,0.34

#RADIOSONDE
Manufacturer,Model,Number
Vaisala,RS92-SGP,H0513477

#INTERFACE_CARD
Manufacturer,Model,Number
Vaisala,RSA921,G14513056

#SAMPLING_METHOD
TypeOzoneFreeAir,CorrectionWettingFlow,SurfaceOzone, LengthBG,WMOTropopausePressure,BurstOzonePressure,GroundEquipment,ProcessingSoftware
activated charcoal filter,0.98,20,30,295,13.099,DigiCORA III,SNDPRO 2.0

#PUMP_SETTINGS
MotorCurrent,HeadPressure,VacuumPressure
79.9,1600,200

#PUMP_CORRECTION
Pressure,Correction
2,1.16,
3,1.124
5,1.087,
10,1.054
20,1.033
30,1.024
50,1.015
100,1.01
200,1.007
300,1.005
500,1.002
1000,1.0

#FLIGHT_SUMMARY
IntegratedO3,CorrectionCode,SondeTotalO3,NormalizationFactor,BackgroundCorrection,SampleTemeratureType
318.5,6,404.3,-0.984,Pressure_ib2,Pump_Intern

#OZONE_REFERENCE
Name,Model,Number,Version,TotalO3,WLCode,ObsType,UTC_Mean
Brewer,Single,55,1,398,9,0,19.6

#PROFILE
Duration,Pressure,O3PartialPressure,Temperature,WindSpeed,WindDirection,LevelCode,GPHeight,RelativeHumidity,SampleTemperature,SondeCurrent,PumpMotorCurrent,PumpMotorVoltage,Latitude,Longitude,Height
0,924.59,1.973,-23.1,2.6,360,2,766,76,36.6,0.566924
2,924.13,1.973,-23.2,2.2,350,0,770,72,36.6,0.566904
4,923.46,1.992,-23.4,2.6,349,0,774,72,36.6,0.572229
6,922.56,1.992,-23.5,3,350,0,783,73,36.6,0.572192
8,921.21,1.982,-23.6,3.3,350,0,793,74,36.6,0.569459
10,919.86,1.981,-23.7,3.6,350,0,803,75,36.6,0.569403
...
7510,20.11,13.167,-61.2,13.2,64,0,26282,1,11.7,3.89304
7512,20.09,13.205,-61.1,13,64,0,26287,1,11.7,3.90423
7514,20.07,13.186,-61.1,12.8,64,0,26293,1,11.7,3.89851
7516,20.05,13.176,-61,12.6,65,0,26300,1,11.6,3.89697
7518,20.02,13.175,-60.9,12.4,65,0,26307,1,11.6,3.89685
7520,20,13.099,-61,12.2,65,2,26314,1,11.6,3.87421


#PROFILE_UNCERTAINTY
Duration,Pressure,O3PartialPressure,Temperature,WindSpeed,WindDirection,LevelCode,GPHeight,RelativeHumidity,SampleTemperature,SondeCurrent,PumpMotorCurrent,PumpMotorVoltage,Latitude,Longitude,Height

!!! md-alert ""
    **Note:** At present this is a placeholder for estimated uncertainty for each of the measured profile parameters listed here. Guidelines for this will be released probably first in 2014/2015

```

## A.4  Exemple pour la catégorie TotalOzoneObs 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie TotalOzoneObs data submission. Vous pouvez aussi consulter un exemple en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/TotalOzoneObs.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/TotalOzoneObs.csv).

```
*Example of a single day of observations
*One observation day per file
#CONTENT
Class,Category,Level,Form
WOUDC,TotalOzoneObs,1.0,1
#DATA_GENERATION
Date,Agency,Version,ScientificAuthority
1999-05-07,MSC,1.0,J. Kerr
#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,065,Toronto,CAN,71638
#INSTRUMENT
Name,Model,Number
Brewer,MKII,014
#LOCATION
Latitude,Longitude,Height
43.78,-79.47,198
#TIMESTAMP
UTCOffset,Date,Time
+00:00:00,1999-04-10
#OBSERVATIONS
Time,WLcode,ObsCode,Airmass,ColumnO3,StdDevO3,ColumnSO2,StdDevSO2
10:03:01,9,DS,2.39,350.0,2.0,1.13,0.02
10:25:11,9,DS,2.35,351.2,1.9,0.98,0.02
11:13:01,9,DS,2.21,348.4,1.5
…
17:03:23,9,DS,2.89,350.0,2.0,1.13,0.08
17:25:01,9,DS,2.99,350.8,2.2
17:50:01,9,DS,3.09,355.0,2.3
18:09:51,9,DS,3.29,351.4,2.7,2.13,0.6
#DAILY_SUMMARY
WLcode,ObsCode,nObs,MeanO3,StdDevO3
9,DS,9,350.0,2.0
```

## A.5  Exemple pour la catégorie TotalOzone 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie TotalOzone. Vous pouvez aussi consulter un exemple en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/TotalOzone-Brewer.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/TotalOzone-Brewer.csv).

```
*Example of daily ozone values
*One month per file
#CONTENT
Class,Category,Level,Form
WOUDC,TotalOzone,1.0,1
#DATA_GENERATION
Date,Agency,Version,ScientificAuthority
1999-06-07,MSC,1.0,J. Kerr
#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,065,Toronto,CAN,71638
#INSTRUMENT
Name,Model,Number
Brewer,MKII,014
#LOCATION
Latitude,Longitude,Height
43.78,-79.47,198
* NOTE: the date defaults to the first day of the month.
#TIMESTAMP
UTCOffset,Date,Time
+00:00:00,1999-04-01
* Precipitation on April 2, 28, 29
#DAILY
Date,WLCode,ObsCode,ColumnO3,StdDevO3,UTC_Begin,UTC_End,UTC_Mean,nObs,mMu,ColumnS
O2
1999-04-01,9,0,350.0,5.0,,,13.75,27,1.28,5.13
1999-04-03,9,0,341.1,4.1,,,12.75,19,1.12
1999-04-04,9,0,353.8,3.0,,,13.01,35,1.2
…
1999-04-26,9,0,355.0,5.0,,,13.05,37,1.21,3.33
1999-04-27,9,0,355.0,5.0,,,12.66,37,1.19
1999-04-30,9,0,369.0,5.0,,,13.7,25,1.3
#TIMESTAMP
UTCOffset,Date,Time
+00:00:00,1999-04-30
* NOTE: the date of the MONTHLY table defaults to the first day of the month.
#MONTHLY
Date,ColumnO3,StdDevO3,Npts
1999-04-01,350.0,5.0,13
```

## A.6  Exemple pour la catégorie UmkehrN14 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie UmkehrN14. Vous pouvez aussi consulter des exemples en ligne aux adresses suivantes :  [http://woudc.org/archive/Documentation/Examples-extCSV/Umkehr-N_values-Dobson.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Umkehr-N_values-Dobson.csv) (niveau 1.0) et [http://woudc.org/archive/Documentation/Examples-extCSV/Umkehr_UMK92Retrieval-Dobson.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Umkehr_UMK92Retrieval-Dobson.csv) (niveau 2.0).

```
*NOAA-CMDL is the Agency acronym for the National Oceanographic and
*Atmospheric Administration-Climate Monitoring and Diagnostics Laboratory

*One month per file

#CONTENT
Class,Category,Level,Form
WOUDC,UmkehrN14,1.0,1

#DATA_GENERATION
Date,Agency,Version,ScientificAuthority
1996-07-02,NOAA_CMDL,1.0, Gloria Koenig

#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,067,Boulder,USA

#INSTRUMENT
Name,Model,Number
Dobson,Beck,082

#LOCATION
Latitude,Longitude,Height
40.03,-105.25,832

#TIMESTAMP
UTCOffset,Date,Time
-07:00:00,1992-10-07

#N14_VALUES
Date,H,L,WLCode,ObsCode,ColumnO3,N600,N650,N700,N740,N750,N770,N800,N830,N840,N850,N865,N880,N890,N900
1992-10-07,1,1,0,0,268,-1,145,356,572,627,746,913,957,942,916,844,763,705,630
1992-10-07,1,3,0,0,268,467,538,645,768,800,877,44,231,295,343,363,344,316,271
1992-10-07,1,4,0,0,268,208,244,292,254,371,416,504,629,681,734,817,893,920,917
1992-10-07,2,1,0,0,244,-1,145,356,572,627,746,913,957,942,916,844,763,705,630
1992-10-07,2,3,0,0,244,467,538,645,768,800,877,044,231,295,343,363,344,316,271
…
1992-10-28,1,1,0,0,268,-1,145,356,572,627,746,913,957,942,916,844,763,705,630
1992-10-28,1,3,0,0,268,467,538,645,768,800,877,44,231,295,343,363,344,316,271
1992-10-28,1,4,0,0,268,208,244,292,254,371,416,504,629,681,734,817,893,920,917
1992-10-28,2,1,0,0,244,-1,145,356,572,627,746,913,957,942,916,844,763,705,630
1992-10-28,2,3,0,0,244,467,538,645,768,800,877,044,231,295,343,363,344,316,271

#TIMESTAMP
UTCOffset,Date,Time
-07:00:00,1992-10-28

#METEOROLOGY
Temperature,Pressure,Relative Humidity
,1642 
```

## A.7  Exemple pour la catégorie Spectral 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie Spectral. Vous pouvez aussi consulter un exemple en ligne à l’adresse [http://woudc.org/archive/Documentation/Examples-extCSV/Spectral.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Spectral.csv).

```
#CONTENT
Class,Category,Level,Form
WOUDC,Spectral,1.0,1

#DATA_GENERATION
Date,Agency,Version,ScientificAuthority
2009-02-12,JMA,1.0,Head of Ozone Layer Monitoring Office

#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,014,Tsukuba(Tateno),JPN,47646

#INSTRUMENT
Name,Model,Number
Brewer,MKIII,173

#LOCATION
Latitude,Longitude,Height
36.06,140.13,31

* Provisional

* by UV routine; back and forth scan between 290nm and 325nm

#TIMESTAMP
UTCOffset,Date,Time
+09:00:00,2009-01-01,07:00:02

#GLOBAL_SUMMARY
Time,IntACGIH,IntCIE,ZenAngle,MuValue,AzimAngle,Flag,TempC
07:00:02,3.108E-05,1.737E-04,89.10,11.86,119.68,,13.2

#GLOBAL
Wavelength,S-Irradiance,Time
290.0,0.000E+00
290.5,0.000E+00
291.0,0.000E+00
291.5,0.000E+00
292.0,0.000E+00
292.5,0.000E+00
293.0,0.000E+00
293.5,0.000E+00
294.0,0.000E+00
294.5,0.000E+00
295.0,0.000E+00

#TIMESTAMP
UTCOffset,Date,Time
+09:00:00,2009-01-01,07:59:58

#GLOBAL_SUMMARY
Time,IntACGIH,IntCIE,ZenAngle,MuValue,AzimAngle,Flag,TempC
07:59:58,4.376E-04,2.565E-03,79.11,4.86,129.23,,14.0

#GLOBAL
Wavelength,S-Irradiance,Time
290.0,0.000E+00
290.5,0.000E+00
291.0,0.000E+00
291.5,0.000E+00
292.0,0.000E+00
292.5,0.000E+00
293.0,0.000E+00
293.5,0.000E+00
294.0,0.000E+00
294.5,0.000E+00
295.0,0.000E+00

#TIMESTAMP
UTCOffset,Date,Time
+09:00:00,2009-01-01,08:59:31

#GLOBAL_SUMMARY
Time,IntACGIH,IntCIE,ZenAngle,MuValue,AzimAngle,Flag,TempC
08:59:31,1.695E-03,9.518E-03,70.56,2.92,140.33,,14.4

#GLOBAL
Wavelength,S-Irradiance,Time
290.0,0.000E+00
290.5,0.000E+00
291.0,0.000E+00
291.5,0.000E+00
292.0,0.000E+00
292.5,0.000E+00
293.0,0.000E+00
293.5,0.000E+00
294.0,0.000E+00
294.5,0.000E+00
295.0,0.000E+00

#TIMESTAMP
UTCOffset,Date,Time
+09:00:00,2009-01-01,10:00:04

#GLOBAL_SUMMARY
Time,IntACGIH,IntCIE,ZenAngle,MuValue,AzimAngle,Flag,TempC
10:00:04,3.722E-03,1.982E-02,63.87,2.24,153.58,,14.9

#GLOBAL
Wavelength,S-Irradiance,Time
290.0,0.000E+00
290.5,0.000E+00
291.0,0.000E+00
291.5,0.000E+00
292.0,0.000E+00
292.5,0.000E+00
293.0,0.000E+00
293.5,0.000E+00
294.0,0.000E+00
294.5,0.000E+00
```

## A.8  Exemple pour la catégorie Multiband 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie Multiband. Vous pouvez aussi consulter un exemple en ligne à l’adresse  [http://woudc.org/archive/Documentation/Examples-extCSV/Multi-band.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Multi-band.csv).

```
#CONTENT
Class,Category,Level,Form
WOUDC,Multi-band,1.0,1

#DATA_GENERATION
Date,Agency,Version,ScientificAuthority
2006-09-08,USDA_CSU,3.0,James R. Slusser

#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,256,Lauder,NZL

#INSTRUMENT
Name,Model,Number
Yankee,UVMFR-7,231

#LOCATION
Latitude,Longitude,Height
-45.038,169.684,370

#TIMESTAMP
UTCOffset,Date,Time
12:00:00,2006-01-01
* The direct normal, the diffuse horizontal and the total horizontal
* radiation have been corrected for the measured angular response of
* each channel of the detectors.  Diffuse horizontal corrections were
* made assuming an isotropic distribution of sky radiance.

#SIMULTANEOUS
Wavelength,GLS-Irradiance,DFS-Irradiance,DRS-Irradiance,Time,Airmass,SZA
299.96,,,,05:00:00,37.3375,89.96
305.36,,,,05:00:00,37.3375,89.96
311.53,,,,05:00:00,37.3375,89.96
317.63,,,,05:00:00,37.3375,89.96
325.34,,,,05:00:00,37.3375,89.96
332.46,,,,05:00:00,37.3375,89.96
367.92,,,,05:00:00,37.3375,89.96
299.96,,,,05:03:00,33.1052,89.65
305.36,,,,05:03:00,33.1052,89.65
311.53,,,,05:03:00,33.1052,89.65
317.63,,,,05:03:00,33.1052,89.65
325.34,,,,05:03:00,33.1052,89.65
332.46,,,,05:03:00,33.1052,89.65
367.92,,,,05:03:00,33.1052,89.65
299.96,0.000000,0.000000,0.000000,05:06:00,29.2088,89.30
305.36,0.000000,0.000000,0.000000,05:06:00,29.2088,89.30
311.53,0.000199,0.000199,0.000000,05:06:00,29.2088,89.30
317.63,0.000000,0.000000,0.000000,05:06:00,29.2088,89.30
325.34,0.002551,0.002551,0.000000,05:06:00,29.2088,89.30
…
```

## A.9  Exemple pour la catégorie Broadband 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie Broadband. Vous pouvez aussi consulter un exemple en ligne à l’adresse  [http://woudc.org/archive/Documentation/Examples-extCSV/Broad-band.csv](#http://woudc.org/archive/Documentation/Examples-extCSV/Broad-band.csv).

```
* UV dekodavimas ExtCSV formavimas, V 1.018 beta

#CONTENT
Class,Category,Level,Form
WOUDC,Broad-band,1.0,1

#DATA_GENERATION
Date,Agency,Version,ScientificAuthority
2009-02-10,LHMS,1.0,Tomas Zumaras

#INSTRUMENT
Name,Model,Number
UV-Biometer,501A,4399

#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,312,Kaunas,LTU

#LOCATION
Latitude,Longitude,Height
54.53,23.50,76.1

#TIMESTAMP
UTCOffset,Date
+03:25:00,2009-01-01

#GLOBAL
Time,Irradiance
00:00:00,0.0000000
00:05:00,0.0000000
00:10:00,0.0000000
00:15:00,0.0000000
00:20:00,0.0000000
00:25:00,0.0000000
00:30:00,0.0000000
00:35:00,0.0000000
00:40:00,0.0000000
00:45:00,0.0000000
00:50:00,0.0001749
00:55:00,0.0000000
01:00:00,0.0000000
01:05:00,0.0000000
01:10:00,0.0000000
…
```

## A.10  Exemple pour la catégorie Pyranometer 

Vous trouverez ci-dessous un exemple de soumission de données pour la catégorie Pyranometer.

```
* Data file 2 Pyranometer Data (Global)
#CONTENT
Name,Category,Level,Form
WOUDC,Pyranometer,1.0,1

#DATA_GENERATION
Date,Agency,Version,ScientificAuthority
1997-07-02,AES,1.0,Bruce McArthur

#INSTRUMENT
Name,Model,Number
Kipp and Zonen,CM21,920065

#PLATFORM
Type,ID,Name,Country,GAW_ID
STN,338,Regina,CAN,72863

#LOCATION
Latitude,Longitude,Height
50.21,-104.71,592

#TIMESTAMP
UTCOffset,Date,Time
-06:59:08,1997-06-08
* In this example, the pyranometer data are concatenated into one table
*(#GLOBAL), with a single #TIMESTAMP table. The #METEOROLOGY and
*#INSTRUMENT_CONDITIONS_SUMMARY tables are a summary.

#GLOBAL
Time,Irradiance
06:45:00,201
07:00:00,212
07:15:00,243
…
22:00:00,244

#METEOROLOGY_SUMMARY
Time,Temperature,Pressure,RelativeHumidity
07:00:00,15,972
08:00:00,16,973
…

#INSTRUMENT_CONDITIONS_SUMMARY
Time,Temperature
06:45:00,15.8
07:00:00,16.0
…
```

