--
-- PostgreSQL database dump
--

-- Started on 2011-11-26 22:33:21 CET

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 1783 (class 0 OID 3404167)
-- Dependencies: 1483
-- Data for Name: apicatalog_services; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1784 (class 0 OID 3404173)
-- Dependencies: 1484
-- Data for Name: apicatalog_status; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1785 (class 0 OID 3404176)
-- Dependencies: 1485
-- Data for Name: authgroups; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authgroups (groupname, descr) VALUES ('free', 'Free Access');
INSERT INTO authgroups (groupname, descr) VALUES ('administrators', 'Administrators');


--
-- TOC entry 1786 (class 0 OID 3404179)
-- Dependencies: 1486
-- Data for Name: authpermissions; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authpermissions (permissionname, descr) VALUES ('enterBackend', 'Access to Administration Area');
INSERT INTO authpermissions (permissionname, descr) VALUES ('managePages', 'Operations on Pages');
INSERT INTO authpermissions (permissionname, descr) VALUES ('manageResources', 'Operations on Resources');
INSERT INTO authpermissions (permissionname, descr) VALUES ('superuser', 'All functions');
INSERT INTO authpermissions (permissionname, descr) VALUES ('manageCategories', 'Operations on Categories');
INSERT INTO authpermissions (permissionname, descr) VALUES ('validateContents', 'Supervision of Contents');
INSERT INTO authpermissions (permissionname, descr) VALUES ('editContents', 'Content Editing');


--
-- TOC entry 1788 (class 0 OID 3404185)
-- Dependencies: 1488
-- Data for Name: authroles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authroles (rolename, descr) VALUES ('admin', 'Administrator');


--
-- TOC entry 1787 (class 0 OID 3404182)
-- Dependencies: 1487
-- Data for Name: authrolepermissions; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('admin', 'superuser');


--
-- TOC entry 1789 (class 0 OID 3404188)
-- Dependencies: 1489
-- Data for Name: authusergroups; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusergroups (username, groupname) VALUES ('admin', 'administrators');


--
-- TOC entry 1790 (class 0 OID 3404191)
-- Dependencies: 1490
-- Data for Name: authuserroles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authuserroles (username, rolename) VALUES ('admin', 'admin');


--
-- TOC entry 1791 (class 0 OID 3404194)
-- Dependencies: 1491
-- Data for Name: authusers; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('admin', 'adminadmin', '2008-10-10', '2011-11-26', NULL, 1);


--
-- TOC entry 1792 (class 0 OID 3404197)
-- Dependencies: 1492
-- Data for Name: authusershortcuts; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusershortcuts (username, config) VALUES ('admin', '<shortcuts>
	<box pos="0">core.component.user.list</box>
	<box pos="1">core.component.categories</box>
	<box pos="2">core.component.labels.list</box>
	<box pos="3">jacms.content.new</box>
	<box pos="4">jacms.content.list</box>
	<box pos="5">jacms.contentType</box>
	<box pos="6">core.portal.pageTree</box>
	<box pos="7">core.portal.showletType</box>
	<box pos="8">core.tools.entities</box>
	<box pos="9">core.tools.setting</box>
</shortcuts>');


-- Completed on 2011-11-26 22:33:21 CET

--
-- PostgreSQL database dump complete
--

