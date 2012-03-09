-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema portalexamplePort
--

CREATE DATABASE IF NOT EXISTS portalexamplePort;
USE portalexamplePort;

--
-- Definition of table `portalexamplePort`.`categories`
--

DROP TABLE IF EXISTS `portalexamplePort`.`categories`;
CREATE TABLE  `portalexamplePort`.`categories` (
  `catcode` varchar(30) NOT NULL,
  `parentcode` varchar(30) NOT NULL,
  `titles` longtext NOT NULL,
  PRIMARY KEY (`catcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`categories`
--

/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
LOCK TABLES `categories` WRITE;
INSERT INTO `portalexamplePort`.`categories` VALUES  ('anagrafe','moduli','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Citizen registry</property>\n<property key=\"it\">Anagrafe</property>\n</properties>\n\n'),
 ('autocertificazioni','scheda_download','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Self Certification</property>\n<property key=\"it\">Autocertificazioni</property>\n</properties>\n\n'),
 ('delibere','home','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Decisions</property>\n<property key=\"it\">Delibere</property>\n</properties>\n\n'),
 ('delibere_di_consiglio','delibere','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Council decisions</property>\n<property key=\"it\">Delibere di Consiglio</property>\n</properties>\n\n'),
 ('delibere_di_giunta','delibere','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Giunta decisions</property>\n<property key=\"it\">Delibere di Giunta</property>\n</properties>\n\n'),
 ('home','home','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"it\">Generale</property>\n<property key=\"en\">All</property>\n</properties>\n\n'),
 ('moduli','scheda_download','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Documents</property>\n<property key=\"it\">Modulistica</property>\n</properties>\n\n'),
 ('scheda_download','home','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Download</property>\n<property key=\"it\">Scheda Download</property>\n</properties>\n\n'),
 ('tributi','moduli','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Tax</property>\n<property key=\"it\">Tributi</property>\n</properties>\n\n');
UNLOCK TABLES;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`contentmodels`
--

DROP TABLE IF EXISTS `portalexamplePort`.`contentmodels`;
CREATE TABLE  `portalexamplePort`.`contentmodels` (
  `modelid` int(11) NOT NULL,
  `contenttype` varchar(30) NOT NULL,
  `descr` varchar(50) NOT NULL,
  `model` longtext,
  `stylesheet` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`contentmodels`
--

/*!40000 ALTER TABLE `contentmodels` DISABLE KEYS */;
LOCK TABLES `contentmodels` WRITE;
INSERT INTO `portalexamplePort`.`contentmodels` VALUES  (1,'CNG','Complete - default','<h2>$content.Title.text</h2>\n#if ( $content.TextBody.text != \"\" )\n$content.TextBody.getTextBeforeImage(0)\n#if ( $content.Image_1.imagePath(\"2\") != \"\" )\n<a href=\"$content.Image_1.imagePath(\"0\")\"><img src=\"$content.Image_1.imagePath(\"2\")\" alt=\"$content.Image_1.text\" class=\"right\" /></a>\n#end \n$content.TextBody.getTextByRange(0,60)\n#if ( $content.Image_2.imagePath(\"3\") != \"\" )\n<a href=\"$content.Image_2.imagePath(\"0\")\"><img src=\"$content.Image_2.imagePath(\"3\")\" alt=\"$content.Image_2.text\" class=\"left\" /></a>\n#end\n$content.TextBody.getTextAfterImage(60)\n#end\n#if ($content.Documents && $content.Documents.size() > 0)\n<h3 class=\"clear\">$i18n.getLabel(\'ATTACHES\')</h3>\n	<ul>\n		#foreach ($attach in $content.Documents)\n		<li><a href=\"$attach.attachPath\">$attach.text</a></li>\n		#end	\n	</ul>\n#end\n#if ($content.Links && $content.Links.size() > 0)\n<h3 class=\"clear\">$i18n.getLabel(\'LINKS\')</h3>\n	<ul>\n		#foreach ($link in $content.Links)\n		<li><a href=\"$link.destination\">$link.text</a></li>\n		#end	\n	</ul>\n#end',NULL),
 (2,'NEW','Complete - default','<h2>$content.Date.getFormattedDate(\"dd/MM/yyyy\") &mdash; $content.Title.text</h2>\n#if ( $content.TextBody.text != \"\" )\n$content.TextBody.getTextBeforeImage(0)\n#if ( $content.Image_1.imagePath(\"2\") != \"\" )\n<a href=\"$content.Image_1.imagePath(\"0\")\"><img src=\"$content.Image_1.imagePath(\"2\")\" alt=\"$content.Image_1.text\" class=\"right\" /></a>\n#end \n$content.TextBody.getTextAfterImage(0)\n#end\n#if ($content.Documents && $content.Documents.size() > 0)\n<h3 class=\"clear\">$i18n.getLabel(\'ATTACHES\')</h3>\n	<ul>\n		#foreach ($attach in $content.Documents)\n		<li><a href=\"$attach.attachPath\">$attach.text</a></li>\n		#end	\n	</ul>\n#end\n#if ($content.Links && $content.Links.size() > 0)\n<h3 class=\"clear\">$i18n.getLabel(\'LINKS\')</h3>\n	<ul>\n		#foreach ($link in $content.Links)\n		<li><a href=\"$link.destination\">$link.text</a></li>\n		#end	\n	</ul>\n#end',NULL),
 (3,'DLB','Complete - default','<h2>$content.Number.value &mdash; $content.Date.getFormattedDate(\"dd/MM/yyyy\")<br />\n$content.Title.text</h2>\n#if ($content.Abstract.text != \"\")\n$content.Abstract.text\n#end\n#if ($content.Documents && $content.Documents.size() > 0)\n<h3 class=\"clear\">$i18n.getLabel(\'ATTACHES\')</h3>\n	<ul>\n		#foreach ($attach in $content.Documents)\n		<li><a href=\"$attach.attachPath\">$attach.text</a></li>\n		#end	\n	</ul>\n#end',NULL),
 (4,'BND','Complete - default','<h2>$content.Title.text<br />\n$content.StartDate.getFormattedDate(\"dd/MM/yyyy\") &mdash; $content.EndDate.getFormattedDate(\"dd/MM/yyyy\")</h2>\n#if ($content.Abstract.text != \"\")\n$content.Abstract.text\n#end\n#if ($content.Documents && $content.Documents.size() > 0)\n<h3 class=\"clear\">$i18n.getLabel(\'ATTACHES\')</h3>\n	<ul>\n		#foreach ($attach in $content.Documents)\n		<li><a href=\"$attach.attachPath\">$attach.text</a></li>\n		#end	\n	</ul>\n#end',NULL),
 (5,'SDL','Complete - default','<div class=\"scheda_download\">\n<h2><a href=\"$content.File.attachPath\" title=\"$i18n.getLabel(\'DOWNLOAD_THIS\')\">$content.Title.text</a></h2>\n#if($content.categories.size() >= 1)\n#set ($first = \"true\")\n<p><span class=\"important\">$i18n.getLabel(\'CATEGORIES\'):</span>\n#foreach($categ in $content.categories)\n#if ($first == \"false\") | #end\n$categ.title\n#set ($first = \"false\")\n#end\n</p>\n#end\n#if ( $content.LongDescr.text != \"\" )\n$content.LongDescr.getTextBeforeImage(0)\n#if ( $content.Image.imagePath(\"2\") != \"\" )\n<img src=\"$content.Image.imagePath(\"2\")\" alt=\"$content.Image.text\" class=\"left\" />\n#end\n$content.LongDescr.getTextAfterImage(0)\n#end\n#if ($content.Links && $content.Links.size() > 0)\n<h3 class=\"clear\">$i18n.getLabel(\'LINKS\')</h3>\n<ul>#foreach ($link in $content.Links)\n<li><a href=\"$link.destination\">$link.text</a></li>\n#end</ul>\n#end\n</div>','contentmodels/scheda_download.css'),
 (11,'CNG','for List','<h3><a href=\"$content.contentLink\">$content.Title.text</a></h3>\n#if ($content.Abstract.text != \"\")\n<p>$content.Abstract.text</p>\n#end',NULL),
 (12,'CNG','in evidence','<div class=\"inEvidenza\">\n<h2 class=\"title\"><a href=\"$content.contentLink\">$content.Title.text</a></h2>\n#if ($content.Abstract.text != \"\")\n<p>#if ( $content.Image_1.imagePath(\"2\") != \"\" )\n<a href=\"$content.Image_1.imagePath(\"0\")\"><img src=\"$content.Image_1.imagePath(\"2\")\" alt=\"$content.Image_1.text\" class=\"left\" /></a>\n#end \n$content.Abstract.text</p>\n#end\n</div>','contentmodels/generic.css'),
 (13,'CNG','for Mobile - Complete','<h2>$content.Title.text</h2>\n#if ( $content.TextBody.text != \"\" )\n$content.TextBody.text\n#end\n#if ($content.Documents && $content.Documents.size() > 0)\n<h3 class=\"clear\">$i18n.getLabel(\'ATTACHES\')</h3>\n	<ul>\n		#foreach ($attach in $content.Documents)\n		<li><a href=\"$attach.attachPath\">$attach.text</a></li>\n		#end	\n	</ul>\n#end',NULL),
 (14,'CNG','for Mobile - Home','<div class=\"mobileInEvidenza\">\n#if ( $content.Image_1.imagePath(\"1\") != \"\" )\n<img src=\"$content.Image_1.imagePath(\"1\")\" alt=\"$content.Image_1.text\" class=\"left\" />\n#end\n<h2>$content.Title.text</h2>\n#if ($content.TextBody.text != \"\")\n<p>$content.TextBody.text</p>\n#end\n</div>','mobile/contentmodels/generic.css'),
 (21,'NEW','for List','<h3><a href=\"$content.contentLink\">$content.Date.getFormattedDate(\"dd/MM/yyyy\") &mdash; $content.Title.text</a></h3>\n#if ($content.ShortText.text != \"\")\n<p>$content.ShortText.text</p>\n#end',NULL),
 (22,'NEW','for Mobile - for List','<h3><a href=\"mobile_contentview.wp?contentId=$content.id&amp;modelId=23\">$content.Date.getFormattedDate(\"dd/MM/yyyy\") &mdash; $content.Title.text</a></h3>\n#if ($content.ShortText.text != \"\")\n<p>$content.ShortText.text</p>\n#end',NULL),
 (23,'NEW','for Mobile - Complete','<h2>$content.Date.getFormattedDate(\"dd/MM/yyyy\") &mdash; $content.Title.text</h2>\n#if ( $content.TextBody.text != \"\" )\n$content.TextBody.text\n#end\n#if ($content.Documents && $content.Documents.size() > 0)\n<h3 class=\"clear\">$i18n.getLabel(\'ATTACHES\')</h3>\n	<ul>\n		#foreach ($attach in $content.Documents)\n		<li><a href=\"$attach.attachPath\">$attach.text</a></li>\n		#end	\n	</ul>\n#end',NULL),
 (31,'DLB','for List','<h3><a href=\"$content.contentLink\">$content.Number.value &mdash; $content.Date.getFormattedDate(\"dd/MM/yyyy\")</a></h3>\n<p>$content.Title.text</p>',NULL),
 (32,'DLB','for Mobile - for List','<h3><a href=\"mobile_contentview.wp?contentId=$content.id&amp;modelId=3\">$content.Numero.value &mdash; $content.Date.getFormattedDate(\"dd/MM/yyyy\")</a></h3>\n#if ($content.Title.text != \"\")\n<p>$content.Title.text</p>\n#end',NULL),
 (41,'BND','for List','<h3><a href=\"$content.contentLink\">$content.Title.text</a></h3>\n<p>$content.StartDate.getFormattedDate(\"dd/MM/yyyy\") &mdash; $content.EndDate.getFormattedDate(\"dd/MM/yyyy\")</p>',NULL),
 (42,'BND','for Mobile - for List','<h3><a href=\"mobile_contentview.wp?contentId=$content.id&amp;modelId=4\">$content.StartDate.getFormattedDate(\"dd/MM/yyyy\") &mdash; $content.EndDate.getFormattedDate(\"dd/MM/yyyy\") &mdash; $content.Title.text</a></h3>\n',NULL),
 (51,'SDL','for List','<h3><a href=\"$content.contentLink\">$content.Title.text</a></h3>\n$content.ShortDescr.text',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `contentmodels` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`contentrelations`
--

DROP TABLE IF EXISTS `portalexamplePort`.`contentrelations`;
CREATE TABLE  `portalexamplePort`.`contentrelations` (
  `contentid` varchar(16) NOT NULL,
  `refpage` varchar(30) DEFAULT NULL,
  `refcontent` varchar(16) DEFAULT NULL,
  `refresource` varchar(16) DEFAULT NULL,
  `refcategory` varchar(30) DEFAULT NULL,
  `refgroup` varchar(20) DEFAULT NULL,
  KEY `contentrelations_contentid_fkey` (`contentid`),
  KEY `contentrelations_refcategory_fkey` (`refcategory`),
  KEY `contentrelations_refcontent_fkey` (`refcontent`),
  KEY `contentrelations_refpage_fkey` (`refpage`),
  KEY `contentrelations_refresource_fkey` (`refresource`),
  CONSTRAINT `contentrelations_contentid_fkey` FOREIGN KEY (`contentid`) REFERENCES `contents` (`contentid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contentrelations_refcategory_fkey` FOREIGN KEY (`refcategory`) REFERENCES `categories` (`catcode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contentrelations_refcontent_fkey` FOREIGN KEY (`refcontent`) REFERENCES `contents` (`contentid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contentrelations_refpage_fkey` FOREIGN KEY (`refpage`) REFERENCES `pages` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `contentrelations_refresource_fkey` FOREIGN KEY (`refresource`) REFERENCES `resources` (`resid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`contentrelations`
--

/*!40000 ALTER TABLE `contentrelations` DISABLE KEYS */;
LOCK TABLES `contentrelations` WRITE;
INSERT INTO `portalexamplePort`.`contentrelations` VALUES  ('NEW3',NULL,NULL,NULL,NULL,'free'),
 ('NEW3',NULL,NULL,'26',NULL,NULL),
 ('NEW3',NULL,NULL,'26',NULL,NULL),
 ('NEW177',NULL,NULL,NULL,NULL,'free'),
 ('NEW177',NULL,'CNG51',NULL,NULL,NULL),
 ('NEW23',NULL,NULL,NULL,NULL,'free'),
 ('NEW23',NULL,NULL,'24',NULL,NULL),
 ('NEW23',NULL,NULL,'24',NULL,NULL),
 ('NEW23',NULL,NULL,'25',NULL,NULL),
 ('NEW23',NULL,NULL,'25',NULL,NULL),
 ('NEW27',NULL,NULL,NULL,NULL,'free'),
 ('DLB4',NULL,NULL,NULL,'delibere',NULL),
 ('DLB4',NULL,NULL,NULL,'delibere_di_giunta',NULL),
 ('DLB4',NULL,NULL,NULL,NULL,'free'),
 ('DLB4',NULL,NULL,'31',NULL,NULL),
 ('DLB4',NULL,NULL,'31',NULL,NULL),
 ('DLB30',NULL,NULL,NULL,'delibere',NULL),
 ('DLB30',NULL,NULL,NULL,'delibere_di_consiglio',NULL),
 ('DLB30',NULL,NULL,NULL,NULL,'free'),
 ('DLB30',NULL,NULL,'34',NULL,NULL),
 ('DLB30',NULL,NULL,'34',NULL,NULL),
 ('DLB32',NULL,NULL,NULL,'scheda_download',NULL),
 ('DLB32',NULL,NULL,NULL,'delibere',NULL),
 ('DLB32',NULL,NULL,NULL,'moduli',NULL),
 ('DLB32',NULL,NULL,NULL,'delibere_di_giunta',NULL),
 ('DLB32',NULL,NULL,NULL,NULL,'free'),
 ('DLB32',NULL,NULL,'33',NULL,NULL),
 ('DLB32',NULL,NULL,'33',NULL,NULL),
 ('DLB36',NULL,NULL,NULL,'delibere',NULL),
 ('DLB36',NULL,NULL,NULL,'delibere_di_consiglio',NULL),
 ('DLB36',NULL,NULL,NULL,NULL,'free'),
 ('DLB36',NULL,NULL,'35',NULL,NULL),
 ('DLB36',NULL,NULL,'35',NULL,NULL),
 ('CNG20',NULL,NULL,NULL,NULL,'free'),
 ('CNG20',NULL,NULL,'21',NULL,NULL),
 ('CNG20',NULL,NULL,'21',NULL,NULL),
 ('CNG20',NULL,NULL,'22',NULL,NULL),
 ('CNG20',NULL,NULL,'22',NULL,NULL),
 ('CNG16',NULL,NULL,NULL,NULL,'free'),
 ('CNG15',NULL,NULL,NULL,NULL,'free'),
 ('CNG15','old_town_traffic_pass_int',NULL,NULL,NULL,NULL),
 ('CNG15','old_town_traffic_pass_int',NULL,NULL,NULL,NULL),
 ('CNG19',NULL,NULL,NULL,NULL,'free'),
 ('CNG54',NULL,NULL,NULL,NULL,'free'),
 ('CNG55',NULL,NULL,NULL,NULL,'free'),
 ('CNG53',NULL,NULL,NULL,NULL,'free'),
 ('CNG29',NULL,NULL,NULL,NULL,'free'),
 ('CNG28',NULL,NULL,NULL,NULL,'free'),
 ('CNG17',NULL,NULL,NULL,NULL,'free'),
 ('CNG49',NULL,NULL,NULL,NULL,'free'),
 ('CNG14',NULL,NULL,NULL,NULL,'free'),
 ('CNG11',NULL,NULL,NULL,NULL,'free'),
 ('CNG12',NULL,NULL,NULL,NULL,'free'),
 ('CNG13',NULL,NULL,NULL,NULL,'free'),
 ('CNG2',NULL,NULL,NULL,NULL,'free'),
 ('CNG2',NULL,NULL,'10',NULL,NULL),
 ('CNG2',NULL,NULL,'10',NULL,NULL),
 ('CNG51',NULL,NULL,NULL,NULL,'free'),
 ('CNG51','mobile_home',NULL,NULL,NULL,NULL),
 ('CNG51','mobile_home',NULL,NULL,NULL,NULL),
 ('CNG51',NULL,NULL,'143',NULL,NULL),
 ('CNG146',NULL,NULL,NULL,NULL,'free'),
 ('CNG256',NULL,NULL,NULL,NULL,'free'),
 ('CNG18',NULL,NULL,NULL,NULL,'free'),
 ('CNG173',NULL,NULL,NULL,NULL,'free'),
 ('CNG173',NULL,NULL,'174',NULL,NULL),
 ('BND39',NULL,NULL,NULL,NULL,'free'),
 ('BND39',NULL,NULL,'38',NULL,NULL),
 ('BND39',NULL,NULL,'38',NULL,NULL),
 ('BND48',NULL,NULL,NULL,NULL,'free'),
 ('BND48',NULL,NULL,'47',NULL,NULL),
 ('BND48',NULL,NULL,'47',NULL,NULL),
 ('BND5',NULL,NULL,NULL,NULL,'free'),
 ('BND5',NULL,NULL,'37',NULL,NULL),
 ('BND5',NULL,NULL,'37',NULL,NULL),
 ('SDL46',NULL,NULL,NULL,'scheda_download',NULL),
 ('SDL46',NULL,NULL,NULL,'tributi',NULL),
 ('SDL46',NULL,NULL,NULL,'moduli',NULL),
 ('SDL46',NULL,NULL,NULL,NULL,'free'),
 ('SDL46',NULL,NULL,'45',NULL,NULL),
 ('SDL46',NULL,NULL,'45',NULL,NULL),
 ('SDL7',NULL,NULL,NULL,'scheda_download',NULL),
 ('SDL7',NULL,NULL,NULL,'autocertificazioni',NULL),
 ('SDL7',NULL,NULL,NULL,NULL,'free'),
 ('SDL7',NULL,NULL,'40',NULL,NULL),
 ('SDL7',NULL,NULL,'40',NULL,NULL),
 ('SDL44',NULL,NULL,NULL,'scheda_download',NULL),
 ('SDL44',NULL,NULL,NULL,'autocertificazioni',NULL),
 ('SDL44',NULL,NULL,NULL,NULL,'free'),
 ('SDL44',NULL,NULL,'43',NULL,NULL),
 ('SDL44',NULL,NULL,'43',NULL,NULL),
 ('SDL42',NULL,NULL,NULL,'scheda_download',NULL),
 ('SDL42',NULL,NULL,NULL,'anagrafe',NULL),
 ('SDL42',NULL,NULL,NULL,'moduli',NULL),
 ('SDL42',NULL,NULL,NULL,NULL,'free'),
 ('SDL42',NULL,NULL,'41',NULL,NULL),
 ('SDL42',NULL,NULL,'41',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `contentrelations` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`contents`
--

DROP TABLE IF EXISTS `portalexamplePort`.`contents`;
CREATE TABLE  `portalexamplePort`.`contents` (
  `contentid` varchar(16) NOT NULL,
  `contenttype` varchar(30) NOT NULL,
  `descr` varchar(260) NOT NULL,
  `status` varchar(12) NOT NULL,
  `workxml` longtext NOT NULL,
  `created` varchar(20) DEFAULT NULL,
  `lastmodified` varchar(20) DEFAULT NULL,
  `onlinexml` longtext,
  `maingroup` varchar(20) NOT NULL,
  `currentversion` varchar(7) NOT NULL,
  `lasteditor` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`contents`
--

/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
LOCK TABLES `contents` WRITE;
INSERT INTO `portalexamplePort`.`contents` VALUES  ('BND39','BND','Bando Servizio Civile','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"BND39\" typecode=\"BND\" typedescr=\"Bando\"><descr>Bando Servizio Civile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Bando di gara per la partecipazione al Servizio Civile</text><text lang=\"en\">Announcement for participation in Civil Service</text></attribute><attribute name=\"StartDate\" attributetype=\"Date\"><date>20110201</date></attribute><attribute name=\"EndDate\" attributetype=\"Date\"><date>20111130</date></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Bando di gara&nbsp;per la selezione di 10 volontari da impiegare in progetti di servizio civile nel Comune di Villamarina.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Announcement for the selection of 10 volunteers for civil service projects.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"38\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"38\" lang=\"en\" /><text lang=\"it\">Scarica il bando</text><text lang=\"en\">Civil Service Announcement</text></attribute></list></attributes><status>READY</status><version>6.0</version></content>\n','20090722125552','20101120102622','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"BND39\" typecode=\"BND\" typedescr=\"Bando\"><descr>Bando Servizio Civile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Bando di gara per la partecipazione al Servizio Civile</text><text lang=\"en\">Announcement for participation in Civil Service</text></attribute><attribute name=\"StartDate\" attributetype=\"Date\"><date>20110201</date></attribute><attribute name=\"EndDate\" attributetype=\"Date\"><date>20111130</date></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Bando di gara&nbsp;per la selezione di 10 volontari da impiegare in progetti di servizio civile nel Comune di Villamarina.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Announcement for the selection of 10 volunteers for civil service projects.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"38\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"38\" lang=\"en\" /><text lang=\"it\">Scarica il bando</text><text lang=\"en\">Civil Service Announcement</text></attribute></list></attributes><status>READY</status><version>6.0</version></content>\n','free','6.0','admin'),
 ('BND48','BND','Bando fornitura cancelleria','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"BND48\" typecode=\"BND\" typedescr=\"Bando\"><descr>Bando fornitura cancelleria</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Bando di gara per affidamento fornitura di cancelleria e accessori</text><text lang=\"en\">Announcement for supply of stationery and accessories</text></attribute><attribute name=\"StartDate\" attributetype=\"Date\"><date>20110228</date></attribute><attribute name=\"EndDate\" attributetype=\"Date\"><date>20111027</date></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Affidamento della fornitura di cancelleria e accessori per stampanti, fotocopiatori e fax ad uso degli uffici e servizi comunali.</p>\n<p>Appalto n. 4 anno 2009 - Procedura Aperta</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Announcements for the supply of stationery and accessories for printers, copiers and fax machines to use in Villamarina offices and services.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"47\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"47\" lang=\"en\" /><text lang=\"it\">Scarica il bando</text><text lang=\"en\">Announcements for stationery supply</text></attribute></list></attributes><status>READY</status><version>3.0</version></content>\n','20090722163604','20101118105941','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"BND48\" typecode=\"BND\" typedescr=\"Bando\"><descr>Bando fornitura cancelleria</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Bando di gara per affidamento fornitura di cancelleria e accessori</text><text lang=\"en\">Announcement for supply of stationery and accessories</text></attribute><attribute name=\"StartDate\" attributetype=\"Date\"><date>20110228</date></attribute><attribute name=\"EndDate\" attributetype=\"Date\"><date>20111027</date></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Affidamento della fornitura di cancelleria e accessori per stampanti, fotocopiatori e fax ad uso degli uffici e servizi comunali.</p>\n<p>Appalto n. 4 anno 2009 - Procedura Aperta</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Announcements for the supply of stationery and accessories for printers, copiers and fax machines to use in Villamarina offices and services.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"47\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"47\" lang=\"en\" /><text lang=\"it\">Scarica il bando</text><text lang=\"en\">Announcements for stationery supply</text></attribute></list></attributes><status>READY</status><version>3.0</version></content>\n','free','3.0','admin'),
 ('BND5','BND','Bando Lavori Manutenzione Istituto Nautico','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"BND5\" typecode=\"BND\" typedescr=\"Bando\"><descr>Bando Lavori Manutenzione Istituto Nautico</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Bando di gara per l\'esecuzione dei Lavori per la manutenzione dell\'Istituto Nautico</text><text lang=\"en\">Announcement for special maintenance Nautical Institute.</text></attribute><attribute name=\"StartDate\" attributetype=\"Date\"><date>20110303</date></attribute><attribute name=\"EndDate\" attributetype=\"Date\"><date>20111114</date></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Bando di gara per l\'esecuzione dei &quot;Lavori per la manutenzione straordinaria dell\'Istituto Nautico, per la realizzazione di laboratorio informatico&quot;.</p>\n<p>Appalto n. 3 anno 2009 - Procedura Aperta</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Announcement for special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"37\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"37\" lang=\"en\" /><text lang=\"it\">Bando</text><text lang=\"en\">Announcement for maintenance Nautical Institute</text></attribute></list></attributes><status>READY</status><version>3.0</version></content>\n','20090219165221','20101118110039','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"BND5\" typecode=\"BND\" typedescr=\"Bando\"><descr>Bando Lavori Manutenzione Istituto Nautico</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Bando di gara per l\'esecuzione dei Lavori per la manutenzione dell\'Istituto Nautico</text><text lang=\"en\">Announcement for special maintenance Nautical Institute.</text></attribute><attribute name=\"StartDate\" attributetype=\"Date\"><date>20110303</date></attribute><attribute name=\"EndDate\" attributetype=\"Date\"><date>20111114</date></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Bando di gara per l\'esecuzione dei &quot;Lavori per la manutenzione straordinaria dell\'Istituto Nautico, per la realizzazione di laboratorio informatico&quot;.</p>\n<p>Appalto n. 3 anno 2009 - Procedura Aperta</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Announcement for special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"37\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"37\" lang=\"en\" /><text lang=\"it\">Bando</text><text lang=\"en\">Announcement for maintenance Nautical Institute</text></attribute></list></attributes><status>READY</status><version>3.0</version></content>\n','free','3.0','admin'),
 ('CNG11','CNG','Intro Bandi','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG11\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Bandi</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Archivio Bandi</text><text lang=\"en\">Announcements Archive</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">In questa sezione sono pubblicati i bandi, ordinati in base alla data di scadenza.</text><text lang=\"en\">In this section are available Announcements of Villamarina Municipality, sorted by date.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione sono pubblicati i bandi del Comune di Villamarina, ordinati in base alla data di scadenza.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>In this section are available<strong> Announcements</strong> of Villamarina Municipality, sorted by expiry date.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','20090703112842','20100104125203','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG11\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Bandi</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Archivio Bandi</text><text lang=\"en\">Announcements Archive</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">In questa sezione sono pubblicati i bandi, ordinati in base alla data di scadenza.</text><text lang=\"en\">In this section are available Announcements of Villamarina Municipality, sorted by date.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione sono pubblicati i bandi del Comune di Villamarina, ordinati in base alla data di scadenza.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>In this section are available<strong> Announcements</strong> of Villamarina Municipality, sorted by expiry date.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','free','1.0','admin'),
 ('CNG12','CNG','Intro Notizie','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG12\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Notizie</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Archivio Notizie</text><text lang=\"en\">News Archive</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">In questa sezione sono pubblicate le notizie sul Comune di Villamarina, ordinate in base alla data di pubblicazione.</text><text lang=\"en\">In this section are available News about Villamarina Municipality, sorted by publication date.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione&nbsp; sono pubblicate le notizie del <strong>Comune di Villamarina</strong>, ordinate in base alla data di pubblicazione.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>In this section are&nbsp;available <strong>News</strong> about Villamarina Municipality, sorted by publication date.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','20090703113055','20100104125229','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG12\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Notizie</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Archivio Notizie</text><text lang=\"en\">News Archive</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">In questa sezione sono pubblicate le notizie sul Comune di Villamarina, ordinate in base alla data di pubblicazione.</text><text lang=\"en\">In this section are available News about Villamarina Municipality, sorted by publication date.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione&nbsp; sono pubblicate le notizie del <strong>Comune di Villamarina</strong>, ordinate in base alla data di pubblicazione.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>In this section are&nbsp;available <strong>News</strong> about Villamarina Municipality, sorted by publication date.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','free','1.0','admin'),
 ('CNG13','CNG','Intro Delibere','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG13\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Delibere</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Archivio Delibere</text><text lang=\"en\">Decisions Archive</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">In questa sezione sono pubblicate le delibere di Giunta e di Consiglio, ordinate in base alla data di pubblicazione.</text><text lang=\"en\">In this section are available the Council decisions, sorted by publication date.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione sono pubblicate le delibere di Giunta e di Consiglio, ordinate in base alla data di pubblicazione.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>In this section are available the <strong>Council decisions</strong>, sorted by publication date.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','20090703113229','20100104125252','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG13\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Delibere</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Archivio Delibere</text><text lang=\"en\">Decisions Archive</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">In questa sezione sono pubblicate le delibere di Giunta e di Consiglio, ordinate in base alla data di pubblicazione.</text><text lang=\"en\">In this section are available the Council decisions, sorted by publication date.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione sono pubblicate le delibere di Giunta e di Consiglio, ordinate in base alla data di pubblicazione.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>In this section are available the <strong>Council decisions</strong>, sorted by publication date.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','free','1.0','admin'),
 ('CNG14','CNG','Intro Download','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG14\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Download</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Archivio Modulistica</text><text lang=\"en\">Documents Archive</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">In questa sono disponibili per il download i moduli predisposti per i diversi aspetti del rapporto tra il Cittadino ed il Comune.</text><text lang=\"en\">In this section are available for download the documents provided for the relationship between Citizens and Municipality.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sono disponibili per il download i moduli predisposti per i diversi aspetti del rapporto tra il Cittadino ed il Comune.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>In this section are available for download the documents provided for the relationship between Citizens and Municipality.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','20090703113633','20100104125122','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG14\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Download</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Archivio Modulistica</text><text lang=\"en\">Documents Archive</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">In questa sono disponibili per il download i moduli predisposti per i diversi aspetti del rapporto tra il Cittadino ed il Comune.</text><text lang=\"en\">In this section are available for download the documents provided for the relationship between Citizens and Municipality.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sono disponibili per il download i moduli predisposti per i diversi aspetti del rapporto tra il Cittadino ed il Comune.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>In this section are available for download the documents provided for the relationship between Citizens and Municipality.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','free','1.0','admin'),
 ('CNG146','CNG','ePartecipation','DRAFT','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG146\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>ePartecipation</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">ePartecipation</text><text lang=\"en\">ePartecipation</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Il paradigma del Web 2.0 introduce le basi per una nuova modalità di partecipazione alla vita pubblica e di collaborazione tra gli utenti del web.&#xD;\n&#xD;\nGli strumenti di e-Participation e e-Collaboration diventano il mezzo attraverso cui rafforzare il grado di coinvolgimento dei cittadini e di interazione tra gli utenti anche nelle fasi che concorrono a determinare i processi decisionali della vita sociale.</text><text lang=\"en\">Participation has become a highly political issue over the last few years, and that eParticipation is seen as a major factor in this development.&#xD;\n&#xD;\neParticipation is about reconnecting ordinary people with politics and policy-making and making the decision-making processes easier to understand and follow through the use of new Information and Communication Technologies (ICTs).</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Il paradigma del Web 2.0 introduce le basi per una nuova modalit&agrave; di partecipazione alla vita pubblica e di collaborazione tra gli utenti del web.</p>\n<p>Gli strumenti di e-Participation e e-Collaboration diventano il mezzo attraverso cui rafforzare il grado di coinvolgimento dei cittadini e di interazione tra gli utenti anche nelle fasi che concorrono a determinare i processi decisionali della vita sociale.</p>\n<p>Il portale implementa il paradigma di partecipazione e collaborazione alla conoscenza e alla condivisione delle informazioni attraverso strumenti fortemente interattivi e accessibili. La piattaforma jAPS&nbsp; consente inoltre di erogare i servizi secondo una logica multicanale e multi-dispositivo e facilitare l&rsquo;accesso ai dati e alle informazioni.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Participation has become a highly political issue over the last few years, and that eParticipation is seen as a major factor in this development.</p>\n<p>eParticipation is about reconnecting ordinary people with politics and policy-making and making the decision-making processes easier to  understand and follow through the use of new Information and Communication Technologies (ICTs).</p>\n<p><br />\nThe portal implements the paradigm of participation and collaboration to knowledge and information sharing through highly interactive and accessible services.</p>\n<p>&nbsp;</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status><version>3.0</version></content>\n','20110119121846','20110128102040','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG146\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>ePartecipation</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">ePartecipation</text><text lang=\"en\">ePartecipation</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Il paradigma del Web 2.0 introduce le basi per una nuova modalità di partecipazione alla vita pubblica e di collaborazione tra gli utenti del web.&#xD;\n&#xD;\nGli strumenti di e-Participation e e-Collaboration diventano il mezzo attraverso cui rafforzare il grado di coinvolgimento dei cittadini e di interazione tra gli utenti anche nelle fasi che concorrono a determinare i processi decisionali della vita sociale.</text><text lang=\"en\">Participation has become a highly political issue over the last few years, and that eParticipation is seen as a major factor in this development.&#xD;\n&#xD;\neParticipation is about reconnecting ordinary people with politics and policy-making and making the decision-making processes easier to understand and follow through the use of new Information and Communication Technologies (ICTs).</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Il paradigma del Web 2.0 introduce le basi per una nuova modalit&agrave; di partecipazione alla vita pubblica e di collaborazione tra gli utenti del web.</p>\n<p>Gli strumenti di e-Participation e e-Collaboration diventano il mezzo attraverso cui rafforzare il grado di coinvolgimento dei cittadini e di interazione tra gli utenti anche nelle fasi che concorrono a determinare i processi decisionali della vita sociale.</p>\n<p>Il portale implementa il paradigma di partecipazione e collaborazione alla conoscenza e alla condivisione delle informazioni attraverso strumenti fortemente interattivi e accessibili. La piattaforma jAPS&nbsp; consente inoltre di erogare i servizi secondo una logica multicanale e multi-dispositivo e facilitare l&rsquo;accesso ai dati e alle informazioni.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Participation has become a highly political issue over the last few years, and that eParticipation is seen as a major factor in this development.</p>\n<p>eParticipation is about reconnecting ordinary people with politics and policy-making and making the decision-making processes easier to  understand and follow through the use of new Information and Communication Technologies (ICTs).</p>\n<p><br />\nThe portal implements the paradigm of participation and collaboration to knowledge and information sharing through highly interactive and accessible services.</p>\n<p>&nbsp;</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status><version>3.0</version></content>\n','free','3.0','admin'),
 ('CNG15','CNG','Gestione Card','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG15\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Gestione Card</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Esempio Servizio Applicativo</text><text lang=\"en\">Application Service Example</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi jAPS&quot;) per la gestione dei &quot;<strong>Pass ZTL</strong>&quot;.</p>\n<p>In front-end vengono presentate le funzioni di erogazione lista per i PASS attraverso l\'\'utilizzo di un custom tag (CardListTag) e il paginatore di sistema. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>\n<p>Il servizio &egrave; fruibile anche attraverso l\'utilizzo della Showlet &quot;Internal Servlet&quot;, <a href=\"#!P;old_town_traffic_pass_int!#\">accedi al servizio</a>.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>This is a simple example of a service application (written under the &quot;jAPS Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot;.</p>\n<p>The service is available through the use of &quot;<a href=\"#!P;old_town_traffic_pass_int!#\">Internal Servlet</a>&quot; Showlet.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>4.0</version></content>\n','20090708175822','20101120142520','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG15\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Gestione Card</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Esempio Servizio Applicativo</text><text lang=\"en\">Application Service Example</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi jAPS&quot;) per la gestione dei &quot;<strong>Pass ZTL</strong>&quot;.</p>\n<p>In front-end vengono presentate le funzioni di erogazione lista per i PASS attraverso l\'\'utilizzo di un custom tag (CardListTag) e il paginatore di sistema. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>\n<p>Il servizio &egrave; fruibile anche attraverso l\'utilizzo della Showlet &quot;Internal Servlet&quot;, <a href=\"#!P;old_town_traffic_pass_int!#\">accedi al servizio</a>.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>This is a simple example of a service application (written under the &quot;jAPS Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot;.</p>\n<p>The service is available through the use of &quot;<a href=\"#!P;old_town_traffic_pass_int!#\">Internal Servlet</a>&quot; Showlet.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>4.0</version></content>\n','free','4.0','admin'),
 ('CNG16','CNG','Gestione Card Internal Servlet','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG16\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Gestione Card Internal Servlet</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Internal Servlet</text><text lang=\"en\">Internal Servlet</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi jAPS&quot;) per la gestione dei &quot;Pass ZTL&quot; con l\'utilizzo della Showlet &quot;Internal Servlet&quot;..</p>\n<p>Tramite la showlet Internal Servlet &egrave; possibile utilizzare il motore del servizio utilizzato per il back-office (le operazioni CRUD realizzate tramite le Action CardAction e CardFinderAction) integrando delle jsp apposite.</p>\n<p>In questo esempio, nel front-end vengono presentate le funzioni di ricerca PASS e visione dati singolo PASS. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>This is a simple example of a service application (written under the &quot;jAPS Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot; with the use of &quot;Internal Servlet&quot; Showlet.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>3.0</version></content>\n','20090708180436','20101118141922','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG16\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Gestione Card Internal Servlet</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Internal Servlet</text><text lang=\"en\">Internal Servlet</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi jAPS&quot;) per la gestione dei &quot;Pass ZTL&quot; con l\'utilizzo della Showlet &quot;Internal Servlet&quot;..</p>\n<p>Tramite la showlet Internal Servlet &egrave; possibile utilizzare il motore del servizio utilizzato per il back-office (le operazioni CRUD realizzate tramite le Action CardAction e CardFinderAction) integrando delle jsp apposite.</p>\n<p>In questo esempio, nel front-end vengono presentate le funzioni di ricerca PASS e visione dati singolo PASS. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>This is a simple example of a service application (written under the &quot;jAPS Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot; with the use of &quot;Internal Servlet&quot; Showlet.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>3.0</version></content>\n','free','3.0','admin'),
 ('CNG17','CNG','Il Sindaco','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG17\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Il Sindaco</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Sindaco</text><text lang=\"en\">Mayor</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Il Sindaco è eletto direttamente dai cittadini ed è membro del Consiglio Comunale. È capo dell’amministrazione, ha la rappresentanza legale dell’ente ed è, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</text><text lang=\"en\">Mayor is a modern title used in many countries for the highest ranking officer in a municipal government.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Il <strong>Sindaco</strong> &egrave; eletto direttamente dai cittadini ed &egrave; membro del <strong>Consiglio Comunale</strong>. &Egrave; capo dell&rsquo;amministrazione, ha la rappresentanza legale dell&rsquo;ente ed &egrave;, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</p>\n<p>Nomina gli <strong>Assessori</strong>, convoca e presiede la <strong>Giunta comunale</strong>, assicurandone unit&agrave; di indirizzo; sovrintende al funzionamento degli uffici e dei servizi.</p>\n<p>Al Sindaco competono la nomina del segretario generale, del direttore generale e dei direttori di settore.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p><strong>Mayor</strong> is a modern title used in many countries for the highest ranking officer in a municipal government.</p>\n<p>The mayor is an elected politician who serves as chief executive officer and/or ceremonial official of Villamarina municipalities. </p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','20090721112111','20100104115812','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG17\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Il Sindaco</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Sindaco</text><text lang=\"en\">Mayor</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Il Sindaco è eletto direttamente dai cittadini ed è membro del Consiglio Comunale. È capo dell’amministrazione, ha la rappresentanza legale dell’ente ed è, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</text><text lang=\"en\">Mayor is a modern title used in many countries for the highest ranking officer in a municipal government.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Il <strong>Sindaco</strong> &egrave; eletto direttamente dai cittadini ed &egrave; membro del <strong>Consiglio Comunale</strong>. &Egrave; capo dell&rsquo;amministrazione, ha la rappresentanza legale dell&rsquo;ente ed &egrave;, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</p>\n<p>Nomina gli <strong>Assessori</strong>, convoca e presiede la <strong>Giunta comunale</strong>, assicurandone unit&agrave; di indirizzo; sovrintende al funzionamento degli uffici e dei servizi.</p>\n<p>Al Sindaco competono la nomina del segretario generale, del direttore generale e dei direttori di settore.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p><strong>Mayor</strong> is a modern title used in many countries for the highest ranking officer in a municipal government.</p>\n<p>The mayor is an elected politician who serves as chief executive officer and/or ceremonial official of Villamarina municipalities. </p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','free','1.0','admin'),
 ('CNG173','CNG','Accessibilità','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG173\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Accessibilità</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Accessibilità</text><text lang=\"en\">Web Accessibility</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">eAccessibility indica la capacità di sistemi, servizi e applicazioni ICT di essere accessibili in maniera semplice da utenti con disabilità.&#xD;\n&#xD;\nIn particolare, per accessibilità web si indica la capacità di un sito web di essere acceduto efficacemente in termini di navigazione, fruizione dei contenuti e dei servizi da tutti gli utenti senza nessuna esclusione.&#xD;\nA tali linee guida, ma soprattutto al principio democratico dell\'eParticipation e eAccessibility, si è ispirato il portale.</text><text lang=\"en\">eAccessibility is the ease use by people with disabilities of information and communication technologies.&#xD;\n&#xD;\nMore specifically, Web accessibility means that people with disabilities can perceive, understand, navigate, and interact with the Web, and that they can contribute to the Web. Web accessibility also benefits others, including older people with changing abilities due to aging.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p><strong>eAccessibility</strong>  indica la capacit&agrave; di sistemi, servizi e applicazioni ICT di essere accessibili in maniera semplice da utenti con disabilit&agrave;.</p>\n<p>In particolare, per accessibilit&agrave; web si indica la capacit&agrave; di un sito web di essere acceduto efficacemente  in termini di navigazione,  fruizione dei contenuti e dei servizi da tutti gli utenti senza nessuna esclusione.</p>\n<p>Rendere un sito web accessibile significa permettere l\'accesso all\'informazione contenuta nel sito anche a persone con disabilit&agrave; di diverso tipo, anziani ma non solo : significa anche consentire a tutti di poter partecipare, gestire, condividere le proprie informazioni. A tal proposito il concetto di accessibilit&agrave; &egrave; legato fortemente a quello di usabilit&agrave;: &egrave; fondamentale che un utente sia capace di accedere ad un\'informazione in maniera semplice, efficace ed efficiente.</p>\n<p>A tali linee guida, ma soprattutto al principio democratico dell\'<strong>eParticipation e eAccessibility</strong>, si &egrave; ispirato il portale.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p><strong>eAccessibility</strong>  is the ease use by people with disabilities of information and communication technologies.</p>\n<p>More specifically<strong>, Web accessibility </strong>means that people with disabilities can perceive, understand, navigate, and interact with the Web, and that they can contribute to the Web. Web accessibility also benefits others, including older people with changing abilities due to aging.</p>\n<p>The Portal is compatible with <strong>accessibility international standards</strong> like WCAG 2.0 and specific governments laws allowing <strong>citizen eParticipation</strong>.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"174\" lang=\"en\" /><text lang=\"it\">Portale Villamarina</text><text lang=\"en\">Villamarina Portal</text></attribute><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>7.0</version></content>\n','20110118173705','20110128142829','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG173\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Accessibilità</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Accessibilità</text><text lang=\"en\">Web Accessibility</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">eAccessibility indica la capacità di sistemi, servizi e applicazioni ICT di essere accessibili in maniera semplice da utenti con disabilità.&#xD;\n&#xD;\nIn particolare, per accessibilità web si indica la capacità di un sito web di essere acceduto efficacemente in termini di navigazione, fruizione dei contenuti e dei servizi da tutti gli utenti senza nessuna esclusione.&#xD;\nA tali linee guida, ma soprattutto al principio democratico dell\'eParticipation e eAccessibility, si è ispirato il portale.</text><text lang=\"en\">eAccessibility is the ease use by people with disabilities of information and communication technologies.&#xD;\n&#xD;\nMore specifically, Web accessibility means that people with disabilities can perceive, understand, navigate, and interact with the Web, and that they can contribute to the Web. Web accessibility also benefits others, including older people with changing abilities due to aging.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p><strong>eAccessibility</strong>  indica la capacit&agrave; di sistemi, servizi e applicazioni ICT di essere accessibili in maniera semplice da utenti con disabilit&agrave;.</p>\n<p>In particolare, per accessibilit&agrave; web si indica la capacit&agrave; di un sito web di essere acceduto efficacemente  in termini di navigazione,  fruizione dei contenuti e dei servizi da tutti gli utenti senza nessuna esclusione.</p>\n<p>Rendere un sito web accessibile significa permettere l\'accesso all\'informazione contenuta nel sito anche a persone con disabilit&agrave; di diverso tipo, anziani ma non solo : significa anche consentire a tutti di poter partecipare, gestire, condividere le proprie informazioni. A tal proposito il concetto di accessibilit&agrave; &egrave; legato fortemente a quello di usabilit&agrave;: &egrave; fondamentale che un utente sia capace di accedere ad un\'informazione in maniera semplice, efficace ed efficiente.</p>\n<p>A tali linee guida, ma soprattutto al principio democratico dell\'<strong>eParticipation e eAccessibility</strong>, si &egrave; ispirato il portale.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p><strong>eAccessibility</strong>  is the ease use by people with disabilities of information and communication technologies.</p>\n<p>More specifically<strong>, Web accessibility </strong>means that people with disabilities can perceive, understand, navigate, and interact with the Web, and that they can contribute to the Web. Web accessibility also benefits others, including older people with changing abilities due to aging.</p>\n<p>The Portal is compatible with <strong>accessibility international standards</strong> like WCAG 2.0 and specific governments laws allowing <strong>citizen eParticipation</strong>.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"174\" lang=\"en\" /><text lang=\"it\">Portale Villamarina</text><text lang=\"en\">Villamarina Portal</text></attribute><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>7.0</version></content>\n','free','7.0','admin'),
 ('CNG18','CNG','Giunta Comunale','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG18\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Giunta Comunale</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Giunta Comunale</text><text lang=\"en\">Council</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">La Giunta del Comune è l\'organo esecutivo composto dal Sindaco, che ne è anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</text><text lang=\"en\">A Council is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>La <strong>Giunta comunale</strong> &egrave; l\'organo esecutivo composto dal Sindaco, che ne &egrave; anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</p>\n<p>La Giunta comunale &egrave; responsabile dell&rsquo;<strong>attuazione delle linee programmatiche e degli indirizzi generali</strong> definiti nel piano di mandato, ossia nel documento con cui il Sindaco, all&rsquo;inizio del suo incarico quinquennale, presenta al Consiglio le linee programmatiche relative alle azioni e ai progetti da realizzare.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>A <strong>Council</strong> is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</p>\n<p>A municipality is often referred to as simply the Council without any further attempt by the speaker at making a size or scale designation, as in Council house. It is assumed the listener will already know the specific meaning of the word without further guidance.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','20090721113802','20100104120443','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG18\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Giunta Comunale</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Giunta Comunale</text><text lang=\"en\">Council</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">La Giunta del Comune è l\'organo esecutivo composto dal Sindaco, che ne è anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</text><text lang=\"en\">A Council is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>La <strong>Giunta comunale</strong> &egrave; l\'organo esecutivo composto dal Sindaco, che ne &egrave; anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</p>\n<p>La Giunta comunale &egrave; responsabile dell&rsquo;<strong>attuazione delle linee programmatiche e degli indirizzi generali</strong> definiti nel piano di mandato, ossia nel documento con cui il Sindaco, all&rsquo;inizio del suo incarico quinquennale, presenta al Consiglio le linee programmatiche relative alle azioni e ai progetti da realizzare.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>A <strong>Council</strong> is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</p>\n<p>A municipality is often referred to as simply the Council without any further attempt by the speaker at making a size or scale designation, as in Council house. It is assumed the listener will already know the specific meaning of the word without further guidance.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','free','1.0','admin'),
 ('CNG19','CNG','Consiglio Comunale','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG19\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Consiglio Comunale</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Consiglio Comunale</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Il Consiglio Comunale, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull\'ordinamento degli enti locali) è l\'assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall\'art. 114 della Costituzione della Repubblica Italiana.</text><text lang=\"en\">A Municipal Council is the local government of Villamarina municipality.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Il <strong>Consiglio Comunale</strong>, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull\'ordinamento degli enti locali) &egrave; l\'assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall\'art. 114 della <strong>Costituzione della Repubblica Italiana</strong>.</p>\n<p>Il Consiglio Comunale &egrave; composto dal Sindaco e da un numero variabile di consiglieri, in funzione del numero di abitanti del Comune.</p>\n<p>Il Consiglio comunale viene eletto direttamente dai <strong>cittadini</strong>, contestualmente all&rsquo;elezione del Sindaco, e resta in carica <strong>cinque anni</strong>.</p>\n<p>Il Consiglio Comunale &egrave; organo di indirizzo e di controllo <strong>politico-amministrativo</strong> del comune. La sua competenza si limita ad atti fondamentali indicati dalla legge: Statuto dell\'ente e delle aziende speciali, programmi, piani finanziari, bilanci, conti consuntivi, convenzioni tra enti locali, costituzione di forme associative, etc.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>A <strong>Municipal Council</strong> is the local government of Villamarina municipality. Specifically the term can refer to the institutions of various countries that can be translated by this term.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','20090721120259','20100104120649','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG19\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Consiglio Comunale</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Consiglio Comunale</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Il Consiglio Comunale, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull\'ordinamento degli enti locali) è l\'assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall\'art. 114 della Costituzione della Repubblica Italiana.</text><text lang=\"en\">A Municipal Council is the local government of Villamarina municipality.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Il <strong>Consiglio Comunale</strong>, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull\'ordinamento degli enti locali) &egrave; l\'assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall\'art. 114 della <strong>Costituzione della Repubblica Italiana</strong>.</p>\n<p>Il Consiglio Comunale &egrave; composto dal Sindaco e da un numero variabile di consiglieri, in funzione del numero di abitanti del Comune.</p>\n<p>Il Consiglio comunale viene eletto direttamente dai <strong>cittadini</strong>, contestualmente all&rsquo;elezione del Sindaco, e resta in carica <strong>cinque anni</strong>.</p>\n<p>Il Consiglio Comunale &egrave; organo di indirizzo e di controllo <strong>politico-amministrativo</strong> del comune. La sua competenza si limita ad atti fondamentali indicati dalla legge: Statuto dell\'ente e delle aziende speciali, programmi, piani finanziari, bilanci, conti consuntivi, convenzioni tra enti locali, costituzione di forme associative, etc.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>A <strong>Municipal Council</strong> is the local government of Villamarina municipality. Specifically the term can refer to the institutions of various countries that can be translated by this term.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','free','1.0','admin'),
 ('CNG2','CNG','Lorem Ipsum dolor sit amet','DRAFT','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG2\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Lorem Ipsum dolor sit amet</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Lorem Ipsum dolor sit amet</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec est eu mi dignissim posuere.Sed venenatis sapien sed purus.Sed consequat, dolor sit amet porta interdum, leo nulla mollis nulla, quis congue sapien massa sed risus. Sed consequat, dolor sit amet porta interdum, leo nulla mollis nulla, quis congue sapien massa sed risus. Aliquam convallis quam eget turpis.Donec aliquet lacus eget libero.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec est eu mi dignissim posuere. Duis augue. Fusce in justo sit amet urna egestas rutrum. Phasellus non turpis quis tortor gravida rutrum.</p>\n<p>Sed consequat, dolor sit amet porta interdum, leo nulla mollis nulla, quis congue sapien massa sed risus. Aliquam convallis quam eget turpis.Donec aliquet lacus eget libero. Suspendisse nisi odio, luctus eget, pretium quis, placerat a, urna. Ut sed nulla non ante cursus convallis.</p>\n<p>Sed venenatis sapien sed purus. Maecenas felis massa, porta sed, semper sed, lobortis luctus, erat. Aliquam nec nunc sit amet diam pulvinar mattis. In at turpis eget dolor volutpat rutrum. Donec aliquet lacus eget libero. Suspendisse nisi odio, luctus eget, pretium quis, placerat a, urna. Ut sed nulla non ante cursus convallis.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"10\" lang=\"it\" /><resource resourcetype=\"Image\" id=\"10\" lang=\"en\" /><text lang=\"it\">prova</text><text lang=\"en\">prova</text></attribute><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\"><attribute name=\"Links\" attributetype=\"Link\"><link type=\"external\"><urldest>http://www.google.com/</urldest></link><text lang=\"it\">Google</text><text lang=\"en\">Google</text></attribute></list><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','20090219102647','20100201154934','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG2\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Lorem Ipsum dolor sit amet</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Lorem Ipsum dolor sit amet</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec est eu mi dignissim posuere.Sed venenatis sapien sed purus.Sed consequat, dolor sit amet porta interdum, leo nulla mollis nulla, quis congue sapien massa sed risus. Sed consequat, dolor sit amet porta interdum, leo nulla mollis nulla, quis congue sapien massa sed risus. Aliquam convallis quam eget turpis.Donec aliquet lacus eget libero.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec est eu mi dignissim posuere. Duis augue. Fusce in justo sit amet urna egestas rutrum. Phasellus non turpis quis tortor gravida rutrum.</p>\n<p>Sed consequat, dolor sit amet porta interdum, leo nulla mollis nulla, quis congue sapien massa sed risus. Aliquam convallis quam eget turpis.Donec aliquet lacus eget libero. Suspendisse nisi odio, luctus eget, pretium quis, placerat a, urna. Ut sed nulla non ante cursus convallis.</p>\n<p>Sed venenatis sapien sed purus. Maecenas felis massa, porta sed, semper sed, lobortis luctus, erat. Aliquam nec nunc sit amet diam pulvinar mattis. In at turpis eget dolor volutpat rutrum. Donec aliquet lacus eget libero. Suspendisse nisi odio, luctus eget, pretium quis, placerat a, urna. Ut sed nulla non ante cursus convallis.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"10\" lang=\"it\" /><resource resourcetype=\"Image\" id=\"10\" lang=\"en\" /><text lang=\"it\">prova</text><text lang=\"en\">prova</text></attribute><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\"><attribute name=\"Links\" attributetype=\"Link\"><link type=\"external\"><urldest>http://www.google.com/</urldest></link><text lang=\"it\">Google</text><text lang=\"en\">Google</text></attribute></list><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','free','1.0','admin'),
 ('CNG20','CNG','Statuto','DRAFT','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG20\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Statuto</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Statuto</text><text lang=\"pt\">Statuto Portoghese</text><text lang=\"en\">Statute</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Lo Statuto è il documento che definisce organi, compiti e modalità di funzionamento dell’Ente comunale.&#xD;\nSe desideri saperne di più sulle funzioni svolte dall’Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentatività democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</text><text lang=\"en\">The Statute is the document that defines the Municipality council, functions and mode of operation.&#xD;\n&#xD;\nIf you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you\'ll find lots of interesting information in the official status.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Lo <strong>Statuto</strong> &egrave; il documento che definisce <strong>organi</strong>, <strong>compiti</strong> e <strong>modalit&agrave;</strong> di funzionamento dell&rsquo;Ente comunale.</p>\n<p>Se desideri saperne di pi&ugrave; sulle funzioni svolte dall&rsquo;Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentativit&agrave; democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</p>\n<p>In questa sezione puoi trovare, nella sua interezza, il testo ufficiale dello Statuto del Comune di <strong>Villamarina</strong>.</p>\n<p>Scarica in Pdf il testo dello Statuto del Comune di Villamarina.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>The <strong>Statute</strong> is the document that defines the Municipality council, functions and mode of operation.</p>\n<p>If you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you\'ll find lots of interesting information in the official status.</p>\n<p>In this section you can find the official text of Villamarina Municipality Statute.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"21\" lang=\"it\" /><resource resourcetype=\"Image\" id=\"21\" lang=\"en\" /><text lang=\"it\">Stemma</text><text lang=\"en\">Statute</text></attribute><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"22\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"22\" lang=\"en\" /><text lang=\"it\">Statuto Villamarina</text><text lang=\"en\">Statute</text></attribute></list></attributes><status>DRAFT</status></content>\n','20090721120929','20100201154934','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG20\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Statuto</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Statuto</text><text lang=\"pt\">Statuto Portoghese</text><text lang=\"en\">Statute</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Lo Statuto è il documento che definisce organi, compiti e modalità di funzionamento dell’Ente comunale.&#xD;\nSe desideri saperne di più sulle funzioni svolte dall’Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentatività democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</text><text lang=\"en\">The Statute is the document that defines the Municipality council, functions and mode of operation.&#xD;\n&#xD;\nIf you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you\'ll find lots of interesting information in the official status.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Lo <strong>Statuto</strong> &egrave; il documento che definisce <strong>organi</strong>, <strong>compiti</strong> e <strong>modalit&agrave;</strong> di funzionamento dell&rsquo;Ente comunale.</p>\n<p>Se desideri saperne di pi&ugrave; sulle funzioni svolte dall&rsquo;Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentativit&agrave; democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</p>\n<p>In questa sezione puoi trovare, nella sua interezza, il testo ufficiale dello Statuto del Comune di <strong>Villamarina</strong>.</p>\n<p>Scarica in Pdf il testo dello Statuto del Comune di Villamarina.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>The <strong>Statute</strong> is the document that defines the Municipality council, functions and mode of operation.</p>\n<p>If you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you\'ll find lots of interesting information in the official status.</p>\n<p>In this section you can find the official text of Villamarina Municipality Statute.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"21\" lang=\"it\" /><resource resourcetype=\"Image\" id=\"21\" lang=\"en\" /><text lang=\"it\">Stemma</text><text lang=\"en\">Statute</text></attribute><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"22\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"22\" lang=\"en\" /><text lang=\"it\">Statuto Villamarina</text><text lang=\"en\">Statute</text></attribute></list></attributes><status>DRAFT</status></content>\n','free','1.0','admin'),
 ('CNG256','CNG','Intro Home per Credenziali','PUBLIC','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG256\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Home per Credenziali</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Come loggarsi</text><text lang=\"en\">How to sign in</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Cosa aspetti? Prova l\'Area di Amministrazione!&#xD;\nScegli il link \"Avanzata\" e scopri la nuova veste grafica.&#xD;\nScopri quante cose puoi personalizzare, crea un nuovo contenuto, una nuova pagina o magari il tuo utente personale.&#xD;\nEntra con Username: admin e Password: adminadmin e poi fai quello che vuoi tu.</text><text lang=\"en\">What are you waiting for? Try the Administration Area!&#xD;\nChoose the \"Advanced\" link and enjoy the new design.&#xD;\nFind out how many things you can customize, create new content, a new page or even your own user.&#xD;\nSign in with Username: admin and Password: adminadmin and then do what you want.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Cosa aspetti? Prova l\'Area di Amministrazione!</p>\n<p>Scegli il link &quot;Avanzata&quot; e scopri la nuova veste grafica.</p>\n<p>Scopri quante cose puoi personalizzare, crea un nuovo contenuto, una nuova pagina o magari il tuo utente personale.</p>\n<p>Entra con Username: <strong>admin</strong> e Password: <strong>adminadmin</strong> e poi fai quello che vuoi tu.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>What are you waiting for? Try the Administration Area!</p>\n<p>Choose the &quot;Advanced&quot; link and enjoy the new design.</p>\n<p>Find out how many things you can customize, create new content, a new page or even your own user.</p>\n<p>Sign in with Username: <strong>admin</strong> and Password: <strong>adminadmin</strong> and then do what you want.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20110415124748</created><lastModified>20110602194014</lastModified></content>\n','20110415124748','20110602194014','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG256\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Home per Credenziali</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Come loggarsi</text><text lang=\"en\">How to sign in</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Cosa aspetti? Prova l\'Area di Amministrazione!&#xD;\nScegli il link \"Avanzata\" e scopri la nuova veste grafica.&#xD;\nScopri quante cose puoi personalizzare, crea un nuovo contenuto, una nuova pagina o magari il tuo utente personale.&#xD;\nEntra con Username: admin e Password: adminadmin e poi fai quello che vuoi tu.</text><text lang=\"en\">What are you waiting for? Try the Administration Area!&#xD;\nChoose the \"Advanced\" link and enjoy the new design.&#xD;\nFind out how many things you can customize, create new content, a new page or even your own user.&#xD;\nSign in with Username: admin and Password: adminadmin and then do what you want.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Cosa aspetti? Prova l\'Area di Amministrazione!</p>\n<p>Scegli il link &quot;Avanzata&quot; e scopri la nuova veste grafica.</p>\n<p>Scopri quante cose puoi personalizzare, crea un nuovo contenuto, una nuova pagina o magari il tuo utente personale.</p>\n<p>Entra con Username: <strong>admin</strong> e Password: <strong>adminadmin</strong> e poi fai quello che vuoi tu.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>What are you waiting for? Try the Administration Area!</p>\n<p>Choose the &quot;Advanced&quot; link and enjoy the new design.</p>\n<p>Find out how many things you can customize, create new content, a new page or even your own user.</p>\n<p>Sign in with Username: <strong>admin</strong> and Password: <strong>adminadmin</strong> and then do what you want.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20110415124748</created><lastModified>20110602194014</lastModified></content>\n','free','3.0','admin');
INSERT INTO `portalexamplePort`.`contents` VALUES  ('CNG28','CNG','Intro delibere di Giunta','DRAFT','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG28\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro delibere di Giunta</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Elenco delle Delibere di Giunta presenti nel portale del Comune</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\" /><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','20090721191954','20090721191954','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG28\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro delibere di Giunta</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Elenco delle Delibere di Giunta presenti nel portale del Comune</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\" /><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','free','1.0','admin'),
 ('CNG29','CNG','Intro delibere di Consiglio','DRAFT','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG29\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro delibere di Consiglio</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Elenco delle Delibere di Consiglio presenti nel portale del Comune</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\" /><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','20090721192226','20090721192226','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG29\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro delibere di Consiglio</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Elenco delle Delibere di Consiglio presenti nel portale del Comune</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\" /><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','free','1.0','admin'),
 ('CNG49','CNG','URP - Ufficio Relazioni con il Pubblico','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG49\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>URP - Ufficio Relazioni con il Pubblico</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">URP - Ufficio Relazioni con il Pubblico</text><text lang=\"en\">Public Relations Office</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p><strong>Sede</strong>: Palazzo Municipale - Via Villamarina, 1, Villamarina</p>\n<p><strong>Telefono</strong> 000.000.000 (numero verde)</p>\n<p><strong>Fax</strong>  	00.0000.000</p>\n<p><strong>E-mail</strong>  	urp@villamarina.it <br />\n&nbsp;</p>\n<p><strong>Orario di ricevimento</strong></p>\n<p>dal luned&igrave; al venerd&igrave;: dalle 9.00 alle 12.30<br />\nmarted&igrave; e mercoled&igrave;: dalle 16.00 alle 17.00</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p><strong>Location</strong>: Palazzo Municipale - Via Villamarina, 1, Villamarina</p>\n<p><strong>Phone</strong>: 000.000.000 </p>\n<p><strong>Fax:</strong> 00.0000.000</p>\n<p><strong>E-mail</strong> urp@villamarina.it</p>\n<p><strong>Opening hours</strong></p>\n<p>From Monday to Friday: from 9.00 a.m. to 12.30 a.m.<br />\nFrom Tuesday to Wednesday: from 16.00 p.m. to 17.00 p.m.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','20090722171212','20100104122227','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG49\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>URP - Ufficio Relazioni con il Pubblico</descr><groups mainGroup=\"free\"><group name=\"free\" /></groups><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">URP - Ufficio Relazioni con il Pubblico</text><text lang=\"en\">Public Relations Office</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p><strong>Sede</strong>: Palazzo Municipale - Via Villamarina, 1, Villamarina</p>\n<p><strong>Telefono</strong> 000.000.000 (numero verde)</p>\n<p><strong>Fax</strong>  	00.0000.000</p>\n<p><strong>E-mail</strong>  	urp@villamarina.it <br />\n&nbsp;</p>\n<p><strong>Orario di ricevimento</strong></p>\n<p>dal luned&igrave; al venerd&igrave;: dalle 9.00 alle 12.30<br />\nmarted&igrave; e mercoled&igrave;: dalle 16.00 alle 17.00</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p><strong>Location</strong>: Palazzo Municipale - Via Villamarina, 1, Villamarina</p>\n<p><strong>Phone</strong>: 000.000.000 </p>\n<p><strong>Fax:</strong> 00.0000.000</p>\n<p><strong>E-mail</strong> urp@villamarina.it</p>\n<p><strong>Opening hours</strong></p>\n<p>From Monday to Friday: from 9.00 a.m. to 12.30 a.m.<br />\nFrom Tuesday to Wednesday: from 16.00 p.m. to 17.00 p.m.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','free','1.0','admin'),
 ('CNG51','CNG','Intro Mobile','DRAFT','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG51\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Mobile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Area Mobile</text><text lang=\"en\">Mobile Area</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Online la versione MOBILE del portale di Villamarina disegnata con una nuova interfaccia grafica, adatta alla navigazione su schermi di dimensioni ridotte. Il Portale Mobile è stato realizzato con la piattaforma jAPS 2.0.&#xD;\n&#xD;\nIl Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in movimento.&#xD;\n&#xD;\nIl Portale Mobile è disponibile in modalità multilingua: italiano, inglese.&#xD;\n&#xD;\nIl Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in movimento.</text><text lang=\"en\">The MOBILE portal version of Villamarina is OnLine. The Mobile Portal is designed with a new graphical interface, suitable for \"browsing\" on small screens. The mobile portal is built on jAPS 2.0 Platform.&#xD;\n&#xD;\nThe Mobile Portal is multi-languages: Italian, English.&#xD;\n&#xD;\nThe Mobile Portal makes available the information most useful to users who surf the web being in the movement.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Online la versione <a href=\"#!P;mobile_home!#\">MOBILE</a> del portale di Villamarina disegnata con una nuova interfaccia grafica, adatta alla &ldquo;navigazione&rdquo; su schermi di dimensioni ridotte. Il Portale Mobile &egrave; stato realizzato con la piattaforma jAPS 2.0.</p>\n<p>Il Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in &ldquo;movimento&rdquo;.</p>\n<p>Il Portale Mobile &egrave; disponibile in modalit&agrave; multilingua: italiano, inglese.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>The <a href=\"#!P;mobile_home!#\">MOBILE</a> portal version of Villamarina is OnLine. The Mobile Portal is designed with a new graphical interface, suitable for &quot;browsing&quot; on small screens. The mobile portal is built on jAPS 2.0 Platform.</p>\n<p>The Mobile Portal is multi-languages: Italian, English.</p>\n<p>The Mobile Portal makes available the information most useful to users who surf the web being in the movement.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"143\" lang=\"en\" /><text lang=\"it\">Mobile</text><text lang=\"en\">Mobile</text></attribute><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status><version>7.0</version></content>\n','20091014175142','20110128101732','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG51\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Mobile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Area Mobile</text><text lang=\"en\">Mobile Area</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\"><text lang=\"it\">Online la versione MOBILE del portale di Villamarina disegnata con una nuova interfaccia grafica, adatta alla navigazione su schermi di dimensioni ridotte. Il Portale Mobile è stato realizzato con la piattaforma jAPS 2.0.&#xD;\n&#xD;\nIl Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in movimento.&#xD;\n&#xD;\nIl Portale Mobile è disponibile in modalità multilingua: italiano, inglese.&#xD;\n&#xD;\nIl Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in movimento.</text><text lang=\"en\">The MOBILE portal version of Villamarina is OnLine. The Mobile Portal is designed with a new graphical interface, suitable for \"browsing\" on small screens. The mobile portal is built on jAPS 2.0 Platform.&#xD;\n&#xD;\nThe Mobile Portal is multi-languages: Italian, English.&#xD;\n&#xD;\nThe Mobile Portal makes available the information most useful to users who surf the web being in the movement.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Online la versione <a href=\"#!P;mobile_home!#\">MOBILE</a> del portale di Villamarina disegnata con una nuova interfaccia grafica, adatta alla &ldquo;navigazione&rdquo; su schermi di dimensioni ridotte. Il Portale Mobile &egrave; stato realizzato con la piattaforma jAPS 2.0.</p>\n<p>Il Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in &ldquo;movimento&rdquo;.</p>\n<p>Il Portale Mobile &egrave; disponibile in modalit&agrave; multilingua: italiano, inglese.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>The <a href=\"#!P;mobile_home!#\">MOBILE</a> portal version of Villamarina is OnLine. The Mobile Portal is designed with a new graphical interface, suitable for &quot;browsing&quot; on small screens. The mobile portal is built on jAPS 2.0 Platform.</p>\n<p>The Mobile Portal is multi-languages: Italian, English.</p>\n<p>The Mobile Portal makes available the information most useful to users who surf the web being in the movement.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"143\" lang=\"en\" /><text lang=\"it\">Mobile</text><text lang=\"en\">Mobile</text></attribute><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status><version>7.0</version></content>\n','free','7.0','admin'),
 ('CNG53','CNG','Intro Notizie Mobile','DRAFT','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG53\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Notizie Mobile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Notizie</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione puoi trovare la lista delle notizie.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','20091015101654','20091015102119','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG53\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Notizie Mobile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Notizie</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione puoi trovare la lista delle notizie.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','free','1.0','admin'),
 ('CNG54','CNG','Intro Delibere Mobile','DRAFT','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG54\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Delibere Mobile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Delibere</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione puoi trovare la lista delle delibere.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','20091015101844','20091015101844','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG54\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Delibere Mobile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Delibere</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione puoi trovare la lista delle delibere.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','free','1.0','admin'),
 ('CNG55','CNG','Intro Bandi Mobile','DRAFT','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG55\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Bandi Mobile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Bandi</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione puoi trovare la lista dei Bandi.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','20091015102100','20091015102100','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"CNG55\" typecode=\"CNG\" typedescr=\"Contenuto generico\"><descr>Intro Bandi Mobile</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Bandi</text></attribute><attribute name=\"Abstract\" attributetype=\"Longtext\" /><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>In questa sezione puoi trovare la lista dei Bandi.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><attribute name=\"Image_2\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>DRAFT</status></content>\n','free','1.0','admin'),
 ('DLB30','DLB','Delibera 20','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"DLB30\" typecode=\"DLB\" typedescr=\"Delibera\"><descr>Delibera 20</descr><groups mainGroup=\"free\" /><categories><category id=\"delibere_di_consiglio\" /></categories><attributes><attribute name=\"Number\" attributetype=\"Number\"><number>20</number></attribute><attribute name=\"Date\" attributetype=\"Date\"><date>20111004</date></attribute><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Esame ed approvazione del Conto Consuntivo 2011</text><text lang=\"en\">Examination and approval of Villamarina Balance Sheet 2011</text></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Esame ed approvazione del Conto Consuntivo 2011</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Examination and approval of Villamarina Balance Sheet 2011</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"34\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"34\" lang=\"en\" /><text lang=\"it\">Delibera del Consiglio Comunale numero 20 del 13 Luglio 2011</text><text lang=\"en\">Decision 20</text></attribute></list></attributes><status>READY</status><version>4.0</version></content>\n','20090721192612','20110119120451','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"DLB30\" typecode=\"DLB\" typedescr=\"Delibera\"><descr>Delibera 20</descr><groups mainGroup=\"free\" /><categories><category id=\"delibere_di_consiglio\" /></categories><attributes><attribute name=\"Number\" attributetype=\"Number\"><number>20</number></attribute><attribute name=\"Date\" attributetype=\"Date\"><date>20111004</date></attribute><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Esame ed approvazione del Conto Consuntivo 2011</text><text lang=\"en\">Examination and approval of Villamarina Balance Sheet 2011</text></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Esame ed approvazione del Conto Consuntivo 2011</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Examination and approval of Villamarina Balance Sheet 2011</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"34\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"34\" lang=\"en\" /><text lang=\"it\">Delibera del Consiglio Comunale numero 20 del 13 Luglio 2011</text><text lang=\"en\">Decision 20</text></attribute></list></attributes><status>READY</status><version>4.0</version></content>\n','free','4.0','admin'),
 ('DLB32','DLB','Delibera 120','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"DLB32\" typecode=\"DLB\" typedescr=\"Delibera\"><descr>Delibera 120</descr><groups mainGroup=\"free\" /><categories><category id=\"delibere_di_giunta\" /><category id=\"moduli\" /></categories><attributes><attribute name=\"Number\" attributetype=\"Number\"><number>120</number></attribute><attribute name=\"Date\" attributetype=\"Date\"><date>20110701</date></attribute><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Organizzazione della manifestazione \"Festival della canzone popolare” III Edizione.</text><text lang=\"en\">Organization of the event \"Folk Music Festival\" III Edition.</text></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Organizzazione della manifestazione &quot;Festival della canzone popolare&rdquo; III Edizione che si terr&agrave; a Villamarina&nbsp; nei mesi di Agosto e Settembre 2011.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Organization of the event &quot;<strong>Folk Music Festival</strong>&quot; III edition to be held in Villamarina in the months of August and September 2011.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"33\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"33\" lang=\"en\" /><text lang=\"it\">Delibera della Giunta Comunale numero 120 dell\' 8 Luglio 2011</text><text lang=\"en\">Decision 120</text></attribute></list></attributes><status>READY</status><version>4.0</version></content>\n','20090722101353','20110119120606','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"DLB32\" typecode=\"DLB\" typedescr=\"Delibera\"><descr>Delibera 120</descr><groups mainGroup=\"free\" /><categories><category id=\"delibere_di_giunta\" /><category id=\"moduli\" /></categories><attributes><attribute name=\"Number\" attributetype=\"Number\"><number>120</number></attribute><attribute name=\"Date\" attributetype=\"Date\"><date>20110701</date></attribute><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Organizzazione della manifestazione \"Festival della canzone popolare” III Edizione.</text><text lang=\"en\">Organization of the event \"Folk Music Festival\" III Edition.</text></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Organizzazione della manifestazione &quot;Festival della canzone popolare&rdquo; III Edizione che si terr&agrave; a Villamarina&nbsp; nei mesi di Agosto e Settembre 2011.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Organization of the event &quot;<strong>Folk Music Festival</strong>&quot; III edition to be held in Villamarina in the months of August and September 2011.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"33\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"33\" lang=\"en\" /><text lang=\"it\">Delibera della Giunta Comunale numero 120 dell\' 8 Luglio 2011</text><text lang=\"en\">Decision 120</text></attribute></list></attributes><status>READY</status><version>4.0</version></content>\n','free','4.0','admin'),
 ('DLB36','DLB','Delibera 15','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"DLB36\" typecode=\"DLB\" typedescr=\"Delibera\"><descr>Delibera 15</descr><groups mainGroup=\"free\" /><categories><category id=\"delibere_di_consiglio\" /><category id=\"delibere\" /></categories><attributes><attribute name=\"Number\" attributetype=\"Number\"><number>15</number></attribute><attribute name=\"Date\" attributetype=\"Date\"><date>20110716</date></attribute><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Approvazione programma di incarichi di consulenza autonoma nel settore turistico</text><text lang=\"en\">Approval for charge of consultant program in tourism sector for 2011.</text></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Approvazione programma di&nbsp; incarichi di consulenza autonoma nel settore turistico &ndash; lavori pubblici &ndash; servizi tecnologici, per l\'anno 2011.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Approval for charge of consultant program in tourism sector for 2011.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"35\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"35\" lang=\"en\" /><text lang=\"it\">Delibera del Consiglio Comunale numero 15 del 09 Luglio 2011</text><text lang=\"en\">Decision 15</text></attribute></list></attributes><status>READY</status><version>4.0</version></content>\n','20090722104739','20110119120705','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"DLB36\" typecode=\"DLB\" typedescr=\"Delibera\"><descr>Delibera 15</descr><groups mainGroup=\"free\" /><categories><category id=\"delibere_di_consiglio\" /><category id=\"delibere\" /></categories><attributes><attribute name=\"Number\" attributetype=\"Number\"><number>15</number></attribute><attribute name=\"Date\" attributetype=\"Date\"><date>20110716</date></attribute><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Approvazione programma di incarichi di consulenza autonoma nel settore turistico</text><text lang=\"en\">Approval for charge of consultant program in tourism sector for 2011.</text></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Approvazione programma di&nbsp; incarichi di consulenza autonoma nel settore turistico &ndash; lavori pubblici &ndash; servizi tecnologici, per l\'anno 2011.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Approval for charge of consultant program in tourism sector for 2011.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"35\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"35\" lang=\"en\" /><text lang=\"it\">Delibera del Consiglio Comunale numero 15 del 09 Luglio 2011</text><text lang=\"en\">Decision 15</text></attribute></list></attributes><status>READY</status><version>4.0</version></content>\n','free','4.0','admin'),
 ('DLB4','DLB','Delibera 133','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"DLB4\" typecode=\"DLB\" typedescr=\"Delibera\"><descr>Delibera 133</descr><groups mainGroup=\"free\" /><categories><category id=\"delibere_di_giunta\" /></categories><attributes><attribute name=\"Number\" attributetype=\"Number\"><number>133</number></attribute><attribute name=\"Date\" attributetype=\"Date\"><date>20110920</date></attribute><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Manutenzione straordinaria Istituto Nautico - Lavori per la realizzazione di laboratorio informatico.</text><text lang=\"en\">Special maintenance of Nautical Institute.</text></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Manutenzione straordinaria Istituto Nautico. Lavori per la realizzazione di un laboratorio informatico nel primo piano dell\'istituto.</p>\n<p>Approvazione progetto definitivo - esecutivo.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>\n<p>Approval of final project.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"31\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"31\" lang=\"en\" /><text lang=\"it\">Delibera della Giunta Comunale numero 133 del 20 Luglio 2011</text><text lang=\"en\">Decision 133</text></attribute></list></attributes><status>READY</status><version>6.0</version></content>\n','20090219164216','20110119120322','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"DLB4\" typecode=\"DLB\" typedescr=\"Delibera\"><descr>Delibera 133</descr><groups mainGroup=\"free\" /><categories><category id=\"delibere_di_giunta\" /></categories><attributes><attribute name=\"Number\" attributetype=\"Number\"><number>133</number></attribute><attribute name=\"Date\" attributetype=\"Date\"><date>20110920</date></attribute><attribute name=\"Title\" attributetype=\"Longtext\"><text lang=\"it\">Manutenzione straordinaria Istituto Nautico - Lavori per la realizzazione di laboratorio informatico.</text><text lang=\"en\">Special maintenance of Nautical Institute.</text></attribute><attribute name=\"Abstract\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Manutenzione straordinaria Istituto Nautico. Lavori per la realizzazione di un laboratorio informatico nel primo piano dell\'istituto.</p>\n<p>Approvazione progetto definitivo - esecutivo.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>\n<p>Approval of final project.</p>]]></hypertext></attribute><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"31\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"31\" lang=\"en\" /><text lang=\"it\">Delibera della Giunta Comunale numero 133 del 20 Luglio 2011</text><text lang=\"en\">Decision 133</text></attribute></list></attributes><status>READY</status><version>6.0</version></content>\n','free','6.0','admin'),
 ('NEW177','NEW','Online il Portale Mobile','PUBLIC','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"NEW177\" typecode=\"NEW\" typedescr=\"Notizia\"><descr>Online il Portale Mobile</descr><groups mainGroup=\"free\" /><categories><category id=\"newsletter_1\" /><category id=\"newsletter_2\" /><category id=\"tag2\" /><category id=\"tag5\" /><category id=\"tag1\" /></categories><attributes><attribute name=\"Date\" attributetype=\"Date\"><date>20110615</date></attribute><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Online il Portale Mobile</text><text lang=\"en\">Online the Mobile Portal</text></attribute><attribute name=\"ShortText\" attributetype=\"Longtext\"><text lang=\"it\">Online il Portale del Comune di Villamarina realizzato con la piattaforma jAPS 2.0.</text><text lang=\"en\">Online the Mobile Portal of Villamarina Municipality.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Online<strong> il Portale del Comune di Villamarina, </strong>realizzato con la <strong>piattaforma jAPS 2.0</strong>.</p>\n<p>Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>\n<p>Il nuovo portale &egrave; stato realizzato per dare una risposta all\'altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull\'amministrazione comunale.</p>\n<p>Il sito si presenta con una veste <strong>grafica minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Online the Mobile Portal of Villamarina Municipality, built with jAPS 2.0 Platform.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\"><attribute name=\"Links\" attributetype=\"Link\"><link type=\"content\"><contentdest>CNG51</contentdest></link><text lang=\"it\">Scopri i dettagli</text><text lang=\"en\">Discover More</text></attribute></list><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20110118183107</created><lastModified>20110524164633</lastModified></content>\n','20110118183107','20110524164633','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"NEW177\" typecode=\"NEW\" typedescr=\"Notizia\"><descr>Online il Portale Mobile</descr><groups mainGroup=\"free\" /><categories><category id=\"newsletter_1\" /><category id=\"newsletter_2\" /><category id=\"tag2\" /><category id=\"tag5\" /><category id=\"tag1\" /></categories><attributes><attribute name=\"Date\" attributetype=\"Date\"><date>20110615</date></attribute><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Online il Portale Mobile</text><text lang=\"en\">Online the Mobile Portal</text></attribute><attribute name=\"ShortText\" attributetype=\"Longtext\"><text lang=\"it\">Online il Portale del Comune di Villamarina realizzato con la piattaforma jAPS 2.0.</text><text lang=\"en\">Online the Mobile Portal of Villamarina Municipality.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Online<strong> il Portale del Comune di Villamarina, </strong>realizzato con la <strong>piattaforma jAPS 2.0</strong>.</p>\n<p>Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>\n<p>Il nuovo portale &egrave; stato realizzato per dare una risposta all\'altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull\'amministrazione comunale.</p>\n<p>Il sito si presenta con una veste <strong>grafica minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Online the Mobile Portal of Villamarina Municipality, built with jAPS 2.0 Platform.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\"><attribute name=\"Links\" attributetype=\"Link\"><link type=\"content\"><contentdest>CNG51</contentdest></link><text lang=\"it\">Scopri i dettagli</text><text lang=\"en\">Discover More</text></attribute></list><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20110118183107</created><lastModified>20110524164633</lastModified></content>\n','free','5.0','admin'),
 ('NEW23','NEW','Contributo canone di locazione 2010','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"NEW23\" typecode=\"NEW\" typedescr=\"Notizia\"><descr>Contributo canone di locazione 2010</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Date\" attributetype=\"Date\"><date>20111021</date></attribute><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Contributo canone di locazione 2011</text><text lang=\"en\">Ground Rent Contribution</text></attribute><attribute name=\"ShortText\" attributetype=\"Longtext\"><text lang=\"it\">E\' stato pubblicato l\'avviso pubblico per l’attribuzione del contributo ad integrazione dei canoni di locazione 2011.</text><text lang=\"en\">It has been published the public notice for the allocation of Ground Rent Contribution 2011.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>E\' stato pubblicato l\'avviso pubblico per<strong> </strong>la presentazione delle domande per  l&rsquo;<strong>attribuzione del contributo ad integrazione dei canoni di locazione</strong> relativo all&rsquo;annualit&agrave; 2011,  di cui all&rsquo;art. 11 L. 431/98 per chi sia residente nel Comune di Villamarina.&nbsp;</p>\n<p>E\' possibile scaricare i moduli per la domanda, e il relativo Bando in questa sezione o ritirarli presso gli uffici del Comune di Villamarina.</p>\n<p>Le relative domande per accedere al bando devono essere presentate o spedite all\'Ufficio Protocollo  entro il<strong>  giorno 11.12.2011</strong>.&nbsp;</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>It has been published the public notice for the allocation of <strong>Ground Rent Contribution 2011</strong>.</p>\n<p>You can download the application forms and the notice in this section.</p>\n<p>The applications to access the notice must be submitted to Protocol Office until <strong>11/12/2011</strong>.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"24\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"24\" lang=\"en\" /><text lang=\"it\">Bando Locazione 2011</text><text lang=\"en\">Notice</text></attribute><attribute name=\"Allegati\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"25\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"25\" lang=\"en\" /><text lang=\"it\">Modulo domanda Locazione 2011</text><text lang=\"en\">Application Form</text></attribute></list></attributes><status>READY</status><version>6.0</version></content>\n','20090721185336','20110119121958','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"NEW23\" typecode=\"NEW\" typedescr=\"Notizia\"><descr>Contributo canone di locazione 2010</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Date\" attributetype=\"Date\"><date>20111021</date></attribute><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Contributo canone di locazione 2011</text><text lang=\"en\">Ground Rent Contribution</text></attribute><attribute name=\"ShortText\" attributetype=\"Longtext\"><text lang=\"it\">E\' stato pubblicato l\'avviso pubblico per l’attribuzione del contributo ad integrazione dei canoni di locazione 2011.</text><text lang=\"en\">It has been published the public notice for the allocation of Ground Rent Contribution 2011.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>E\' stato pubblicato l\'avviso pubblico per<strong> </strong>la presentazione delle domande per  l&rsquo;<strong>attribuzione del contributo ad integrazione dei canoni di locazione</strong> relativo all&rsquo;annualit&agrave; 2011,  di cui all&rsquo;art. 11 L. 431/98 per chi sia residente nel Comune di Villamarina.&nbsp;</p>\n<p>E\' possibile scaricare i moduli per la domanda, e il relativo Bando in questa sezione o ritirarli presso gli uffici del Comune di Villamarina.</p>\n<p>Le relative domande per accedere al bando devono essere presentate o spedite all\'Ufficio Protocollo  entro il<strong>  giorno 11.12.2011</strong>.&nbsp;</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>It has been published the public notice for the allocation of <strong>Ground Rent Contribution 2011</strong>.</p>\n<p>You can download the application forms and the notice in this section.</p>\n<p>The applications to access the notice must be submitted to Protocol Office until <strong>11/12/2011</strong>.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\"><attribute name=\"Documents\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"24\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"24\" lang=\"en\" /><text lang=\"it\">Bando Locazione 2011</text><text lang=\"en\">Notice</text></attribute><attribute name=\"Allegati\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"25\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"25\" lang=\"en\" /><text lang=\"it\">Modulo domanda Locazione 2011</text><text lang=\"en\">Application Form</text></attribute></list></attributes><status>READY</status><version>6.0</version></content>\n','free','6.0','admin'),
 ('NEW27','NEW','Festival della canzone popolare','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"NEW27\" typecode=\"NEW\" typedescr=\"Notizia\"><descr>Festival della canzone popolare</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Date\" attributetype=\"Date\"><date>20110720</date></attribute><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Festival della canzone popolare</text><text lang=\"en\">Folk Music Festival</text></attribute><attribute name=\"ShortText\" attributetype=\"Longtext\"><text lang=\"it\">Si inaugura la III edizione del \"Festival della canzone popolare\"</text><text lang=\"en\">It has been inaugurated the third edition of the \"Folk Music Festival\" to be held on July and August in the amphitheater of Villamarina.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Si inaugura la III edizione del &quot;Festival della <strong>canzone popolare&quot;</strong> che si svolger&agrave; durante i mesi di febbraio ed marzo nell\'anfiteatro del lungo mare di Villamarina.</p>\n<p>Al centro della manifestazione &egrave; la canzone popolare. L\'evento coinvolge <strong>artisti di fama nazionale</strong> e prevede un calendario ricco di incontri.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>It has been inaugurated the third edition of the &quot;<strong>Folk Music Festival</strong>&quot; to be held on July and August in the amphitheater of Villamarina.</p>\n<p>At the center of the event is the folk song. The event involves artists and provides a calendar full of meetings.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>8.0</version></content>\n','20090721191155','20110119120211','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"NEW27\" typecode=\"NEW\" typedescr=\"Notizia\"><descr>Festival della canzone popolare</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Date\" attributetype=\"Date\"><date>20110720</date></attribute><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Festival della canzone popolare</text><text lang=\"en\">Folk Music Festival</text></attribute><attribute name=\"ShortText\" attributetype=\"Longtext\"><text lang=\"it\">Si inaugura la III edizione del \"Festival della canzone popolare\"</text><text lang=\"en\">It has been inaugurated the third edition of the \"Folk Music Festival\" to be held on July and August in the amphitheater of Villamarina.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Si inaugura la III edizione del &quot;Festival della <strong>canzone popolare&quot;</strong> che si svolger&agrave; durante i mesi di febbraio ed marzo nell\'anfiteatro del lungo mare di Villamarina.</p>\n<p>Al centro della manifestazione &egrave; la canzone popolare. L\'evento coinvolge <strong>artisti di fama nazionale</strong> e prevede un calendario ricco di incontri.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>It has been inaugurated the third edition of the &quot;<strong>Folk Music Festival</strong>&quot; to be held on July and August in the amphitheater of Villamarina.</p>\n<p>At the center of the event is the folk song. The event involves artists and provides a calendar full of meetings.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\" /><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>8.0</version></content>\n','free','8.0','admin'),
 ('NEW3','NEW','Online il Portale del Comune di Villamarina','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"NEW3\" typecode=\"NEW\" typedescr=\"Notizia\"><descr>Online il Portale del Comune di Villamarina</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Date\" attributetype=\"Date\"><date>20111121</date></attribute><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Online il Portale del Comune di Villamarina</text><text lang=\"en\">Online the Portal of Villamarina Municipality</text></attribute><attribute name=\"ShortText\" attributetype=\"Longtext\"><text lang=\"it\">Online il Portale del Comune di Villamarina realizzato con la piattaforma jAPS 2.0.</text><text lang=\"en\">Online the Portal of Villamarina Municipality, built with jAPS 2.0 Platform.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Online<strong> il Portale del Comune di Villamarina, </strong>realizzato con la <strong>piattaforma jAPS 2.0</strong>.</p>\n<p>Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>\n<p>Il nuovo portale &egrave; stato realizzato per dare una risposta all\'altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull\'amministrazione comunale.</p>\n<p>Il sito si presenta con una veste <strong>grafica minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Online the Portal of Villamarina Municipality, built with jAPS 2.0 Platform.</p>\n<p>In the institutional portal you can find all the information relating to the municipality and its activities: the offices, decisions and results.</p>\n<p>The new portal is designed to respond to the expectations of citizens who every day are connected to find news and updated information.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"26\" lang=\"it\" /><resource resourcetype=\"Image\" id=\"26\" lang=\"en\" /><text lang=\"it\">Spiaggia</text><text lang=\"en\">Villamarina</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>6.0</version></content>\n','20090219163456','20110119120025','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"NEW3\" typecode=\"NEW\" typedescr=\"Notizia\"><descr>Online il Portale del Comune di Villamarina</descr><groups mainGroup=\"free\" /><categories /><attributes><attribute name=\"Date\" attributetype=\"Date\"><date>20111121</date></attribute><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Online il Portale del Comune di Villamarina</text><text lang=\"en\">Online the Portal of Villamarina Municipality</text></attribute><attribute name=\"ShortText\" attributetype=\"Longtext\"><text lang=\"it\">Online il Portale del Comune di Villamarina realizzato con la piattaforma jAPS 2.0.</text><text lang=\"en\">Online the Portal of Villamarina Municipality, built with jAPS 2.0 Platform.</text></attribute><attribute name=\"TextBody\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Online<strong> il Portale del Comune di Villamarina, </strong>realizzato con la <strong>piattaforma jAPS 2.0</strong>.</p>\n<p>Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>\n<p>Il nuovo portale &egrave; stato realizzato per dare una risposta all\'altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull\'amministrazione comunale.</p>\n<p>Il sito si presenta con una veste <strong>grafica minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>\n<p>&nbsp;</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Online the Portal of Villamarina Municipality, built with jAPS 2.0 Platform.</p>\n<p>In the institutional portal you can find all the information relating to the municipality and its activities: the offices, decisions and results.</p>\n<p>The new portal is designed to respond to the expectations of citizens who every day are connected to find news and updated information.</p>]]></hypertext></attribute><attribute name=\"Image_1\" attributetype=\"Image\"><resource resourcetype=\"Image\" id=\"26\" lang=\"it\" /><resource resourcetype=\"Image\" id=\"26\" lang=\"en\" /><text lang=\"it\">Spiaggia</text><text lang=\"en\">Villamarina</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /><list attributetype=\"Monolist\" name=\"Documents\" nestedtype=\"Attach\" /></attributes><status>READY</status><version>6.0</version></content>\n','free','6.0','admin'),
 ('SDL42','SDL','Modulo - richiesta carta identità valida per espatrio','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"SDL42\" typecode=\"SDL\" typedescr=\"Scheda Download\"><descr>Modulo - richiesta carta identità valida per espatrio</descr><groups mainGroup=\"free\" /><categories><category id=\"moduli\" /><category id=\"anagrafe\" /></categories><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Anagrafe - Richiesta Carta Identità valida per espatrio</text><text lang=\"en\">Registry - Request Identity Card valid for foreign travel</text></attribute><attribute name=\"ShortDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per la richiesta della carta identit&agrave; valida per espatrio.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Request Form for identity card valid for foreign travel.</p>]]></hypertext></attribute><attribute name=\"LongDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per la richiesta della carta identit&agrave; valida per espatrio, per i cittadini residenti nel Comune di Villamarina.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Request Form for identity card valid for foreign travel, for Villamarina citizens.</p>]]></hypertext></attribute><attribute name=\"Image\" attributetype=\"Image\" /><attribute name=\"File\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"41\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"41\" lang=\"en\" /><text lang=\"it\">Modulo richiesta Carta Identità valida per espatrio</text><text lang=\"en\">Identity Card Request Form</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','20090722134145','20100201154943','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"SDL42\" typecode=\"SDL\" typedescr=\"Scheda Download\"><descr>Modulo - richiesta carta identità valida per espatrio</descr><groups mainGroup=\"free\" /><categories><category id=\"moduli\" /><category id=\"anagrafe\" /></categories><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Anagrafe - Richiesta Carta Identità valida per espatrio</text><text lang=\"en\">Registry - Request Identity Card valid for foreign travel</text></attribute><attribute name=\"ShortDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per la richiesta della carta identit&agrave; valida per espatrio.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Request Form for identity card valid for foreign travel.</p>]]></hypertext></attribute><attribute name=\"LongDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per la richiesta della carta identit&agrave; valida per espatrio, per i cittadini residenti nel Comune di Villamarina.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Request Form for identity card valid for foreign travel, for Villamarina citizens.</p>]]></hypertext></attribute><attribute name=\"Image\" attributetype=\"Image\" /><attribute name=\"File\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"41\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"41\" lang=\"en\" /><text lang=\"it\">Modulo richiesta Carta Identità valida per espatrio</text><text lang=\"en\">Identity Card Request Form</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','free','1.0',NULL),
 ('SDL44','SDL','Autocertificazione Stato Civile','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"SDL44\" typecode=\"SDL\" typedescr=\"Scheda Download\"><descr>Autocertificazione Stato Civile</descr><groups mainGroup=\"free\" /><categories><category id=\"autocertificazioni\" /></categories><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Modulo Autocertificazione Stato Civile</text><text lang=\"en\">Civil Status Self Certification Form</text></attribute><attribute name=\"ShortDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per l\'autocertificazione dello stato civile messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Civil Status Self Certification Form</p>]]></hypertext></attribute><attribute name=\"LongDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per l\'autocertificazione&nbsp;dello stato civile messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Civil Status Self Certification Form</p>]]></hypertext></attribute><attribute name=\"Image\" attributetype=\"Image\" /><attribute name=\"File\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"43\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"43\" lang=\"en\" /><text lang=\"it\">Modulo Certificato Stato Civile</text><text lang=\"en\">Civil Status Self Certification Form</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','20090722143125','20100201154943','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"SDL44\" typecode=\"SDL\" typedescr=\"Scheda Download\"><descr>Autocertificazione Stato Civile</descr><groups mainGroup=\"free\" /><categories><category id=\"autocertificazioni\" /></categories><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Modulo Autocertificazione Stato Civile</text><text lang=\"en\">Civil Status Self Certification Form</text></attribute><attribute name=\"ShortDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per l\'autocertificazione dello stato civile messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Civil Status Self Certification Form</p>]]></hypertext></attribute><attribute name=\"LongDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per l\'autocertificazione&nbsp;dello stato civile messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Civil Status Self Certification Form</p>]]></hypertext></attribute><attribute name=\"Image\" attributetype=\"Image\" /><attribute name=\"File\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"43\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"43\" lang=\"en\" /><text lang=\"it\">Modulo Certificato Stato Civile</text><text lang=\"en\">Civil Status Self Certification Form</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','free','1.0',NULL),
 ('SDL46','SDL','Modulo - richiesta rimborso ICI','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"SDL46\" typecode=\"SDL\" typedescr=\"Scheda Download\"><descr>Modulo - richiesta rimborso ICI</descr><groups mainGroup=\"free\" /><categories><category id=\"moduli\" /><category id=\"tributi\" /></categories><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Tributi - Richiesta rimborso ICI</text><text lang=\"en\">Tax - Request ICI refund</text></attribute><attribute name=\"ShortDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per la richiesta del rimborso ICI</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Request Form for ICI refund.</p>]]></hypertext></attribute><attribute name=\"LongDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per la richiesta del del rimborso ICI per i cittadini residenti nel Comune di Villamarina.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>&nbsp;Request Form for ICI refund, for Villamarina citizens.</p>]]></hypertext></attribute><attribute name=\"Image\" attributetype=\"Image\" /><attribute name=\"File\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"45\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"45\" lang=\"en\" /><text lang=\"it\">Modulo richiesta rimborso ICI</text><text lang=\"en\">Request Form</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','20090722143535','20100201154943','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"SDL46\" typecode=\"SDL\" typedescr=\"Scheda Download\"><descr>Modulo - richiesta rimborso ICI</descr><groups mainGroup=\"free\" /><categories><category id=\"moduli\" /><category id=\"tributi\" /></categories><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Tributi - Richiesta rimborso ICI</text><text lang=\"en\">Tax - Request ICI refund</text></attribute><attribute name=\"ShortDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per la richiesta del rimborso ICI</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Request Form for ICI refund.</p>]]></hypertext></attribute><attribute name=\"LongDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per la richiesta del del rimborso ICI per i cittadini residenti nel Comune di Villamarina.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>&nbsp;Request Form for ICI refund, for Villamarina citizens.</p>]]></hypertext></attribute><attribute name=\"Image\" attributetype=\"Image\" /><attribute name=\"File\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"45\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"45\" lang=\"en\" /><text lang=\"it\">Modulo richiesta rimborso ICI</text><text lang=\"en\">Request Form</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /></attributes><status>READY</status><versionId>1.0</versionId></content>\n','free','1.0',NULL),
 ('SDL7','SDL','Autocertificazione Residenza','READY','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"SDL7\" typecode=\"SDL\" typedescr=\"Scheda Download\"><descr>Autocertificazione Residenza</descr><groups mainGroup=\"free\" /><categories><category id=\"autocertificazioni\" /></categories><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Modulo Autocertificazione Residenza</text><text lang=\"en\">Residence Self-certification Form</text></attribute><attribute name=\"ShortDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per l\'autocertificazione di residenza messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Residence Self-certification form.</p>]]></hypertext></attribute><attribute name=\"LongDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per l\'autocertificazione di residenza&nbsp;messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Residence Self-certification form.</p>]]></hypertext></attribute><attribute name=\"Image\" attributetype=\"Image\" /><attribute name=\"File\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"40\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"40\" lang=\"en\" /><text lang=\"it\">Certificato di residenza</text><text lang=\"en\">Residence Self-certification form</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','20090219165640','20100201154943','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<content id=\"SDL7\" typecode=\"SDL\" typedescr=\"Scheda Download\"><descr>Autocertificazione Residenza</descr><groups mainGroup=\"free\" /><categories><category id=\"autocertificazioni\" /></categories><attributes><attribute name=\"Title\" attributetype=\"Text\"><text lang=\"it\">Modulo Autocertificazione Residenza</text><text lang=\"en\">Residence Self-certification Form</text></attribute><attribute name=\"ShortDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per l\'autocertificazione di residenza messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Residence Self-certification form.</p>]]></hypertext></attribute><attribute name=\"LongDescr\" attributetype=\"Hypertext\"><hypertext lang=\"it\"><![CDATA[<p>Modulo per l\'autocertificazione di residenza&nbsp;messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>]]></hypertext><hypertext lang=\"en\"><![CDATA[<p>Residence Self-certification form.</p>]]></hypertext></attribute><attribute name=\"Image\" attributetype=\"Image\" /><attribute name=\"File\" attributetype=\"Attach\"><resource resourcetype=\"Attach\" id=\"40\" lang=\"it\" /><resource resourcetype=\"Attach\" id=\"40\" lang=\"en\" /><text lang=\"it\">Certificato di residenza</text><text lang=\"en\">Residence Self-certification form</text></attribute><list attributetype=\"Monolist\" name=\"Links\" nestedtype=\"Link\" /></attributes><status>READY</status><versionId>2.0</versionId></content>\n','free','1.0',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`contentsearch`
--

DROP TABLE IF EXISTS `portalexamplePort`.`contentsearch`;
CREATE TABLE  `portalexamplePort`.`contentsearch` (
  `contentid` varchar(16) NOT NULL,
  `attrname` varchar(30) NOT NULL,
  `textvalue` varchar(255) DEFAULT NULL,
  `datevalue` date DEFAULT NULL,
  `numvalue` int(11) DEFAULT NULL,
  `langcode` varchar(2) DEFAULT NULL,
  KEY `contentsearch_contentid_fkey` (`contentid`),
  CONSTRAINT `contentsearch_contentid_fkey` FOREIGN KEY (`contentid`) REFERENCES `contents` (`contentid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`contentsearch`
--

/*!40000 ALTER TABLE `contentsearch` DISABLE KEYS */;
LOCK TABLES `contentsearch` WRITE;
INSERT INTO `portalexamplePort`.`contentsearch` VALUES  ('NEW3','Date',NULL,'2011-11-21',NULL,NULL),
 ('NEW3','Title','Online the Portal of Villamarina Municipality',NULL,NULL,'en'),
 ('NEW3','Title','Online il Portale del Comune di Villamarina',NULL,NULL,'it'),
 ('NEW177','Date',NULL,'2011-06-15',NULL,NULL),
 ('NEW177','Title','Online the Mobile Portal',NULL,NULL,'en'),
 ('NEW177','Title','Online il Portale Mobile',NULL,NULL,'it'),
 ('NEW23','Date',NULL,'2011-10-21',NULL,NULL),
 ('NEW23','Title','Ground Rent Contribution',NULL,NULL,'en'),
 ('NEW23','Title','Contributo canone di locazione 2011',NULL,NULL,'it'),
 ('NEW27','Date',NULL,'2011-07-20',NULL,NULL),
 ('NEW27','Title','Folk Music Festival',NULL,NULL,'en'),
 ('NEW27','Title','Festival della canzone popolare',NULL,NULL,'it'),
 ('DLB4','Number',NULL,NULL,133,NULL),
 ('DLB4','Date',NULL,'2011-09-20',NULL,NULL),
 ('DLB30','Number',NULL,NULL,20,NULL),
 ('DLB30','Date',NULL,'2011-10-04',NULL,NULL),
 ('DLB32','Number',NULL,NULL,120,NULL),
 ('DLB32','Date',NULL,'2011-07-01',NULL,NULL),
 ('DLB36','Number',NULL,NULL,15,NULL),
 ('DLB36','Date',NULL,'2011-07-16',NULL,NULL),
 ('CNG20','Title','Statute',NULL,NULL,'en'),
 ('CNG20','Title','Statuto',NULL,NULL,'it'),
 ('CNG16','Title','Internal Servlet',NULL,NULL,'en'),
 ('CNG16','Title','Internal Servlet',NULL,NULL,'it'),
 ('CNG15','Title','Application Service Example',NULL,NULL,'en'),
 ('CNG15','Title','Esempio Servizio Applicativo',NULL,NULL,'it'),
 ('CNG19','Title','Consiglio Comunale',NULL,NULL,'it'),
 ('CNG54','Title','Delibere',NULL,NULL,'it'),
 ('CNG55','Title','Bandi',NULL,NULL,'it'),
 ('CNG53','Title','Notizie',NULL,NULL,'it'),
 ('CNG29','Title','Elenco delle Delibere di Consiglio presenti nel portale del Comune',NULL,NULL,'it'),
 ('CNG28','Title','Elenco delle Delibere di Giunta presenti nel portale del Comune',NULL,NULL,'it'),
 ('CNG17','Title','Mayor',NULL,NULL,'en'),
 ('CNG17','Title','Sindaco',NULL,NULL,'it'),
 ('CNG49','Title','Public Relations Office',NULL,NULL,'en'),
 ('CNG49','Title','URP - Ufficio Relazioni con il Pubblico',NULL,NULL,'it'),
 ('CNG14','Title','Documents Archive',NULL,NULL,'en'),
 ('CNG14','Title','Archivio Modulistica',NULL,NULL,'it'),
 ('CNG11','Title','Announcements Archive',NULL,NULL,'en'),
 ('CNG11','Title','Archivio Bandi',NULL,NULL,'it'),
 ('CNG12','Title','News Archive',NULL,NULL,'en'),
 ('CNG12','Title','Archivio Notizie',NULL,NULL,'it'),
 ('CNG13','Title','Decisions Archive',NULL,NULL,'en'),
 ('CNG13','Title','Archivio Delibere',NULL,NULL,'it'),
 ('CNG2','Title','Lorem Ipsum dolor sit amet',NULL,NULL,'it'),
 ('CNG51','Title','Mobile Area',NULL,NULL,'en'),
 ('CNG51','Title','Area Mobile',NULL,NULL,'it'),
 ('CNG146','Title','ePartecipation',NULL,NULL,'en'),
 ('CNG146','Title','ePartecipation',NULL,NULL,'it'),
 ('CNG256','Title','How to sign in',NULL,NULL,'en'),
 ('CNG256','Title','Come loggarsi',NULL,NULL,'it'),
 ('CNG18','Title','Council',NULL,NULL,'en'),
 ('CNG18','Title','Giunta Comunale',NULL,NULL,'it'),
 ('CNG173','Title','Web Accessibility',NULL,NULL,'en'),
 ('CNG173','Title','Accessibilità',NULL,NULL,'it'),
 ('BND39','StartDate',NULL,'2011-02-01',NULL,NULL),
 ('BND39','EndDate',NULL,'2011-11-30',NULL,NULL),
 ('BND48','StartDate',NULL,'2011-02-28',NULL,NULL),
 ('BND48','EndDate',NULL,'2011-10-27',NULL,NULL),
 ('BND5','StartDate',NULL,'2011-03-03',NULL,NULL),
 ('BND5','EndDate',NULL,'2011-11-14',NULL,NULL),
 ('SDL46','Title','Tax - Request ICI refund',NULL,NULL,'en'),
 ('SDL46','Title','Tributi - Richiesta rimborso ICI',NULL,NULL,'it'),
 ('SDL7','Title','Residence Self-certification Form',NULL,NULL,'en'),
 ('SDL7','Title','Modulo Autocertificazione Residenza',NULL,NULL,'it'),
 ('SDL44','Title','Civil Status Self Certification Form',NULL,NULL,'en'),
 ('SDL44','Title','Modulo Autocertificazione Stato Civile',NULL,NULL,'it'),
 ('SDL42','Title','Registry - Request Identity Card valid for foreign travel',NULL,NULL,'en'),
 ('SDL42','Title','Anagrafe - Richiesta Carta Identità valida per espatrio',NULL,NULL,'it');
UNLOCK TABLES;
/*!40000 ALTER TABLE `contentsearch` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`localstrings`
--

DROP TABLE IF EXISTS `portalexamplePort`.`localstrings`;
CREATE TABLE  `portalexamplePort`.`localstrings` (
  `keycode` varchar(50) NOT NULL,
  `langcode` varchar(2) NOT NULL,
  `stringvalue` longtext NOT NULL,
  PRIMARY KEY (`keycode`,`langcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`localstrings`
--

/*!40000 ALTER TABLE `localstrings` DISABLE KEYS */;
LOCK TABLES `localstrings` WRITE;
INSERT INTO `portalexamplePort`.`localstrings` VALUES  ('ADMINISTRATION','en','Administration'),
 ('ADMINISTRATION','it','Gestisci'),
 ('ADMINISTRATION_BASIC','en','Normal'),
 ('ADMINISTRATION_BASIC','it','Normale'),
 ('ADMINISTRATION_BASIC_GOTO','en','Go to the administration with normal client'),
 ('ADMINISTRATION_BASIC_GOTO','it','Accedi con client normale'),
 ('ADMINISTRATION_MINT','en','Advanced'),
 ('ADMINISTRATION_MINT','it','Avanzata'),
 ('ADMINISTRATION_MINT_GOTO','en','Go to the administration with advanced client'),
 ('ADMINISTRATION_MINT_GOTO','it','Accedi con client avanzato'),
 ('AI','en','at the'),
 ('AI','it','ai'),
 ('AL','en','at the'),
 ('AL','it','al'),
 ('ALL','en','All'),
 ('ALL','it','Tutte'),
 ('ALLA','en','at the'),
 ('ALLA','it','alla'),
 ('ALLE','en','at the'),
 ('ALLE','it','alle'),
 ('ATTACHES','en','Attachments'),
 ('ATTACHES','it','Allegati'),
 ('BACK_TO_CARDS_LIST','en','Returned to the list'),
 ('BACK_TO_CARDS_LIST','it','Torna alla lista'),
 ('BACK_TO_THE_TOP','en','Back to the top'),
 ('BACK_TO_THE_TOP','it','Torna all\'inizio'),
 ('BOTH','en','Both'),
 ('BOTH','it','Entrambi'),
 ('CARDS_NUMBER','en','Number Cards'),
 ('CARDS_NUMBER','it','Numero Schede'),
 ('CARD_CREATION_DATE','en','Release Date'),
 ('CARD_CREATION_DATE','it','Data Rilascio'),
 ('CARD_DESCRIPTION','en','Area Pass'),
 ('CARD_DESCRIPTION','it','Zona Pass'),
 ('CARD_HOLDER','en','Holder'),
 ('CARD_HOLDER','it','Titolare'),
 ('CARD_NOTE','en','Note'),
 ('CARD_NOTE','it','Note'),
 ('CATEGORIES','en','Categories'),
 ('CATEGORIES','it','Categorie'),
 ('CATEGORY','en','Category'),
 ('CATEGORY','it','Categoria'),
 ('CNG_Image2_OgnlErrorMessage','en','Image 2 can be inserted if Image 1 is valued'),
 ('CNG_Image2_OgnlErrorMessage','it','L\'immagine 2 può essere inserita se presente immagine 1'),
 ('CONTENTS','en','Contents'),
 ('CONTENTS','it','Contenuti'),
 ('COPYRIGHT','en','<span lang=\"en\">Copyright &copy; Entando srl 2012</span>'),
 ('COPYRIGHT','it','<span lang=\"en\">Copyright &copy; Entando srl 2012</span>'),
 ('CREDITS_POWERED_BY','en','<span lang=\"en\">Powered by </span><a href=\"http://www.entando.com/\"><span lang=\"en\">Entando 3.0</span></a>'),
 ('CREDITS_POWERED_BY','it','<span lang=\"en\">Powered by </span><a href=\"http://www.entando.com/\"><span lang=\"en\">Entando 3.0</span></a>'),
 ('DATE_FROM','en','From'),
 ('DATE_FROM','it','Da'),
 ('DATE_TO','en','To'),
 ('DATE_TO','it','A'),
 ('DISCLAIMER','en','Warning!'),
 ('DISCLAIMER','it','Attenzione!'),
 ('DISCLAIMER_NOTE','en','You are browsing with Microsoft Internet Explorer 6.<br />Your browser is old, way too easy for virus makers, and it doesn\'t know the standards which are the basics of the World Wide Web.<br />More, this web portal has not been written trying to fix the bugs of your browser.<br />A simple solution might be for you to <a href=\"http://www.microsoft.com/windows/downloads/ie/getitnow.mspx\">get version 7 or newer</a>.<br />You might also like to use a different browser instead.'),
 ('DISCLAIMER_NOTE','it','Stai utilizzando Microsoft Internet Explorer 6.<br />Il tuo browser è vecchio, una pacchia per i creatori di virus informatici, e irrispettoso degli standard che sono alla base del World Wide Web.<br />Inoltre questo portale non è stato sviluppato nel tentativo di risolvere i problemi del tuo browser.<br />Una soluzione facile per te, sarebbe quella di <a href=\"http://www.microsoft.com/windows/downloads/ie/getitnow.mspx\">aggiornare il tuo browser alla versione 7 o successive</a>.<br />Oppure potresti decidere di utilizzare un altro browser.'),
 ('DOWNLOAD_THIS','en','Download this'),
 ('DOWNLOAD_THIS','it','Scarica'),
 ('EDIT','en','Edit'),
 ('EDIT','it','Modifica'),
 ('EDIT_THIS_CONTENT','en','Edit this Content'),
 ('EDIT_THIS_CONTENT','it','Modifica il Contenuto'),
 ('EDIT_THIS_PAGE','en','Manage this Page'),
 ('EDIT_THIS_PAGE','it','Gestione Pagina'),
 ('END','en','To'),
 ('END','it','Fino a'),
 ('ERRORS','en','Errors'),
 ('ERRORS','it','Errori'),
 ('GENERIC_ERROR','en','Generic Error'),
 ('GENERIC_ERROR','it','Errore Generico'),
 ('IGNORE','en','Ignore this field'),
 ('IGNORE','it','Ignora questo campo'),
 ('jacms_LIST_VIEWER_FIELD','en','The field'),
 ('jacms_LIST_VIEWER_FIELD','it','Il campo'),
 ('jacms_LIST_VIEWER_INVALID_FORMAT','en','has a format that is not valid.'),
 ('jacms_LIST_VIEWER_INVALID_FORMAT','it','ha un formato che risulta non valido.'),
 ('jacms_LIST_VIEWER_INVALID_RANGE','en','has a value not consistent. Check and start a new search.'),
 ('jacms_LIST_VIEWER_INVALID_RANGE','it','ha un valore non coerente. Ricontrolla ed effettua una nuova ricerca.'),
 ('LABEL_PAGE','en','Page'),
 ('LABEL_PAGE','it','Pagina'),
 ('LANGUAGE','en','Language'),
 ('LANGUAGE','it','Lingua'),
 ('LATEST_BANDI','en','Latest Announcements'),
 ('LATEST_BANDI','it','Ultimi Bandi'),
 ('LATEST_DELIBERE','en','Latest Decisions'),
 ('LATEST_DELIBERE','it','Ultime Delibere'),
 ('LATEST_NEW','en','Latest News'),
 ('LATEST_NEW','it','Ultime Notizie'),
 ('LATEST_NEWS','en','Latest News'),
 ('LATEST_NEWS','it','Ultime Notizie'),
 ('LINKS','en','Links'),
 ('LINKS','it','Riferimenti'),
 ('LIST_VIEWER_EMPTY','en','No results found. Check your search filters.'),
 ('LIST_VIEWER_EMPTY','it','Nessun risultato trovato. Controlla i tuoi filtri di ricerca.'),
 ('LOGIN','en','Login'),
 ('LOGIN','it','Login'),
 ('LOGOUT','en','Exit'),
 ('LOGOUT','it','Esci'),
 ('MAIN_SUBTITLE','en','Official Site'),
 ('MAIN_SUBTITLE','it','Sito Istituzionale'),
 ('MAIN_TITLE','en','Villamarina Municipality'),
 ('MAIN_TITLE','it','Comune di Villamarina'),
 ('MENU_NAVIGATION','en','Navigation menù'),
 ('MENU_NAVIGATION','it','Menù di navigazione'),
 ('NEWS_ARCHIVE','en','Archive News'),
 ('NEWS_ARCHIVE','it','Archivio Notizie'),
 ('NEXT','en','Next'),
 ('NEXT','it','Successivi'),
 ('NO','en','No'),
 ('NO','it','No'),
 ('NUMBER_FROM','en','From'),
 ('NUMBER_FROM','it','Da'),
 ('NUMBER_TO','en','To'),
 ('NUMBER_TO','it','A'),
 ('PAGE','en','page'),
 ('PAGE','it','pagina'),
 ('PAGE_DETAILS','en','Page Details'),
 ('PAGE_DETAILS','it','Dettagli della Pagina'),
 ('PAGE_MODEL','en','page model'),
 ('PAGE_MODEL','it','modello pagina'),
 ('PAGE_NOT_FOUND','en','Page not found'),
 ('PAGE_NOT_FOUND','it','Pagina non trovata'),
 ('PAGE_TITLE','en','page title'),
 ('PAGE_TITLE','it','titolo pagina'),
 ('PASSWORD','en','password'),
 ('PASSWORD','it','password'),
 ('PREV','en','Previous'),
 ('PREV','it','Precedenti'),
 ('RESERVED_AREA','en','Reserved area'),
 ('RESERVED_AREA','it','Area riservata'),
 ('SEARCH','en','Search'),
 ('SEARCH','it','Cerca'),
 ('SEARCHED_FOR','en','You searched for'),
 ('SEARCHED_FOR','it','Hai cercato'),
 ('SEARCH_CARDS','en','Search Cards'),
 ('SEARCH_CARDS','it','Cerca Scheda'),
 ('SEARCH_ENGINE','en','Search Engine'),
 ('SEARCH_ENGINE','it','Ricerca'),
 ('SEARCH_FOR','en','Search for'),
 ('SEARCH_FOR','it','Cerca per'),
 ('SEARCH_NOTHING_FOUND','en','Nothing found.'),
 ('SEARCH_NOTHING_FOUND','it','Non è stato trovato alcun risultato'),
 ('SEARCH_RESULTS','en','Search Result'),
 ('SEARCH_RESULTS','it','Risultati della Ricerca'),
 ('SEARCH_RESULTS_INTRO','en','Found'),
 ('SEARCH_RESULTS_INTRO','it','Sono stati trovati'),
 ('SEARCH_RESULTS_OUTRO','en','matchings'),
 ('SEARCH_RESULTS_OUTRO','it','risultati'),
 ('SERVICES','en','The following services are available on this page'),
 ('SERVICES','it','In questa pagina sono disponibili'),
 ('SKIP','en','Skip'),
 ('SKIP','it','Salta'),
 ('SKIP_ALL','en','Go to Contents'),
 ('SKIP_ALL','it','Salta ai Contenuti'),
 ('START','en','From'),
 ('START','it','Da'),
 ('TEXT','en','Text'),
 ('TEXT','it','Testo'),
 ('USERNAME','en','username'),
 ('USERNAME','it','utente'),
 ('USER_DATE_ACCESS_LAST','en','Last login'),
 ('USER_DATE_ACCESS_LAST','it','Ultimo accesso'),
 ('USER_DATE_CREATION','en','Registered'),
 ('USER_DATE_CREATION','it','Registrato'),
 ('USER_DATE_PASSWORD_CHANGE_LAST','en','Last password change'),
 ('USER_DATE_PASSWORD_CHANGE_LAST','it','Ultimo rinnovo password'),
 ('USER_NOT_ALLOWED','en','User not allowed'),
 ('USER_NOT_ALLOWED','it','Utente non autorizzato'),
 ('USER_STATUS_CREDENTIALS_INVALID','en','Invalid credentials.'),
 ('USER_STATUS_CREDENTIALS_INVALID','it','Username o password non corretti.'),
 ('USER_STATUS_EXPIRED','en','Expired account'),
 ('USER_STATUS_EXPIRED','it','Utenza scaduta'),
 ('VAI_PAGINA','en','Go to page'),
 ('VAI_PAGINA','it','Vai alla pagina'),
 ('VIEW_CARD','en','Details'),
 ('VIEW_CARD','it','Dettagli'),
 ('WELCOME','en','Welcome'),
 ('WELCOME','it','Benvenuto/a'),
 ('YES','en','Yes'),
 ('YES','it','Si'),
 ('YOU_ARE_HERE','en','You are here'),
 ('YOU_ARE_HERE','it','Sei qui');
UNLOCK TABLES;
/*!40000 ALTER TABLE `localstrings` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`pagemodels`
--

DROP TABLE IF EXISTS `portalexamplePort`.`pagemodels`;
CREATE TABLE  `portalexamplePort`.`pagemodels` (
  `code` varchar(40) NOT NULL,
  `descr` varchar(50) NOT NULL,
  `frames` longtext,
  `plugincode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`pagemodels`
--

/*!40000 ALTER TABLE `pagemodels` DISABLE KEYS */;
LOCK TABLES `pagemodels` WRITE;
INSERT INTO `portalexamplePort`.`pagemodels` VALUES  ('home','Home Page','<frames>\n	<frame pos=\"0\">\n		<descr>Choose Language</descr>\n		<defaultShowlet code=\"language_choose\" />\n	</frame>\n	<frame pos=\"1\">\n		<descr>Search Form</descr>\n		<defaultShowlet code=\"search_form\" />\n	</frame>\n	<frame pos=\"2\">\n		<descr>Breadcrumbs</descr>\n		<defaultShowlet code=\"navigation_breadcrumbs\" />\n	</frame>\n	<frame pos=\"3\">\n		<descr>First Column: Box 1</descr>\n		<defaultShowlet code=\"navigation_menu\">\n			<properties>\n				<property key=\"navSpec\">code(comune).subtree(1)+code(trasparenza).subtree(1)+code(servizi_online).subtree(1)</property>\n			</properties>\n		</defaultShowlet>		\n	</frame>\n	<frame pos=\"4\">\n		<descr>First Column: Box 2</descr>\n	</frame>\n	<frame pos=\"5\">\n		<descr>First Column: Box 3</descr>\n	</frame>\n	<frame pos=\"6\">\n		<descr>Main Column: Box 1</descr>\n	</frame>\n	<frame pos=\"7\">\n		<descr>Main Column: Box 2</descr>\n	</frame>\n	<frame pos=\"8\">\n		<descr>Main Column: Box 3</descr>		\n	</frame>\n	<frame pos=\"9\">\n		<descr>Main Column: Box 4</descr>\n		<defaultShowlet code=\"bandi_latest\" />	\n	</frame>	\n	<frame pos=\"10\">\n		<descr>Main Column: Box 5</descr>\n		<defaultShowlet code=\"delibere_latest\" />\n	</frame>\n	<frame pos=\"11\">\n		<descr>Third Column: Box 1</descr>\n		<defaultShowlet code=\"login_form\" />\n	</frame>\n	<frame pos=\"12\">\n		<descr>Third Column: Box 2</descr>\n		<defaultShowlet code=\"news_latest\" />\n	</frame>\n	<frame pos=\"13\">\n		<descr>Third Column: Box 3</descr>\n	</frame>		\n</frames>',NULL),
 ('internal','Internal Page','<frames>\n	<frame pos=\"0\">\n		<descr>Choose Language</descr>\n		<defaultShowlet code=\"language_choose\" />\n	</frame>\n	<frame pos=\"1\">\n		<descr>Search Form</descr>\n		<defaultShowlet code=\"search_form\" />\n	</frame>\n	<frame pos=\"2\">\n		<descr>Breadcrumbs</descr>\n		<defaultShowlet code=\"navigation_breadcrumbs\" />\n	</frame>\n	<frame pos=\"3\">\n		<descr>First Column: Box 1</descr>\n		<defaultShowlet code=\"navigation_menu\">\n			<properties>\n				<property key=\"navSpec\">code(comune).subtree(1)+code(trasparenza).subtree(1)+code(servizi_online).subtree(1)</property>\n			</properties>\n		</defaultShowlet>		\n	</frame>\n	<frame pos=\"4\">\n		<descr>First Column: Box 2</descr>\n	</frame>\n	<frame pos=\"5\">\n		<descr>First Column: Box 3</descr>\n	</frame>\n	<frame pos=\"6\" main=\"true\">\n		<descr>Main Column: Box 1</descr>\n	</frame>\n	<frame pos=\"7\">\n		<descr>Main Column: Box 2</descr>\n	</frame>\n	<frame pos=\"8\">\n		<descr>Main Column: Box 3</descr>\n	</frame>\n	<frame pos=\"9\">\n		<descr>Main Column: Box 4</descr>\n	</frame>	\n	<frame pos=\"10\">\n		<descr>Main Column: Box 5</descr>\n	</frame>\n	<frame pos=\"11\">\n		<descr>Third Column: Box 1</descr>\n	</frame>\n	<frame pos=\"12\">\n		<descr>Third Column: Box 2</descr>\n		<defaultShowlet code=\"news_latest\" />\n	</frame>\n	<frame pos=\"13\">\n		<descr>Third Column: Box 3</descr>\n	</frame>		\n</frames>',NULL),
 ('mobile','Mobile Page','<frames>\n	<frame pos=\"0\">\n		<descr>Choose Language</descr>\n		<defaultShowlet code=\"language_choose\" />\n	</frame>\n	<frame pos=\"1\">\n		<descr>Breadcrumbs</descr>\n		<defaultShowlet code=\"navigation_breadcrumbs\" />\n	</frame>\n	<frame pos=\"2\" main=\"true\">\n		<descr>Main Column: Box 1</descr>\n	</frame>\n	<frame pos=\"3\">\n		<descr>Main Column: Box 2</descr>\n	</frame>\n	<frame pos=\"4\">\n		<descr>Main Column: Box 3</descr>\n	</frame>\n	<frame pos=\"5\">\n		<descr>Main Column: Box 4</descr>\n	</frame>\n	<frame pos=\"6\">\n		<descr>Main Column: Box 5</descr>\n	</frame>\n	<frame pos=\"7\">\n		<descr>Main Column: Box 6</descr>\n	</frame>\n</frames>',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pagemodels` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`pages`
--

DROP TABLE IF EXISTS `portalexamplePort`.`pages`;
CREATE TABLE  `portalexamplePort`.`pages` (
  `code` varchar(30) NOT NULL,
  `parentcode` varchar(30) DEFAULT NULL,
  `pos` int(11) NOT NULL,
  `modelcode` varchar(40) NOT NULL,
  `titles` longtext,
  `groupcode` varchar(30) NOT NULL,
  `showinmenu` tinyint(4) NOT NULL,
  `extraconfig` longtext,
  PRIMARY KEY (`code`),
  KEY `pages_modelcode_fkey` (`modelcode`),
  CONSTRAINT `pages_modelcode_fkey` FOREIGN KEY (`modelcode`) REFERENCES `pagemodels` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`pages`
--

/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
LOCK TABLES `pages` WRITE;
INSERT INTO `portalexamplePort`.`pages` VALUES  ('autocertificazioni','servizi_online',2,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Self Certification</property>\n<property key=\"it\">Certificazioni</property>\n</properties>\n\n','free',1,NULL),
 ('bandi','trasparenza',3,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Announcements</property>\n<property key=\"it\">Bandi</property>\n</properties>\n\n','free',1,NULL),
 ('bandoview','bandi',1,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Announcements Details</property>\n<property key=\"it\">Dettagli del bando</property>\n</properties>\n\n','free',1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<config>\n  <useextratitles>true</useextratitles>\n</config>\n\n'),
 ('comune','homepage',2,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Municipality</property>\n<property key=\"it\">Il Comune</property>\n</properties>\n\n','free',1,NULL),
 ('consiglio_comunale','comune',3,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Municipal Council</property>\n<property key=\"it\">Consiglio Comunale</property>\n</properties>\n\n','free',1,NULL),
 ('contatti','homepage',5,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Contact</property>\n<property key=\"it\">Contatti</property>\n</properties>\n\n','free',1,NULL),
 ('contentview','service',5,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Read the full article</property>\n<property key=\"it\">Leggi il contenuto</property>\n</properties>\n\n','free',1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<config>\n  <useextratitles>true</useextratitles>\n</config>\n\n'),
 ('deliberaview','delibere',1,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Decision Details</property>\n<property key=\"it\">Dettaglio della delibera</property>\n</properties>\n\n','free',0,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<config>\n  <useextratitles>true</useextratitles>\n</config>\n\n'),
 ('delibere','trasparenza',2,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Decisions</property>\n<property key=\"it\">Delibere</property>\n</properties>\n\n','free',1,NULL),
 ('delibere_consiglio','delibere',3,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Council decisions</property>\n<property key=\"it\">Delibere di Consiglio</property>\n</properties>\n\n','free',1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<config>\n  <useextratitles>false</useextratitles>\n</config>\n\n'),
 ('delibere_giunta','delibere',2,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Giunta Decisions</property>\n<property key=\"it\">Delibere di Giunta</property>\n</properties>\n\n','free',1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<config>\n  <useextratitles>false</useextratitles>\n</config>\n\n'),
 ('dlview','moduli',1,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Document Details</property>\n<property key=\"it\">Dettaglio Modulistica</property>\n</properties>\n\n','free',1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<config>\n  <useextratitles>true</useextratitles>\n</config>\n\n'),
 ('errorpage','service',5,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Error page</property>\n<property key=\"it\">Pagina di errore</property>\n</properties>\n\n','free',1,NULL),
 ('faqview','service',8,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Faq</property>\n<property key=\"it\">Faq</property>\n</properties>\n\n','free',1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<config>\n  <useextratitles>true</useextratitles>\n</config>\n\n'),
 ('giunta_comunale','comune',2,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Council</property>\n<property key=\"it\">Giunta Comunale</property>\n</properties>\n\n','free',1,NULL),
 ('homepage','homepage',-1,'home','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Home</property>\n<property key=\"it\">Home</property>\n</properties>\n\n','free',1,NULL),
 ('login','service',6,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Login</property>\n<property key=\"it\">Pagina di login</property>\n</properties>\n\n','free',1,NULL),
 ('mobile','homepage',6,'home','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">MOBILE</property>\n<property key=\"it\">MOBILE</property>\n</properties>\n\n','free',0,NULL),
 ('mobile_bandi','mobile_trasparenza',3,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Announcements</property>\n<property key=\"it\">Bandi</property>\n</properties>\n\n','free',1,NULL),
 ('mobile_comune','mobile_home',1,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Council</property>\n<property key=\"it\">Il Comune</property>\n</properties>\n\n','free',1,NULL),
 ('mobile_consiglio_comunale','mobile_comune',3,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Municipal Council</property>\n<property key=\"it\">Consiglio Comunale</property>\n</properties>\n\n','free',1,NULL),
 ('mobile_contentview','mobile_service',1,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">The Content</property>\n<property key=\"it\">Leggi il contenuto</property>\n</properties>\n\n','free',1,NULL),
 ('mobile_delibere','mobile_trasparenza',2,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Decision</property>\n<property key=\"it\">Delibere</property>\n</properties>\n\n','free',1,NULL),
 ('mobile_giunta_comunale','mobile_comune',2,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Council</property>\n<property key=\"it\">Giunta Comunale</property>\n</properties>\n\n','free',1,NULL),
 ('mobile_home','mobile',1,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Mobile Home</property>\n<property key=\"it\">Home Mobile</property>\n</properties>\n\n','free',1,NULL),
 ('mobile_notizie','mobile_trasparenza',1,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">News</property>\n<property key=\"it\">Notizie</property>\n</properties>\n\n','free',1,NULL),
 ('mobile_service','mobile_home',3,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Service Pages</property>\n<property key=\"it\">Pagine di Servizio</property>\n</properties>\n\n','free',0,NULL),
 ('mobile_sindaco','mobile_comune',1,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Mayor</property>\n<property key=\"it\">Sindaco</property>\n</properties>\n\n','free',1,NULL),
 ('mobile_trasparenza','mobile_home',2,'mobile','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Information</property>\n<property key=\"it\">Trasparenza</property>\n</properties>\n\n','free',1,NULL),
 ('moduli','servizi_online',1,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Documents</property>\n<property key=\"it\">Modulistica</property>\n</properties>\n\n','free',1,NULL),
 ('newsview','notizie',1,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Read the news</property>\n<property key=\"it\">Leggi la notizia</property>\n</properties>\n\n','free',1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<config>\n  <useextratitles>true</useextratitles>\n</config>\n\n'),
 ('notfound','service',4,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Page not found</property>\n<property key=\"it\">Pagina non trovata</property>\n</properties>\n\n','free',1,NULL),
 ('notizie','trasparenza',1,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">News</property>\n<property key=\"it\">Notizie</property>\n</properties>\n\n','free',1,NULL),
 ('old_town_traffic_pass','servizi_online',3,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Limited Traffic Zone Pass</property>\n<property key=\"it\">Pass ZTL</property>\n</properties>\n\n','free',1,NULL),
 ('old_town_traffic_pass_int','old_town_traffic_pass',1,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Limited Traffic Zone Pass</property>\n<property key=\"it\">Pass ZTL</property>\n</properties>\n\n','free',1,NULL),
 ('rssview','service',9,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Read the insight</property>\n<property key=\"it\">Leggi l\'approfondimento</property>\n</properties>\n\n','free',1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<config>\n  <useextratitles>true</useextratitles>\n</config>\n\n'),
 ('search_result','service',4,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Search Result</property>\n<property key=\"it\">Risultati della Ricerca</property>\n</properties>\n\n','free',1,NULL),
 ('service','homepage',5,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Service</property>\n<property key=\"it\">Pagine di Servizio</property>\n</properties>\n\n','free',0,NULL),
 ('servizi_online','homepage',4,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Online Services</property>\n<property key=\"it\">Servizi Online</property>\n</properties>\n\n','free',1,NULL),
 ('simview','service',7,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Image details</property>\n<property key=\"it\">Dettagli Scheda Immagine</property>\n</properties>\n\n','free',1,NULL),
 ('sindaco','comune',1,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Mayor</property>\n<property key=\"it\">Sindaco</property>\n</properties>\n\n','free',1,NULL),
 ('statuto','comune',4,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Statute</property>\n<property key=\"it\">Statuto</property>\n</properties>\n\n','free',1,NULL),
 ('trasparenza','homepage',3,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Information</property>\n<property key=\"it\">Trasparenza</property>\n</properties>\n\n','free',1,NULL),
 ('urp','contatti',1,'internal','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Public Relations Office</property>\n<property key=\"it\">URP - Ufficio Relazioni con il Pubblico</property>\n</properties>\n\n','free',1,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`resourcerelations`
--

DROP TABLE IF EXISTS `portalexamplePort`.`resourcerelations`;
CREATE TABLE  `portalexamplePort`.`resourcerelations` (
  `resid` varchar(16) NOT NULL,
  `refcategory` varchar(30) DEFAULT NULL,
  KEY `resourcerelations_refcategory_fkey` (`refcategory`),
  KEY `resourcerelations_resid_fkey` (`resid`),
  CONSTRAINT `resourcerelations_refcategory_fkey` FOREIGN KEY (`refcategory`) REFERENCES `categories` (`catcode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resourcerelations_resid_fkey` FOREIGN KEY (`resid`) REFERENCES `resources` (`resid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`resourcerelations`
--

/*!40000 ALTER TABLE `resourcerelations` DISABLE KEYS */;
LOCK TABLES `resourcerelations` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `resourcerelations` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`resources`
--

DROP TABLE IF EXISTS `portalexamplePort`.`resources`;
CREATE TABLE  `portalexamplePort`.`resources` (
  `resid` varchar(16) NOT NULL,
  `restype` varchar(30) NOT NULL,
  `descr` varchar(260) NOT NULL,
  `maingroup` varchar(20) NOT NULL,
  `resourcexml` longtext NOT NULL,
  `masterfilename` varchar(100) NOT NULL,
  PRIMARY KEY (`resid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`resources`
--

/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
LOCK TABLES `resources` WRITE;
INSERT INTO `portalexamplePort`.`resources` VALUES  ('10','Image','esempio','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Image\" id=\"10\"><descr>esempio</descr><groups mainGroup=\"free\" /><categories /><masterfile>mare_014.jpg</masterfile><instance><size>3</size><filename>mare_014_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>2</size><filename>mare_014_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>1</size><filename>mare_014_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>mare_014_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>10 Kb</weight></instance></resource>\n','mare_014.jpg'),
 ('143','Image','Mobile','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Image\" id=\"143\"><descr>Mobile</descr><groups mainGroup=\"free\" /><categories /><masterfile>Mobile.jpg</masterfile><instance><size>3</size><filename>Mobile_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>2</size><filename>Mobile_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>1</size><filename>Mobile_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>Mobile_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance></resource>\n','Mobile.jpg'),
 ('144','Image','Portal','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Image\" id=\"144\"><descr>Portal</descr><groups mainGroup=\"free\" /><categories /><masterfile>Portal.jpg</masterfile><instance><size>3</size><filename>Portal_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>2</size><filename>Portal_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Portal_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Portal_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>1791 Kb</weight></instance></resource>\n','Portal.jpg'),
 ('174','Image','Portal','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Image\" id=\"174\"><descr>Portal</descr><groups mainGroup=\"free\" /><categories /><masterfile>Portal.jpg</masterfile><instance><size>3</size><filename>Portal_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>2</size><filename>Portal_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Portal_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Portal_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>1791 Kb</weight></instance><instance><size>4</size><filename>Portal_d4.jpg</filename><mimetype>image/jpeg</mimetype><weight>14 Kb</weight></instance></resource>\n','Portal.jpg'),
 ('21','Image','Stemma','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Image\" id=\"21\"><descr>Stemma</descr><groups mainGroup=\"free\" /><categories /><masterfile>Stemma.jpg</masterfile><instance><size>3</size><filename>Stemma_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>2</size><filename>Stemma_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Stemma_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Stemma_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>130 Kb</weight></instance></resource>\n','Stemma.jpg'),
 ('22','Attach','Statuto','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"22\"><descr>Statuto</descr><groups mainGroup=\"free\" /><categories /><masterfile>Statuto_Villamarina.pdf</masterfile><instance><size>0</size><filename>Statuto_Villamarina.pdf</filename><mimetype>application/pdf</mimetype><weight>19 Kb</weight></instance></resource>\n','Statuto_Villamarina.pdf'),
 ('24','Attach','Bando locazione','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"24\"><descr>Bando locazione</descr><groups mainGroup=\"free\" /><categories /><masterfile>Bando_canone_locazione.pdf</masterfile><instance><size>0</size><filename>Bando_canone_locazione.pdf</filename><mimetype>application/pdf</mimetype><weight>17 Kb</weight></instance></resource>\n','Bando_canone_locazione.pdf'),
 ('25','Attach','Modulo Domanda Locazione','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"25\"><descr>Modulo Domanda Locazione</descr><groups mainGroup=\"free\" /><categories /><masterfile>Modulo_domanda_contributo_canone_locazione.pdf</masterfile><instance><size>0</size><filename>Modulo_domanda_contributo_canone_locazione.pdf</filename><mimetype>application/pdf</mimetype><weight>17 Kb</weight></instance></resource>\n','Modulo_domanda_contributo_canone_locazione.pdf'),
 ('26','Image','Spiaggia','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Image\" id=\"26\"><descr>Spiaggia</descr><groups mainGroup=\"free\" /><categories /><masterfile>Immagine1.jpg</masterfile><instance><size>3</size><filename>Immagine1_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>6 Kb</weight></instance><instance><size>2</size><filename>Immagine1_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>1</size><filename>Immagine1_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>0</size><filename>Immagine1_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>3444 Kb</weight></instance></resource>\n','Immagine1.jpg'),
 ('31','Attach','Delibera 133','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"31\"><descr>Delibera 133</descr><groups mainGroup=\"free\" /><categories /><masterfile>Delibera_133.pdf</masterfile><instance><size>0</size><filename>Delibera_133.pdf</filename><mimetype>application/pdf</mimetype><weight>16 Kb</weight></instance></resource>\n','Delibera_133.pdf'),
 ('33','Attach','Delibera 120','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"33\"><descr>Delibera 120</descr><groups mainGroup=\"free\" /><categories /><masterfile>Delibera_120.pdf</masterfile><instance><size>0</size><filename>Delibera_120.pdf</filename><mimetype>application/pdf</mimetype><weight>16 Kb</weight></instance></resource>\n','Delibera_120.pdf'),
 ('34','Attach','Delibera 20','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"34\"><descr>Delibera 20</descr><groups mainGroup=\"free\" /><categories /><masterfile>Delibera_20.pdf</masterfile><instance><size>0</size><filename>Delibera_20.pdf</filename><mimetype>application/pdf</mimetype><weight>16 Kb</weight></instance></resource>\n','Delibera_20.pdf'),
 ('35','Attach','Delibera 15','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"35\"><descr>Delibera 15</descr><groups mainGroup=\"free\" /><categories /><masterfile>Delibera_15.pdf</masterfile><instance><size>0</size><filename>Delibera_15.pdf</filename><mimetype>application/pdf</mimetype><weight>16 Kb</weight></instance></resource>\n','Delibera_15.pdf'),
 ('37','Attach','Bando Lavori Manutenzione Istituto Nautico','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"37\"><descr>Bando Lavori Manutenzione Istituto Nautico</descr><groups mainGroup=\"free\" /><categories /><masterfile>Bando_manutenzione_istituto_nautico.pdf</masterfile><instance><size>0</size><filename>Bando_manutenzione_istituto_nautico.pdf</filename><mimetype>application/pdf</mimetype><weight>25 Kb</weight></instance></resource>\n','Bando_manutenzione_istituto_nautico.pdf'),
 ('38','Attach','Bando Servizio Civile','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"38\"><descr>Bando Servizio Civile</descr><groups mainGroup=\"free\" /><categories /><masterfile>Bando_servizio_civile.pdf</masterfile><instance><size>0</size><filename>Bando_servizio_civile.pdf</filename><mimetype>application/pdf</mimetype><weight>29 Kb</weight></instance></resource>\n','Bando_servizio_civile.pdf'),
 ('40','Attach','Modulo Certificato Residenza','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"40\"><descr>Modulo Certificato Residenza</descr><groups mainGroup=\"free\" /><categories /><masterfile>Modulo_Certificato_Residenza.pdf</masterfile><instance><size>0</size><filename>Modulo_Certificato_Residenza.pdf</filename><mimetype>application/pdf</mimetype><weight>14 Kb</weight></instance></resource>\n','Modulo_Certificato_Residenza.pdf'),
 ('41','Attach','Richiesta Carta Identità','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"41\"><descr>Richiesta Carta Identità</descr><groups mainGroup=\"free\" /><categories /><masterfile>Modulo_Richiesta_Carta_Identita.pdf</masterfile><instance><size>0</size><filename>Modulo_Richiesta_Carta_Identita.pdf</filename><mimetype>application/pdf</mimetype><weight>17 Kb</weight></instance></resource>\n','Modulo_Richiesta_Carta_Identita.pdf'),
 ('43','Attach','Modulo Autocertificazione Stato Civile','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"43\"><descr>Modulo Autocertificazione Stato Civile</descr><groups mainGroup=\"free\" /><categories /><masterfile>Modulo_Certificato_Stato_Civile.pdf</masterfile><instance><size>0</size><filename>Modulo_Certificato_Stato_Civile.pdf</filename><mimetype>application/pdf</mimetype><weight>14 Kb</weight></instance></resource>\n','Modulo_Certificato_Stato_Civile.pdf'),
 ('45','Attach','Modulo - richiesta rimborso ICI','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"45\"><descr>Modulo - richiesta rimborso ICI</descr><groups mainGroup=\"free\" /><categories /><masterfile>Modulo_Richiesta_Rimborso_ICI.pdf</masterfile><instance><size>0</size><filename>Modulo_Richiesta_Rimborso_ICI.pdf</filename><mimetype>application/pdf</mimetype><weight>17 Kb</weight></instance></resource>\n','Modulo_Richiesta_Rimborso_ICI.pdf'),
 ('47','Attach','Bando Fornitura Cancelleria','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Attach\" id=\"47\"><descr>Bando Fornitura Cancelleria</descr><groups mainGroup=\"free\" /><categories /><masterfile>Bando_fornitura_cancelleria.pdf</masterfile><instance><size>0</size><filename>Bando_fornitura_cancelleria.pdf</filename><mimetype>application/pdf</mimetype><weight>24 Kb</weight></instance></resource>\n','Bando_fornitura_cancelleria.pdf'),
 ('52','Image','per mobile','free','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<resource typecode=\"Image\" id=\"52\"><descr>per mobile</descr><groups mainGroup=\"free\" /><categories /><masterfile>post_icon.jpg</masterfile><instance><size>3</size><filename>post_icon_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>2</size><filename>post_icon_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>1</size><filename>post_icon_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>post_icon_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>19 Kb</weight></instance></resource>\n','post_icon.jpg');
UNLOCK TABLES;
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`showletcatalog`
--

DROP TABLE IF EXISTS `portalexamplePort`.`showletcatalog`;
CREATE TABLE  `portalexamplePort`.`showletcatalog` (
  `code` varchar(40) NOT NULL,
  `titles` longtext NOT NULL,
  `parameters` longtext,
  `plugincode` varchar(30) DEFAULT NULL,
  `parenttypecode` varchar(40) DEFAULT NULL,
  `defaultconfig` longtext,
  `locked` tinyint(4) NOT NULL,
  `maingroup` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`showletcatalog`
--

/*!40000 ALTER TABLE `showletcatalog` DISABLE KEYS */;
LOCK TABLES `showletcatalog` WRITE;
INSERT INTO `portalexamplePort`.`showletcatalog` VALUES  ('bandi_latest','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Announcements - Latest Announcements</property>\n<property key=\"it\">Bandi - Ultimi Bandi</property>\n</properties>\n\n',NULL,NULL,NULL,NULL,1,'free'),
 ('card_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Personal Cards - List</property>\n<property key=\"it\">Personal Card - Lista</property>\n</properties>',NULL,NULL,NULL,NULL,1,NULL),
 ('card_list_detail','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Personal Cards - List and detail</property>\n<property key=\"it\">Personal Card - Lista e dettagio</property>\n</properties>',NULL,NULL,'formAction','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"actionPath\">/ExtStr2/do/FrontEnd/Card/list.action</property>\n</properties>',1,NULL),
 ('content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Contents - Publish a Content</property>\n<property key=\"it\">Contenuti - Pubblica un Contenuto</property>\n</properties>','<config>\n	<parameter name=\"contentId\">\n		Content ID\n	</parameter>\n	<parameter name=\"modelId\">\n		Content Model ID\n	</parameter>\n	<action name=\"viewerConfig\"/>\n</config>','jacms',NULL,NULL,1,NULL),
 ('content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Contents - Publish a List of Contents</property>\n<property key=\"it\">Contenuti - Pubblica una Lista di Contenuti</property>\n</properties>','<config>\n	<parameter name=\"contentType\">Content Type (mandatory)</parameter>\n	<parameter name=\"modelId\">Content Model</parameter>\n	<parameter name=\"userFilters\">Front-End user filter options</parameter>\n	<parameter name=\"category\">Content Category **deprecated**</parameter>\n	<parameter name=\"categories\">Content Category codes (comma separeted)</parameter>\n	<parameter name=\"maxElemForItem\">Contents for each page</parameter>\n	<parameter name=\"filters\" />\n	<parameter name=\"title_{lang}\">Showlet Title in lang {lang}</parameter>\n	<parameter name=\"pageLink\">The code of the Page to link</parameter>\n	<parameter name=\"linkDescr_{lang}\">Link description in lang {lang}</parameter>\n	<action name=\"listViewerConfig\"/>\n</config>','jacms',NULL,NULL,1,NULL),
 ('delibere_latest','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Decisions - Latest Decisions</property>\n<property key=\"it\">Delibere - Ultime Delibere</property>\n</properties>\n\n',NULL,NULL,NULL,NULL,1,'free'),
 ('formAction','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Internal Servlet</property>\n<property key=\"it\">Invocazione di una Servlet Interna</property>\n</properties>','<config>\n	<parameter name=\"actionPath\">\n		Path to an action or to a JSP. You must prepend \'/ExtStr2\' to any Struts2 action path\n	</parameter>\n	<action name=\"configSimpleParameter\"/>\n</config>',NULL,NULL,NULL,1,NULL),
 ('language_choose','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Languages - Choose a Language</property>\n<property key=\"it\">Lingue - Cambio Lingua</property>\n</properties>',NULL,NULL,NULL,NULL,1,NULL),
 ('login_form','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Login Form</property>\n<property key=\"it\">Form di Login</property>\n</properties>',NULL,NULL,NULL,NULL,1,NULL),
 ('messages_system','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">System Messages</property>\n<property key=\"it\">Messaggi di Sistema</property>\n</properties>',NULL,NULL,NULL,NULL,1,NULL),
 ('navigation_breadcrumbs','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Navigation - Breadcrumbs</property>\n<property key=\"it\">Navigazione - Briciole di Pane</property>\n</properties>',NULL,NULL,NULL,NULL,1,NULL),
 ('navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Navigation - Menu</property>\n<property key=\"it\">Navigazione - Menù</property>\n</properties>','<config>\n	<parameter name=\"navSpec\">Rules for the Page List auto-generation</parameter>\n	<action name=\"navigatorConfig\" />\n</config>',NULL,NULL,NULL,1,NULL),
 ('news_latest','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">News - Latest News</property>\n<property key=\"it\">Notizie - Ultime Notizie</property>\n</properties>',NULL,NULL,NULL,NULL,1,NULL),
 ('search_form','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Search - Search Form</property>\n<property key=\"it\">Ricerca - Form di Ricerca</property>\n</properties>',NULL,NULL,NULL,NULL,1,NULL),
 ('search_result','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Search - Search Result</property>\n<property key=\"it\">Ricerca - Risultati della Ricerca</property>\n</properties>',NULL,'jacms',NULL,NULL,1,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `showletcatalog` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`showletconfig`
--

DROP TABLE IF EXISTS `portalexamplePort`.`showletconfig`;
CREATE TABLE  `portalexamplePort`.`showletconfig` (
  `pagecode` varchar(30) NOT NULL,
  `framepos` int(11) NOT NULL,
  `showletcode` varchar(40) NOT NULL,
  `config` longtext,
  `publishedcontent` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pagecode`,`framepos`),
  KEY `showletconfig_showletcode_fkey` (`showletcode`),
  CONSTRAINT `showletconfig_pagecode_fkey` FOREIGN KEY (`pagecode`) REFERENCES `pages` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `showletconfig_showletcode_fkey` FOREIGN KEY (`showletcode`) REFERENCES `showletcatalog` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`showletconfig`
--

/*!40000 ALTER TABLE `showletconfig` DISABLE KEYS */;
LOCK TABLES `showletconfig` WRITE;
INSERT INTO `portalexamplePort`.`showletconfig` VALUES  ('autocertificazioni',0,'language_choose',NULL,NULL),
 ('autocertificazioni',1,'search_form',NULL,NULL),
 ('autocertificazioni',2,'navigation_breadcrumbs',NULL,NULL),
 ('autocertificazioni',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('autocertificazioni',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG14</property>\n</properties>\n\n','CNG14'),
 ('autocertificazioni',7,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">15</property>\n<property key=\"filters\">(order=ASC;attributeFilter=true;key=Title)</property>\n<property key=\"category\">autocertificazioni</property>\n<property key=\"modelId\">51</property>\n<property key=\"contentType\">SDL</property>\n</properties>\n\n',NULL),
 ('autocertificazioni',12,'news_latest',NULL,NULL),
 ('bandi',0,'language_choose',NULL,NULL),
 ('bandi',1,'search_form',NULL,NULL),
 ('bandi',2,'navigation_breadcrumbs',NULL,NULL),
 ('bandi',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('bandi',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG11</property>\n</properties>\n\n','CNG11'),
 ('bandi',7,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">15</property>\n<property key=\"userFilters\">(attributeFilter=false;key=fulltext)+(attributeFilter=true;key=StartDate)+(attributeFilter=true;key=EndDate)</property>\n<property key=\"filters\">(order=DESC;attributeFilter=true;key=StartDate)</property>\n<property key=\"contentType\">BND</property>\n<property key=\"modelId\">41</property>\n</properties>\n\n',NULL),
 ('bandi',12,'news_latest',NULL,NULL),
 ('bandoview',0,'language_choose',NULL,NULL),
 ('bandoview',1,'search_form',NULL,NULL),
 ('bandoview',2,'navigation_breadcrumbs',NULL,NULL),
 ('bandoview',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('bandoview',6,'content_viewer',NULL,NULL),
 ('bandoview',12,'news_latest',NULL,NULL),
 ('consiglio_comunale',0,'language_choose',NULL,NULL),
 ('consiglio_comunale',1,'search_form',NULL,NULL),
 ('consiglio_comunale',2,'navigation_breadcrumbs',NULL,NULL),
 ('consiglio_comunale',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('consiglio_comunale',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG19</property>\n</properties>\n\n','CNG19'),
 ('consiglio_comunale',12,'news_latest',NULL,NULL),
 ('contentview',0,'language_choose',NULL,NULL),
 ('contentview',1,'search_form',NULL,NULL),
 ('contentview',2,'navigation_breadcrumbs',NULL,NULL),
 ('contentview',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('contentview',6,'content_viewer',NULL,NULL),
 ('contentview',12,'news_latest',NULL,NULL),
 ('deliberaview',0,'language_choose',NULL,NULL),
 ('deliberaview',1,'search_form',NULL,NULL),
 ('deliberaview',2,'navigation_breadcrumbs',NULL,NULL),
 ('deliberaview',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('deliberaview',6,'content_viewer',NULL,NULL),
 ('deliberaview',12,'news_latest',NULL,NULL),
 ('delibere',0,'language_choose',NULL,NULL),
 ('delibere',1,'search_form',NULL,NULL),
 ('delibere',2,'navigation_breadcrumbs',NULL,NULL),
 ('delibere',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('delibere',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG13</property>\n</properties>\n\n','CNG13'),
 ('delibere',7,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">10</property>\n<property key=\"userFilters\">(attributeFilter=false;key=fulltext)+(attributeFilter=true;key=Number)+(attributeFilter=false;key=category)+(attributeFilter=true;key=Date)</property>\n<property key=\"filters\">(attributeFilter=true;order=DESC;key=Number)+(order=DESC;attributeFilter=true;key=Date)</property>\n<property key=\"contentType\">DLB</property>\n<property key=\"modelId\">31</property>\n</properties>\n\n',NULL),
 ('delibere',11,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(delibere).subtree(1)</property>\n</properties>\n\n',NULL),
 ('delibere',12,'news_latest',NULL,NULL),
 ('delibere_consiglio',0,'language_choose',NULL,NULL),
 ('delibere_consiglio',1,'search_form',NULL,NULL),
 ('delibere_consiglio',2,'navigation_breadcrumbs',NULL,NULL),
 ('delibere_consiglio',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('delibere_consiglio',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG29</property>\n</properties>\n\n','CNG29'),
 ('delibere_consiglio',7,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">10</property>\n<property key=\"category\">delibere_di_consiglio</property>\n<property key=\"filters\">(order=ASC;attributeFilter=false;key=created)</property>\n<property key=\"contentType\">DLB</property>\n<property key=\"modelId\">31</property>\n</properties>\n\n',NULL),
 ('delibere_consiglio',11,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(delibere).subtree(1)</property>\n</properties>\n\n',NULL),
 ('delibere_consiglio',12,'news_latest',NULL,NULL),
 ('delibere_giunta',0,'language_choose',NULL,NULL),
 ('delibere_giunta',1,'search_form',NULL,NULL),
 ('delibere_giunta',2,'navigation_breadcrumbs',NULL,NULL),
 ('delibere_giunta',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('delibere_giunta',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG28</property>\n<property key=\"modelId\">1</property>\n</properties>\n\n','CNG28'),
 ('delibere_giunta',7,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">10</property>\n<property key=\"category\">delibere_di_giunta</property>\n<property key=\"filters\">(order=ASC;attributeFilter=false;key=created)</property>\n<property key=\"contentType\">DLB</property>\n<property key=\"modelId\">31</property>\n</properties>\n\n',NULL),
 ('delibere_giunta',11,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(delibere).subtree(1)</property>\n</properties>\n\n',NULL),
 ('delibere_giunta',12,'news_latest',NULL,NULL),
 ('dlview',0,'language_choose',NULL,NULL),
 ('dlview',1,'search_form',NULL,NULL),
 ('dlview',2,'navigation_breadcrumbs',NULL,NULL),
 ('dlview',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('dlview',6,'content_viewer',NULL,NULL),
 ('dlview',12,'news_latest',NULL,NULL),
 ('errorpage',0,'language_choose',NULL,NULL),
 ('errorpage',1,'search_form',NULL,NULL),
 ('errorpage',2,'navigation_breadcrumbs',NULL,NULL),
 ('errorpage',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('errorpage',6,'messages_system',NULL,NULL),
 ('errorpage',12,'news_latest',NULL,NULL),
 ('faqview',0,'language_choose',NULL,NULL),
 ('faqview',1,'search_form',NULL,NULL),
 ('faqview',2,'navigation_breadcrumbs',NULL,NULL),
 ('faqview',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('faqview',6,'content_viewer',NULL,NULL),
 ('faqview',12,'news_latest',NULL,NULL),
 ('giunta_comunale',0,'language_choose',NULL,NULL),
 ('giunta_comunale',1,'search_form',NULL,NULL),
 ('giunta_comunale',2,'navigation_breadcrumbs',NULL,NULL),
 ('giunta_comunale',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('giunta_comunale',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG18</property>\n</properties>\n\n','CNG18'),
 ('giunta_comunale',12,'news_latest',NULL,NULL),
 ('homepage',0,'language_choose',NULL,NULL),
 ('homepage',1,'search_form',NULL,NULL),
 ('homepage',2,'navigation_breadcrumbs',NULL,NULL),
 ('homepage',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('homepage',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG256</property>\n<property key=\"modelId\">12</property>\n</properties>\n\n','CNG256'),
 ('homepage',7,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG51</property>\n<property key=\"modelId\">12</property>\n</properties>\n\n','CNG51'),
 ('homepage',8,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG173</property>\n<property key=\"modelId\">12</property>\n</properties>\n\n','CNG173'),
 ('homepage',9,'bandi_latest',NULL,NULL),
 ('homepage',10,'delibere_latest',NULL,NULL),
 ('homepage',11,'login_form',NULL,NULL),
 ('homepage',12,'news_latest',NULL,NULL),
 ('login',0,'language_choose',NULL,NULL),
 ('login',1,'search_form',NULL,NULL),
 ('login',2,'navigation_breadcrumbs',NULL,NULL),
 ('login',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('login',6,'login_form',NULL,NULL),
 ('mobile_bandi',0,'language_choose',NULL,NULL),
 ('mobile_bandi',1,'navigation_breadcrumbs',NULL,NULL),
 ('mobile_bandi',2,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG55</property>\n</properties>\n\n','CNG55'),
 ('mobile_bandi',3,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">5</property>\n<property key=\"filters\">(order=DESC;attributeFilter=true;key=StartDate)</property>\n<property key=\"modelId\">42</property>\n<property key=\"contentType\">BND</property>\n</properties>\n\n',NULL),
 ('mobile_consiglio_comunale',0,'language_choose',NULL,NULL),
 ('mobile_consiglio_comunale',1,'navigation_breadcrumbs',NULL,NULL),
 ('mobile_consiglio_comunale',2,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG19</property>\n</properties>\n\n','CNG19'),
 ('mobile_contentview',0,'language_choose',NULL,NULL),
 ('mobile_contentview',1,'navigation_breadcrumbs',NULL,NULL),
 ('mobile_contentview',2,'content_viewer',NULL,NULL),
 ('mobile_delibere',0,'language_choose',NULL,NULL),
 ('mobile_delibere',1,'navigation_breadcrumbs',NULL,NULL),
 ('mobile_delibere',2,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG54</property>\n</properties>\n\n','CNG54'),
 ('mobile_delibere',3,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">5</property>\n<property key=\"modelId\">32</property>\n<property key=\"contentType\">DLB</property>\n</properties>\n\n',NULL),
 ('mobile_giunta_comunale',0,'language_choose',NULL,NULL),
 ('mobile_giunta_comunale',1,'navigation_breadcrumbs',NULL,NULL),
 ('mobile_giunta_comunale',2,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG18</property>\n</properties>\n\n','CNG18'),
 ('mobile_home',0,'language_choose',NULL,NULL),
 ('mobile_home',1,'navigation_breadcrumbs',NULL,NULL),
 ('mobile_home',2,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(mobile_comune).subtree(1) + code(mobile_trasparenza).subtree(1)</property>\n</properties>\n\n',NULL),
 ('mobile_notizie',0,'language_choose',NULL,NULL),
 ('mobile_notizie',1,'navigation_breadcrumbs',NULL,NULL),
 ('mobile_notizie',2,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG53</property>\n</properties>\n\n','CNG53'),
 ('mobile_notizie',3,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">5</property>\n<property key=\"filters\">(order=DESC;attributeFilter=true;key=Date)</property>\n<property key=\"modelId\">22</property>\n<property key=\"contentType\">NEW</property>\n</properties>\n\n',NULL),
 ('mobile_sindaco',0,'language_choose',NULL,NULL),
 ('mobile_sindaco',1,'navigation_breadcrumbs',NULL,NULL),
 ('mobile_sindaco',2,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG17</property>\n</properties>\n\n','CNG17'),
 ('moduli',0,'language_choose',NULL,NULL),
 ('moduli',1,'search_form',NULL,NULL),
 ('moduli',2,'navigation_breadcrumbs',NULL,NULL),
 ('moduli',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('moduli',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG14</property>\n</properties>\n\n','CNG14'),
 ('moduli',7,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">15</property>\n<property key=\"filters\">(order=ASC;attributeFilter=true;key=Title)</property>\n<property key=\"category\">moduli</property>\n<property key=\"modelId\">51</property>\n<property key=\"contentType\">SDL</property>\n</properties>\n\n',NULL),
 ('moduli',12,'news_latest',NULL,NULL),
 ('newsview',0,'language_choose',NULL,NULL),
 ('newsview',1,'search_form',NULL,NULL),
 ('newsview',2,'navigation_breadcrumbs',NULL,NULL),
 ('newsview',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('newsview',6,'content_viewer',NULL,NULL),
 ('newsview',12,'news_latest',NULL,NULL),
 ('notfound',0,'language_choose',NULL,NULL),
 ('notfound',1,'search_form',NULL,NULL),
 ('notfound',2,'navigation_breadcrumbs',NULL,NULL),
 ('notfound',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('notfound',6,'messages_system',NULL,NULL),
 ('notfound',12,'news_latest',NULL,NULL),
 ('notizie',0,'language_choose',NULL,NULL),
 ('notizie',1,'search_form',NULL,NULL),
 ('notizie',2,'navigation_breadcrumbs',NULL,NULL),
 ('notizie',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('notizie',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG12</property>\n</properties>\n\n','CNG12'),
 ('notizie',7,'content_viewer_list','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"maxElemForItem\">15</property>\n<property key=\"userFilters\">(attributeFilter=false;key=fulltext)+(attributeFilter=true;key=Date;type=attribute)</property>\n<property key=\"filters\">(order=DESC;attributeFilter=true;key=Date)</property>\n<property key=\"contentType\">NEW</property>\n<property key=\"modelId\">21</property>\n</properties>\n\n',NULL),
 ('notizie',12,'news_latest',NULL,NULL),
 ('old_town_traffic_pass',0,'language_choose',NULL,NULL),
 ('old_town_traffic_pass',1,'search_form',NULL,NULL),
 ('old_town_traffic_pass',2,'navigation_breadcrumbs',NULL,NULL),
 ('old_town_traffic_pass',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('old_town_traffic_pass',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG15</property>\n</properties>\n\n','CNG15'),
 ('old_town_traffic_pass',7,'card_list',NULL,NULL),
 ('old_town_traffic_pass',12,'news_latest',NULL,NULL),
 ('old_town_traffic_pass_int',0,'language_choose',NULL,NULL),
 ('old_town_traffic_pass_int',1,'search_form',NULL,NULL),
 ('old_town_traffic_pass_int',2,'navigation_breadcrumbs',NULL,NULL),
 ('old_town_traffic_pass_int',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('old_town_traffic_pass_int',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG16</property>\n</properties>\n\n','CNG16'),
 ('old_town_traffic_pass_int',7,'card_list_detail','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"actionPath\">/ExtStr2/do/FrontEnd/Card/list.action</property>\n</properties>\n\n',NULL),
 ('old_town_traffic_pass_int',12,'news_latest',NULL,NULL),
 ('rssview',0,'language_choose',NULL,NULL),
 ('rssview',1,'search_form',NULL,NULL),
 ('rssview',2,'navigation_breadcrumbs',NULL,NULL),
 ('rssview',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('rssview',6,'content_viewer',NULL,NULL),
 ('rssview',12,'news_latest',NULL,NULL),
 ('search_result',0,'language_choose',NULL,NULL),
 ('search_result',1,'search_form',NULL,NULL),
 ('search_result',2,'navigation_breadcrumbs',NULL,NULL),
 ('search_result',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('search_result',6,'search_result',NULL,NULL),
 ('search_result',12,'news_latest',NULL,NULL),
 ('simview',0,'language_choose',NULL,NULL),
 ('simview',1,'search_form',NULL,NULL),
 ('simview',2,'navigation_breadcrumbs',NULL,NULL),
 ('simview',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('simview',6,'content_viewer',NULL,NULL),
 ('simview',12,'news_latest',NULL,NULL),
 ('sindaco',0,'language_choose',NULL,NULL),
 ('sindaco',1,'search_form',NULL,NULL),
 ('sindaco',2,'navigation_breadcrumbs',NULL,NULL),
 ('sindaco',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('sindaco',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG17</property>\n</properties>\n\n','CNG17'),
 ('sindaco',12,'news_latest',NULL,NULL),
 ('statuto',0,'language_choose',NULL,NULL),
 ('statuto',1,'search_form',NULL,NULL),
 ('statuto',2,'navigation_breadcrumbs',NULL,NULL),
 ('statuto',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('statuto',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"modelId\">1</property>\n<property key=\"contentId\">CNG20</property>\n</properties>\n\n','CNG20'),
 ('statuto',12,'news_latest',NULL,NULL),
 ('urp',0,'language_choose',NULL,NULL),
 ('urp',1,'search_form',NULL,NULL),
 ('urp',2,'navigation_breadcrumbs',NULL,NULL),
 ('urp',3,'navigation_menu','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"navSpec\">code(homepage).subtree(2)</property>\n</properties>\n\n',NULL),
 ('urp',6,'content_viewer','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"contentId\">CNG49</property>\n</properties>\n\n','CNG49'),
 ('urp',12,'news_latest',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `showletconfig` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`sysconfig`
--

DROP TABLE IF EXISTS `portalexamplePort`.`sysconfig`;
CREATE TABLE  `portalexamplePort`.`sysconfig` (
  `version` varchar(10) NOT NULL,
  `item` varchar(40) NOT NULL,
  `descr` varchar(100) DEFAULT NULL,
  `config` longtext,
  PRIMARY KEY (`version`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`sysconfig`
--

/*!40000 ALTER TABLE `sysconfig` DISABLE KEYS */;
LOCK TABLES `sysconfig` WRITE;
INSERT INTO `portalexamplePort`.`sysconfig` VALUES  ('production','contentTypes','Definition of the Content Types','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<contenttypes>\n	<contenttype typecode=\"BND\" typedescr=\"Announcement\" viewpage=\"bandoview\" listmodel=\"41\" defaultmodel=\"4\">\n		<attributes>\n			<attribute name=\"Title\" attributetype=\"Longtext\" indexingtype=\"TEXT\">\n				<validations>\n					<required>true</required>\n				</validations>\n				<roles>\n					<role>jacms:title</role>\n				</roles>\n			</attribute>\n			<attribute name=\"StartDate\" attributetype=\"Date\" searcheable=\"true\">\n				<validations>\n					<required>true</required>\n					<expression evalOnValuedAttribute=\"true\">\n						<ognlexpression><![CDATA[#attribute.date.after(new java.util.Date())]]></ognlexpression>\n						<errormessage><![CDATA[The start date has to be after than today]]></errormessage>\n						<helpmessage><![CDATA[The start date has to be after than today]]></helpmessage>\n					</expression>\n				</validations>\n			</attribute>\n			<attribute name=\"EndDate\" attributetype=\"Date\" searcheable=\"true\">\n				<validations>\n					<required>true</required>\n					<rangestart attribute=\"DataInizio\" />\n				</validations>\n			</attribute>\n			<attribute name=\"Abstract\" attributetype=\"Hypertext\" indexingtype=\"text\" />\n			<list name=\"Documents\" attributetype=\"Monolist\">\n				<nestedtype>\n					<attribute name=\"Documents\" attributetype=\"Attach\" />\n				</nestedtype>\n			</list>\n		</attributes>\n	</contenttype>\n	<contenttype typecode=\"CNG\" typedescr=\"Generic content\" viewpage=\"contentview\" listmodel=\"11\" defaultmodel=\"1\">\n		<attributes>\n			<attribute name=\"Title\" attributetype=\"Text\" searcheable=\"true\" indexingtype=\"TEXT\">\n				<validations>\n					<required>true</required>\n				</validations>\n				<roles>\n					<role>jacms:title</role>\n				</roles>\n			</attribute>\n			<attribute name=\"Abstract\" attributetype=\"Longtext\" indexingtype=\"text\" />\n			<attribute name=\"TextBody\" attributetype=\"Hypertext\" indexingtype=\"text\" />\n			<attribute name=\"Image_1\" attributetype=\"Image\" />\n			<attribute name=\"Image_2\" attributetype=\"Image\">\n				<validations>\n					<expression evalOnValuedAttribute=\"true\">\n						<ognlexpression><![CDATA[#entity.getAttribute(\'Immagine_1\').resource != null]]></ognlexpression>\n						<errormessage key=\"CNG_Image2_OgnlErrorMessage\" />\n						<helpmessage key=\"CNG_Image2_OgnlHelpMessage\" />\n					</expression>\n				</validations>\n			</attribute>\n			<list name=\"Links\" attributetype=\"Monolist\">\n				<nestedtype>\n					<attribute name=\"Links\" attributetype=\"Link\" />\n				</nestedtype>\n			</list>\n			<list name=\"Documents\" attributetype=\"Monolist\">\n				<nestedtype>\n					<attribute name=\"Documents\" attributetype=\"Attach\" />\n				</nestedtype>\n			</list>\n		</attributes>\n	</contenttype>\n	<contenttype typecode=\"DLB\" typedescr=\"Decision\" viewpage=\"deliberaview\" listmodel=\"31\" defaultmodel=\"3\">\n		<attributes>\n			<attribute name=\"Number\" attributetype=\"Number\" searcheable=\"true\" indexingtype=\"number\">\n				<validations>\n					<required>true</required>\n				</validations>\n			</attribute>\n			<attribute name=\"Date\" attributetype=\"Date\" searcheable=\"true\">\n				<validations>\n					<required>true</required>\n				</validations>\n			</attribute>\n			<attribute name=\"Title\" attributetype=\"Longtext\" indexingtype=\"TEXT\">\n				<validations>\n					<required>true</required>\n				</validations>\n				<roles>\n					<role>jacms:title</role>\n				</roles>\n			</attribute>\n			<attribute name=\"Abstract\" attributetype=\"Hypertext\" indexingtype=\"text\" />\n			<list name=\"Documents\" attributetype=\"Monolist\">\n				<nestedtype>\n					<attribute name=\"Documents\" attributetype=\"Attach\" />\n				</nestedtype>\n			</list>\n		</attributes>\n	</contenttype>\n	<contenttype typecode=\"NEW\" typedescr=\"News\" viewpage=\"newsview\" listmodel=\"21\" defaultmodel=\"2\">\n		<attributes>\n			<attribute name=\"Date\" attributetype=\"Date\" searcheable=\"true\">\n				<validations>\n					<required>true</required>\n				</validations>\n			</attribute>\n			<attribute name=\"Title\" attributetype=\"Text\" searcheable=\"true\" indexingtype=\"TEXT\">\n				<validations>\n					<required>true</required>\n				</validations>\n				<roles>\n					<role>jacms:title</role>\n				</roles>\n			</attribute>\n			<attribute name=\"ShortText\" attributetype=\"Longtext\" indexingtype=\"text\" />\n			<attribute name=\"TextBody\" attributetype=\"Hypertext\" indexingtype=\"text\" />\n			<attribute name=\"Image_1\" attributetype=\"Image\" />\n			<list name=\"Links\" attributetype=\"Monolist\">\n				<nestedtype>\n					<attribute name=\"Links\" attributetype=\"Link\" />\n				</nestedtype>\n			</list>\n			<list name=\"Documents\" attributetype=\"Monolist\">\n				<nestedtype>\n					<attribute name=\"Documents\" attributetype=\"Attach\" />\n				</nestedtype>\n			</list>\n		</attributes>\n	</contenttype>\n	<contenttype typecode=\"SDL\" typedescr=\"Document\" viewpage=\"dlview\" listmodel=\"51\" defaultmodel=\"5\">\n		<attributes>\n			<attribute name=\"Title\" attributetype=\"Text\" searcheable=\"true\" indexingtype=\"TEXT\">\n				<validations>\n					<required>true</required>\n				</validations>\n				<roles>\n					<role>jacms:title</role>\n				</roles>\n			</attribute>\n			<attribute name=\"ShortDescr\" attributetype=\"Hypertext\" indexingtype=\"text\">\n				<validations>\n					<required>true</required>\n				</validations>\n			</attribute>\n			<attribute name=\"LongDescr\" attributetype=\"Hypertext\" indexingtype=\"text\" />\n			<attribute name=\"Image\" attributetype=\"Image\" />\n			<attribute name=\"File\" attributetype=\"Attach\">\n				<validations>\n					<required>true</required>\n				</validations>\n			</attribute>\n			<list name=\"Links\" attributetype=\"Monolist\">\n				<nestedtype>\n					<attribute name=\"Riferimenti\" attributetype=\"Link\" />\n				</nestedtype>\n			</list>\n		</attributes>\n	</contenttype>\n</contenttypes>\n\n'),
 ('production','imageDimensions','Definition of the resized image dimensions','<Dimensions>\n	<Dimension>\n		<id>1</id>\n		<dimx>90</dimx>\n		<dimy>90</dimy>\n	</Dimension>\n	<Dimension>\n		<id>2</id>\n		<dimx>130</dimx>\n		<dimy>130</dimy>\n	</Dimension>\n	<Dimension>\n		<id>3</id>\n		<dimx>150</dimx>\n		<dimy>150</dimy>\n	</Dimension>\n</Dimensions>'),
 ('production','langs','Definition of the system languages','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Langs>\n  <Lang>\n    <code>it</code>\n    <descr>Italiano</descr>\n    <default>false</default>\n  </Lang>\n  <Lang>\n    <code>en</code>\n    <descr>English</descr>\n    <default>true</default>\n  </Lang>\n</Langs>\n\n'),
 ('production','params','Configuration params. Tags other than \"Param\" are ignored','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Params>\n	<Param name=\"urlStyle\">classic</Param>\n	<Param name=\"hypertextEditor\">fckeditor</Param>\n	<Param name=\"treeStyle_page\">classic</Param>\n	<Param name=\"treeStyle_category\">classic</Param>\n	<Param name=\"startLangFromBrowser\">false</Param>\n	<SpecialPages>\n		<Param name=\"notFoundPageCode\">notfound</Param>\n		<Param name=\"homePageCode\">homepage</Param>\n		<Param name=\"errorPageCode\">errorpage</Param>\n		<Param name=\"loginPageCode\">login</Param>\n	</SpecialPages>\n	<ExtendendPrivacyModule>\n		<Param name=\"extendedPrivacyModuleEnabled\">false</Param>\n		<Param name=\"maxMonthsSinceLastAccess\">6</Param>\n		<Param name=\"maxMonthsSinceLastPasswordChange\">3</Param>        \n	</ExtendendPrivacyModule>\n</Params>'),
 ('production','subIndexDir','Name of the sub-directory containing content indexing files','indexdir');
UNLOCK TABLES;
/*!40000 ALTER TABLE `sysconfig` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`uniquekeys`
--

DROP TABLE IF EXISTS `portalexamplePort`.`uniquekeys`;
CREATE TABLE  `portalexamplePort`.`uniquekeys` (
  `id` int(11) NOT NULL DEFAULT '0',
  `keyvalue` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`uniquekeys`
--

/*!40000 ALTER TABLE `uniquekeys` DISABLE KEYS */;
LOCK TABLES `uniquekeys` WRITE;
INSERT INTO `portalexamplePort`.`uniquekeys` VALUES  (1,260);
UNLOCK TABLES;
/*!40000 ALTER TABLE `uniquekeys` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`workcontentrelations`
--

DROP TABLE IF EXISTS `portalexamplePort`.`workcontentrelations`;
CREATE TABLE  `portalexamplePort`.`workcontentrelations` (
  `contentid` varchar(16) NOT NULL,
  `refcategory` varchar(30) DEFAULT NULL,
  KEY `workcontentrelations_contentid_fkey` (`contentid`),
  KEY `workcontentrelations_refcategory_fkey` (`refcategory`),
  CONSTRAINT `workcontentrelations_contentid_fkey` FOREIGN KEY (`contentid`) REFERENCES `contents` (`contentid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`workcontentrelations`
--

/*!40000 ALTER TABLE `workcontentrelations` DISABLE KEYS */;
LOCK TABLES `workcontentrelations` WRITE;
INSERT INTO `portalexamplePort`.`workcontentrelations` VALUES  ('DLB4','delibere'),
 ('DLB4','delibere_di_giunta'),
 ('DLB30','delibere'),
 ('DLB30','delibere_di_consiglio'),
 ('DLB32','scheda_download'),
 ('DLB32','delibere'),
 ('DLB32','moduli'),
 ('DLB32','delibere_di_giunta'),
 ('DLB36','delibere'),
 ('DLB36','delibere_di_consiglio'),
 ('SDL46','scheda_download'),
 ('SDL46','tributi'),
 ('SDL46','moduli'),
 ('SDL7','scheda_download'),
 ('SDL7','autocertificazioni'),
 ('SDL44','scheda_download'),
 ('SDL44','autocertificazioni'),
 ('SDL42','scheda_download'),
 ('SDL42','anagrafe'),
 ('SDL42','moduli');
UNLOCK TABLES;
/*!40000 ALTER TABLE `workcontentrelations` ENABLE KEYS */;


--
-- Definition of table `portalexamplePort`.`workcontentsearch`
--

DROP TABLE IF EXISTS `portalexamplePort`.`workcontentsearch`;
CREATE TABLE  `portalexamplePort`.`workcontentsearch` (
  `contentid` varchar(16) DEFAULT NULL,
  `attrname` varchar(30) NOT NULL,
  `textvalue` varchar(255) DEFAULT NULL,
  `datevalue` date DEFAULT NULL,
  `numvalue` int(11) DEFAULT NULL,
  `langcode` varchar(2) DEFAULT NULL,
  KEY `workcontentsearch_contentid_fkey` (`contentid`),
  CONSTRAINT `workcontentsearch_contentid_fkey` FOREIGN KEY (`contentid`) REFERENCES `contents` (`contentid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portalexamplePort`.`workcontentsearch`
--

/*!40000 ALTER TABLE `workcontentsearch` DISABLE KEYS */;
LOCK TABLES `workcontentsearch` WRITE;
INSERT INTO `portalexamplePort`.`workcontentsearch` VALUES  ('NEW3','Date',NULL,'2011-11-21',NULL,NULL),
 ('NEW3','Title','Online the Portal of Villamarina Municipality',NULL,NULL,'en'),
 ('NEW3','Title','Online il Portale del Comune di Villamarina',NULL,NULL,'it'),
 ('NEW177','Date',NULL,'2011-06-15',NULL,NULL),
 ('NEW177','Title','Online the Mobile Portal',NULL,NULL,'en'),
 ('NEW177','Title','Online il Portale Mobile',NULL,NULL,'it'),
 ('NEW23','Date',NULL,'2011-10-21',NULL,NULL),
 ('NEW23','Title','Ground Rent Contribution',NULL,NULL,'en'),
 ('NEW23','Title','Contributo canone di locazione 2011',NULL,NULL,'it'),
 ('NEW27','Date',NULL,'2011-07-20',NULL,NULL),
 ('NEW27','Title','Folk Music Festival',NULL,NULL,'en'),
 ('NEW27','Title','Festival della canzone popolare',NULL,NULL,'it'),
 ('DLB4','Number',NULL,NULL,133,NULL),
 ('DLB4','Date',NULL,'2011-09-20',NULL,NULL),
 ('DLB30','Number',NULL,NULL,20,NULL),
 ('DLB30','Date',NULL,'2011-10-04',NULL,NULL),
 ('DLB32','Number',NULL,NULL,120,NULL),
 ('DLB32','Date',NULL,'2011-07-01',NULL,NULL),
 ('DLB36','Number',NULL,NULL,15,NULL),
 ('DLB36','Date',NULL,'2011-07-16',NULL,NULL),
 ('CNG20','Title','Statute',NULL,NULL,'en'),
 ('CNG20','Title','Statuto',NULL,NULL,'it'),
 ('CNG16','Title','Internal Servlet',NULL,NULL,'en'),
 ('CNG16','Title','Internal Servlet',NULL,NULL,'it'),
 ('CNG15','Title','Application Service Example',NULL,NULL,'en'),
 ('CNG15','Title','Esempio Servizio Applicativo',NULL,NULL,'it'),
 ('CNG19','Title','Consiglio Comunale',NULL,NULL,'it'),
 ('CNG54','Title','Delibere',NULL,NULL,'it'),
 ('CNG55','Title','Bandi',NULL,NULL,'it'),
 ('CNG53','Title','Notizie',NULL,NULL,'it'),
 ('CNG29','Title','Elenco delle Delibere di Consiglio presenti nel portale del Comune',NULL,NULL,'it'),
 ('CNG28','Title','Elenco delle Delibere di Giunta presenti nel portale del Comune',NULL,NULL,'it'),
 ('CNG17','Title','Mayor',NULL,NULL,'en'),
 ('CNG17','Title','Sindaco',NULL,NULL,'it'),
 ('CNG49','Title','Public Relations Office',NULL,NULL,'en'),
 ('CNG49','Title','URP - Ufficio Relazioni con il Pubblico',NULL,NULL,'it'),
 ('CNG14','Title','Documents Archive',NULL,NULL,'en'),
 ('CNG14','Title','Archivio Modulistica',NULL,NULL,'it'),
 ('CNG11','Title','Announcements Archive',NULL,NULL,'en'),
 ('CNG11','Title','Archivio Bandi',NULL,NULL,'it'),
 ('CNG12','Title','News Archive',NULL,NULL,'en'),
 ('CNG12','Title','Archivio Notizie',NULL,NULL,'it'),
 ('CNG13','Title','Decisions Archive',NULL,NULL,'en'),
 ('CNG13','Title','Archivio Delibere',NULL,NULL,'it'),
 ('CNG2','Title','Lorem Ipsum dolor sit amet',NULL,NULL,'it'),
 ('CNG51','Title','Mobile Area',NULL,NULL,'en'),
 ('CNG51','Title','Area Mobile',NULL,NULL,'it'),
 ('CNG146','Title','ePartecipation',NULL,NULL,'en'),
 ('CNG146','Title','ePartecipation',NULL,NULL,'it'),
 ('CNG256','Title','How to sign in',NULL,NULL,'en'),
 ('CNG256','Title','Come loggarsi',NULL,NULL,'it'),
 ('CNG18','Title','Council',NULL,NULL,'en'),
 ('CNG18','Title','Giunta Comunale',NULL,NULL,'it'),
 ('CNG173','Title','Web Accessibility',NULL,NULL,'en'),
 ('CNG173','Title','Accessibilità',NULL,NULL,'it'),
 ('BND39','StartDate',NULL,'2011-02-01',NULL,NULL),
 ('BND39','EndDate',NULL,'2011-11-30',NULL,NULL),
 ('BND48','StartDate',NULL,'2011-02-28',NULL,NULL),
 ('BND48','EndDate',NULL,'2011-10-27',NULL,NULL),
 ('BND5','StartDate',NULL,'2011-03-03',NULL,NULL),
 ('BND5','EndDate',NULL,'2011-11-14',NULL,NULL),
 ('SDL46','Title','Tax - Request ICI refund',NULL,NULL,'en'),
 ('SDL46','Title','Tributi - Richiesta rimborso ICI',NULL,NULL,'it'),
 ('SDL7','Title','Residence Self-certification Form',NULL,NULL,'en'),
 ('SDL7','Title','Modulo Autocertificazione Residenza',NULL,NULL,'it'),
 ('SDL44','Title','Civil Status Self Certification Form',NULL,NULL,'en'),
 ('SDL44','Title','Modulo Autocertificazione Stato Civile',NULL,NULL,'it'),
 ('SDL42','Title','Registry - Request Identity Card valid for foreign travel',NULL,NULL,'en'),
 ('SDL42','Title','Anagrafe - Richiesta Carta Identità valida per espatrio',NULL,NULL,'it');
UNLOCK TABLES;
/*!40000 ALTER TABLE `workcontentsearch` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
