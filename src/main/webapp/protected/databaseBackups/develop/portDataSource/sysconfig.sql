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
</Dimensions>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'langs', 'Definition of the system languages', '<?xml version="1.0" encoding="UTF-8"?>
<Langs>
	<Lang>
		<code>it</code>
		<descr>Italiano</descr>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
		<default>true</default>
	</Lang>
</Langs>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'contentTypes', 'Definition of the Content Types', '<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="ANN" typedescr="Announcement" viewpage="announcements_read" listmodel="10051" defaultmodel="10005">
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
				</validations>
			</attribute>
			<attribute name="EndDate" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
					<rangestart attribute="StartDate" />
				</validations>
			</attribute>
			<attribute name="Summary" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="contents_read" listmodel="10011" defaultmodel="10001">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Link" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="DLD" typedescr="Download Card" viewpage="download" listmodel="10031" defaultmodel="10003">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="File" attributetype="Attach">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="ShortDescr" attributetype="Hypertext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="LongDescr" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
		</attributes>
	</contenttype>
	<contenttype typecode="NWS" typedescr="News" viewpage="news_read" listmodel="10021" defaultmodel="10002">
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
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Link" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="RSL" typedescr="Resolution" viewpage="resolutions_read" listmodel="10041" defaultmodel="10004">
		<attributes>
			<attribute name="Number" attributetype="Number" searcheable="true" indexingtype="TEXT">
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
			<attribute name="Summary" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'params', 'Configuration params.', '<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">breadcrumbs</Param>
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
</Params>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'subIndexDir', 'Name of the sub-directory containing content indexing files', 'indexdir20121205164616');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'entandoComponentsReport', 'The component installation report', '<?xml version="1.0" encoding="UTF-8"?>
<reports status="OK">
	<creation>2013-01-15 18:29:00</creation>
	<lastupdate>2013-01-15 18:29:28</lastupdate>
	<components>
		<component name="entandoCore" date="2013-01-15 18:29:00" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="authgroups" />
					<table name="authpermissions" />
					<table name="authroles" />
					<table name="authrolepermissions" />
					<table name="authusers" />
					<table name="authusergroups" />
					<table name="authuserroles" />
					<table name="authusershortcuts" />
					<table name="api_oauth_consumers" />
					<table name="api_oauth_tokens" />
					<table name="apicatalog_methods" />
					<table name="apicatalog_services" />
				</datasource>
				<datasource name="portDataSource" status="OK">
					<table name="sysconfig" />
					<table name="categories" />
					<table name="localstrings" />
					<table name="pagemodels" />
					<table name="pages" />
					<table name="showletcatalog" />
					<table name="showletconfig" />
					<table name="uniquekeys" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="portalexample" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="portalexample_cards" />
				</datasource>
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-misc-less" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-content-announcement" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="OK" />
		</component>
		<component name="entando-content-download" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="OK" />
		</component>
		<component name="entando-content-news" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="OK" />
		</component>
		<component name="entando-content-resolution" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="OK" />
		</component>
		<component name="entando-showlet-search_form" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-misc-html5-essentials" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-content-generic" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="OK" />
		</component>
		<component name="entando-page-bootstrap-hero" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-showlet-login_form" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-showlet-language_choose" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-misc-bootstrap" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-misc-jquery" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-showlet-navigation_bar" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-page-2columns-left" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-showlet-navigation_breadcrumbs" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="entando-showlet-navigation_menu" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component name="jacms" date="2013-01-15 18:29:15" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="OK">
					<table name="contentmodels" />
					<table name="contents" />
					<table name="resources" />
					<table name="resourcerelations" />
					<table name="contentrelations" />
					<table name="contentsearch" />
					<table name="workcontentrelations" />
					<table name="workcontentsearch" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
	</components>
</reports>

');
