--
-- PostgreSQL database dump
--

-- Started on 2012-04-05 16:02:36 CEST

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 1794 (class 0 OID 17418331)
-- Dependencies: 1488
-- Data for Name: api_oauth_consumers; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1795 (class 0 OID 17418337)
-- Dependencies: 1489
-- Data for Name: api_oauth_tokens; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1796 (class 0 OID 17418340)
-- Dependencies: 1490
-- Data for Name: apicatalog_methods; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1797 (class 0 OID 17418343)
-- Dependencies: 1491
-- Data for Name: apicatalog_services; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1798 (class 0 OID 17418349)
-- Dependencies: 1492
-- Data for Name: authgroups; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authgroups (groupname, descr) VALUES ('free', 'Free Access');
INSERT INTO authgroups (groupname, descr) VALUES ('administrators', 'Administrators');


--
-- TOC entry 1799 (class 0 OID 17418352)
-- Dependencies: 1493
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
-- TOC entry 1800 (class 0 OID 17418355)
-- Dependencies: 1494
-- Data for Name: authrolepermissions; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('admin', 'superuser');


--
-- TOC entry 1801 (class 0 OID 17418358)
-- Dependencies: 1495
-- Data for Name: authroles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authroles (rolename, descr) VALUES ('admin', 'Administrator');


--
-- TOC entry 1802 (class 0 OID 17418361)
-- Dependencies: 1496
-- Data for Name: authusergroups; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusergroups (username, groupname) VALUES ('admin', 'administrators');


--
-- TOC entry 1803 (class 0 OID 17418364)
-- Dependencies: 1497
-- Data for Name: authuserroles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authuserroles (username, rolename) VALUES ('admin', 'admin');


--
-- TOC entry 1804 (class 0 OID 17418367)
-- Dependencies: 1498
-- Data for Name: authusers; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('admin', 'adminadmin', '2008-10-10', '2012-04-05', NULL, 1);


--
-- TOC entry 1805 (class 0 OID 17418370)
-- Dependencies: 1499
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


-- Completed on 2012-04-05 16:02:36 CEST

--
-- PostgreSQL database dump complete
--

