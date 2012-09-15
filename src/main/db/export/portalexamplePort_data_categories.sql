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
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO categories (catcode, parentcode, titles) VALUES ('home', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Generale</property>
<property key="en">All</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('delibere', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Decisions</property>
<property key="it">Delibere</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('delibere_di_consiglio', 'delibere', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Council decisions</property>
<property key="it">Delibere di Consiglio</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('delibere_di_giunta', 'delibere', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Giunta decisions</property>
<property key="it">Delibere di Giunta</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('scheda_download', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Download</property>
<property key="it">Scheda Download</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('autocertificazioni', 'scheda_download', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Self Certification</property>
<property key="it">Autocertificazioni</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('moduli', 'scheda_download', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Documents</property>
<property key="it">Modulistica</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('anagrafe', 'moduli', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Citizen registry</property>
<property key="it">Anagrafe</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('tributi', 'moduli', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Tax</property>
<property key="it">Tributi</property>
</properties>

');


--
-- PostgreSQL database dump complete
--

