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
-- Data for Name: pagemodels; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO pagemodels (code, descr, frames, plugincode) VALUES ('mobile', 'Mobile Page', '<frames>
	<frame pos="0">
		<descr>Choose Language</descr>
		<defaultShowlet code="language_choose" />
	</frame>
	<frame pos="1">
		<descr>Breadcrumbs</descr>
		<defaultShowlet code="navigation_breadcrumbs" />
	</frame>
	<frame pos="2" main="true">
		<descr>Main Column: Box 1</descr>
	</frame>
	<frame pos="3">
		<descr>Main Column: Box 2</descr>
	</frame>
	<frame pos="4">
		<descr>Main Column: Box 3</descr>
	</frame>
	<frame pos="5">
		<descr>Main Column: Box 4</descr>
	</frame>
	<frame pos="6">
		<descr>Main Column: Box 5</descr>
	</frame>
	<frame pos="7">
		<descr>Main Column: Box 6</descr>
	</frame>
</frames>', NULL);
INSERT INTO pagemodels (code, descr, frames, plugincode) VALUES ('home', 'Home Page', '<frames>
	<frame pos="0">
		<descr>Choose Language</descr>
		<defaultShowlet code="language_choose" />
	</frame>
	<frame pos="1">
		<descr>Search Form</descr>
		<defaultShowlet code="search_form" />
	</frame>
	<frame pos="2">
		<descr>Breadcrumbs</descr>
		<defaultShowlet code="navigation_breadcrumbs" />
	</frame>
	<frame pos="3">
		<descr>First Column: Box 1</descr>
		<defaultShowlet code="navigation_menu">
			<properties>
				<property key="navSpec">code(homepage).subtree(2)</property>
			</properties>
		</defaultShowlet>		
	</frame>
	<frame pos="4">
		<descr>First Column: Box 2</descr>
	</frame>
	<frame pos="5">
		<descr>First Column: Box 3</descr>
	</frame>
	<frame pos="6">
		<descr>Main Column: Box 1</descr>
	</frame>
	<frame pos="7">
		<descr>Main Column: Box 2</descr>
	</frame>
	<frame pos="8">
		<descr>Main Column: Box 3</descr>		
	</frame>
	<frame pos="9">
		<descr>Main Column: Box 4</descr>
		<defaultShowlet code="announcements_latest" />	
	</frame>	
	<frame pos="10">
		<descr>Main Column: Box 5</descr>
		<defaultShowlet code="decisions_latest" />
	</frame>
	<frame pos="11">
		<descr>Third Column: Box 1</descr>
		<defaultShowlet code="login_form" />
	</frame>
	<frame pos="12">
		<descr>Third Column: Box 2</descr>
		<defaultShowlet code="news_latest" />
	</frame>
	<frame pos="13">
		<descr>Third Column: Box 3</descr>
	</frame>		
</frames>', NULL);
INSERT INTO pagemodels (code, descr, frames, plugincode) VALUES ('internal', 'Internal Page', '<frames>
	<frame pos="0">
		<descr>Choose Language</descr>
		<defaultShowlet code="language_choose" />
	</frame>
	<frame pos="1">
		<descr>Search Form</descr>
		<defaultShowlet code="search_form" />
	</frame>
	<frame pos="2">
		<descr>Breadcrumbs</descr>
		<defaultShowlet code="navigation_breadcrumbs" />
	</frame>
	<frame pos="3">
		<descr>First Column: Box 1</descr>
		<defaultShowlet code="navigation_menu">
			<properties>
				<property key="navSpec">code(homepage).subtree(2)</property>
			</properties>
		</defaultShowlet>		
	</frame>
	<frame pos="4">
		<descr>First Column: Box 2</descr>
	</frame>
	<frame pos="5">
		<descr>First Column: Box 3</descr>
	</frame>
	<frame pos="6" main="true">
		<descr>Main Column: Box 1</descr>
	</frame>
	<frame pos="7">
		<descr>Main Column: Box 2</descr>
	</frame>
	<frame pos="8">
		<descr>Main Column: Box 3</descr>
	</frame>
	<frame pos="9">
		<descr>Main Column: Box 4</descr>
	</frame>	
	<frame pos="10">
		<descr>Main Column: Box 5</descr>
	</frame>
	<frame pos="11">
		<descr>Third Column: Box 1</descr>
	</frame>
	<frame pos="12">
		<descr>Third Column: Box 2</descr>
		<defaultShowlet code="news_latest" />
	</frame>
	<frame pos="13">
		<descr>Third Column: Box 3</descr>
	</frame>		
</frames>', NULL);


--
-- PostgreSQL database dump complete
--

