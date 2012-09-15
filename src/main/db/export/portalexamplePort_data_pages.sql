--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('errorpage', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Error page</property>
<property key="it">Pagina di errore</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('service', 'homepage', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Service</property>
<property key="it">Pagine di Servizio</property>
</properties>

', 'free', 0, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('notfound', 'service', 4, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Page not found</property>
<property key="it">Pagina non trovata</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('homepage', 'homepage', -1, 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home</property>
<property key="it">Home</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('search_result', 'service', 4, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Result</property>
<property key="it">Risultati della Ricerca</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('login', 'service', 6, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Login</property>
<property key="it">Pagina di login</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile', 'homepage', 6, 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">MOBILE</property>
<property key="it">MOBILE</property>
</properties>

', 'free', 0, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_home', 'mobile', 1, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Mobile Home</property>
<property key="it">Home Mobile</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('dlview', 'forms', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Document Details</property>
<property key="it">Dettaglio Modulistica</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('newsview', 'news', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the news</property>
<property key="it">Leggi la notizia</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('bandoview', 'announcements', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Announcements Details</property>
<property key="it">Dettagli del bando</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_service', 'mobile_home', 3, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Service Pages</property>
<property key="it">Pagine di Servizio</property>
</properties>

', 'free', 0, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_contentview', 'mobile_service', 1, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">The Content</property>
<property key="it">Leggi il contenuto</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('simview', 'service', 7, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Image details</property>
<property key="it">Dettagli Scheda Immagine</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('old_town_traffic_pass_int', 'old_town_traffic_pass', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Limited Traffic Zone Pass</property>
<property key="it">Pass ZTL</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('contentview', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the full article</property>
<property key="it">Leggi il contenuto</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('faqview', 'service', 8, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Faq</property>
<property key="it">Faq</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('rssview', 'service', 9, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the insight</property>
<property key="it">Leggi l''approfondimento</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('municipality', 'homepage', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipality</property>
<property key="it">Il Comune</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mayor', 'municipality', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Mayor</property>
<property key="it">Sindaco</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('council', 'municipality', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Council</property>
<property key="it">Giunta Comunale</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('municipal_council', 'municipality', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipal Council</property>
<property key="it">Consiglio Comunale</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('statute', 'municipality', 4, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Statute</property>
<property key="it">Statuto</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('contact', 'homepage', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contact</property>
<property key="it">Contatti</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('pr', 'contact', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Public Relations Office</property>
<property key="it">URP - Ufficio Relazioni con il Pubblico</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('transparency', 'homepage', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Information</property>
<property key="it">Trasparenza</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('online_services', 'homepage', 4, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Online Services</property>
<property key="it">Servizi Online</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('old_town_traffic_pass', 'online_services', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Limited Traffic Zone Pass</property>
<property key="it">Pass ZTL</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_municipality', 'mobile_home', 1, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Council</property>
<property key="it">Il Comune</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_mayor', 'mobile_municipality', 1, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Mayor</property>
<property key="it">Sindaco</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_council', 'mobile_municipality', 2, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Council</property>
<property key="it">Giunta Comunale</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_municipal_council', 'mobile_municipality', 3, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipal Council</property>
<property key="it">Consiglio Comunale</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_transparency', 'mobile_home', 2, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Information</property>
<property key="it">Trasparenza</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_news', 'mobile_transparency', 1, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">Notizie</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_decisions', 'mobile_transparency', 2, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Decision</property>
<property key="it">Delibere</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mobile_announcements', 'mobile_transparency', 3, 'mobile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Announcements</property>
<property key="it">Bandi</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('forms', 'online_services', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Documents</property>
<property key="it">Modulistica</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('self_certifications', 'online_services', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Self Certification</property>
<property key="it">Certificazioni</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news', 'transparency', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">Notizie</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('decisions', 'transparency', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Decisions</property>
<property key="it">Delibere</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('announcements', 'transparency', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Announcements</property>
<property key="it">Bandi</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('decisionview', 'decisions', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Decision Details</property>
<property key="it">Dettaglio della delibera</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('council_decisions', 'decisions', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Council Decisions</property>
<property key="it">Delibere di Giunta</property>
</properties>
', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('municipal_council_decisions', 'decisions', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipal Council Decisions</property>
<property key="it">Delibere di Consiglio</property>
</properties>', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('apis', 'online_services', 4, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">APIs</property>
<property key="it">APIs</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');


--
-- PostgreSQL database dump complete
--

