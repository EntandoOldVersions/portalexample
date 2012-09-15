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
-- Data for Name: sysconfig; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'imageDimensions', 'Definition of the resized image dimensions', '<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>130</dimx>
		<dimy>130</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>150</dimx>
		<dimy>150</dimy>
	</Dimension>
</Dimensions>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'langs', 'Definition of the system languages', '<?xml version="1.0" encoding="UTF-8"?>
<Langs>
  <Lang>
    <code>it</code>
    <descr>Italiano</descr>
    <default>false</default>
  </Lang>
  <Lang>
    <code>en</code>
    <descr>English</descr>
    <default>true</default>
  </Lang>
</Langs>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'params', 'Configuration params. Tags other than "Param" are ignored', '<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">classic</Param>
	<Param name="hypertextEditor">fckeditor</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>        
	</ExtendendPrivacyModule>
</Params>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'contentTypes', 'Definition of the Content Types', '<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="BND" typedescr="Announcement" viewpage="bandoview" listmodel="41" defaultmodel="4">
		<attributes>
			<attribute name="Title" attributetype="Longtext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="StartDate" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
					<expression evalOnValuedAttribute="true">
						<ognlexpression><![CDATA[#attribute.date.after(new java.util.Date())]]></ognlexpression>
						<errormessage><![CDATA[The start date has to be after than today]]></errormessage>
						<helpmessage><![CDATA[The start date has to be after than today]]></helpmessage>
					</expression>
				</validations>
			</attribute>
			<attribute name="EndDate" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
					<rangestart attribute="DataInizio" />
				</validations>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="text" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="CNG" typedescr="Generic content" viewpage="contentview" listmodel="11" defaultmodel="1">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="text" />
			<attribute name="TextBody" attributetype="Hypertext" indexingtype="text" />
			<attribute name="Image_1" attributetype="Image" />
			<attribute name="Image_2" attributetype="Image">
				<validations>
					<expression evalOnValuedAttribute="true">
						<ognlexpression><![CDATA[#entity.getAttribute(''Immagine_1'').resource != null]]></ognlexpression>
						<errormessage key="CNG_Image2_OgnlErrorMessage" />
						<helpmessage key="CNG_Image2_OgnlHelpMessage" />
					</expression>
				</validations>
			</attribute>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" />
				</nestedtype>
			</list>
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="DLB" typedescr="Decision" viewpage="decisionview" listmodel="31" defaultmodel="3">
		<attributes>
			<attribute name="Number" attributetype="Number" searcheable="true" indexingtype="number">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Date" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Title" attributetype="Longtext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="text" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="NEW" typedescr="News" viewpage="newsview" listmodel="21" defaultmodel="2">
		<attributes>
			<attribute name="Date" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="ShortText" attributetype="Longtext" indexingtype="text" />
			<attribute name="TextBody" attributetype="Hypertext" indexingtype="text" />
			<attribute name="Image_1" attributetype="Image" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" />
				</nestedtype>
			</list>
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="SDL" typedescr="Document" viewpage="dlview" listmodel="51" defaultmodel="5">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="ShortDescr" attributetype="Hypertext" indexingtype="text">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="LongDescr" attributetype="Hypertext" indexingtype="text" />
			<attribute name="Image" attributetype="Image" />
			<attribute name="File" attributetype="Attach">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Riferimenti" attributetype="Link" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
</contenttypes>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'subIndexDir', 'Name of the sub-directory containing content indexing files', 'indexdir20120405123305');


--
-- PostgreSQL database dump complete
--

