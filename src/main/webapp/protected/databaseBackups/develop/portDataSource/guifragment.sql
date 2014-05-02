INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('content_viewer', 'content_viewer', 'jacms', '<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<@jacms.content publishExtraTitle=true />', NULL, 0);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-search_form', 'entando-widget-search_form', NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<@wp.pageWithWidget var="searchResultPageVar" widgetTypeCode="search_result" />
<form class="navbar-search pull-left" action="<@wp.url page="${searchResultPageVar.code}" />" method="get">
<input type="text" name="search" class="search-query span2" placeholder="Give me a word for Matteo" x-webkit-speech="x-webkit-speech" />
</form> ', NULL, 0);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('models-common-utils', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#-- css -->
<@wp.outputHeadInfo type="CSS">
	<link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
</@wp.outputHeadInfo>

<#-- css -->
<@wp.outputHeadInfo type="CSS_EXT">
	<link rel="stylesheet" type="text/css" href="<@wp.printHeadInfo />" />
</@wp.outputHeadInfo>

<#-- css for ie7 -->
<@wp.outputHeadInfo type="CSS_IE7">
	<!--[if IE 7]>
		<link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
	<![endif]-->
</@wp.outputHeadInfo>

<#-- css for ie8 -->
<@wp.outputHeadInfo type="CSS_IE8">
	<!--[if IE 8]>
		<link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
	<![endif]-->
</@wp.outputHeadInfo>

<#-- js global vars -->
<@wp.outputHeadInfo type="JS_VARS">
	<script>
	<!--//--><![CDATA[//><!--
		<@wp.printHeadInfo />
	//--><!]]>
	</script>
</@wp.outputHeadInfo>

<#-- js scripts (remember to include the libraries first) -->
<@wp.outputHeadInfo type="JS">
	<script src="<@wp.resourceURL />static/js/<@wp.printHeadInfo />"></script>
</@wp.outputHeadInfo>

<#-- external/CDN js scripts (remember to include the libraries first) -->
<@wp.outputHeadInfo type="JS_EXT">
	<script src="<@wp.printHeadInfo />"></script>
</@wp.outputHeadInfo>

<#-- js code -->
<@wp.outputHeadInfo type="JS_RAW">
	<script>
	<!--//--><![CDATA[//><!--
		<@wp.printHeadInfo />
	//--><!]]>
	</script>
</@wp.outputHeadInfo>', NULL, 0);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('models-lesscss-active', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<link rel="stylesheet/less" href="<@wp.resourceURL />static/entando-misc-bootstrap/bootstrap/less/bootstrap.less" />
<link rel="stylesheet/less" href="<@wp.resourceURL />static/entando-misc-bootstrap/bootstrap/less/responsive.less" />
<link rel="stylesheet/less" href="<@wp.resourceURL />static/less/portalexample.less" />
<script src="<@wp.resourceURL />static/js/entando-misc-less/less-1.3.1.min.js"></script>', NULL, 0);
