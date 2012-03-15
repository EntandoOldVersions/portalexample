<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<wp:contentNegotiation mimeType="application/xhtml+xml" charset="utf-8"/>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<wp:info key="currentLang" />">
<head>
	<title>Entando Portal Example| <wp:currentPage param="title" /></title>
	
	<link type="text/css" rel="stylesheet" href="<wp:cssURL/>PortalExample.css" />
	<link type="text/css" rel="stylesheet" href="<wp:cssURL/>pagemodels/general.css" />

<wp:outputHeadInfo type="CSS"> 
	<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" media="screen" />
</wp:outputHeadInfo>

<wp:outputHeadInfo type="CSS_IE7">
	<!--[if IE 7]><link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" media="screen" /><![endif]-->
</wp:outputHeadInfo>

<wp:outputHeadInfo type="CSS_IE8">
	<!--[if IE 8]><link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" media="screen" /><![endif]-->
</wp:outputHeadInfo>

<%-- js global vars --%>
<wp:outputHeadInfo type="JS_VARS">
	<script type="text/javascript">
	<!--//--><![CDATA[//><!--
		<wp:printHeadInfo />
	//--><!]]>
	</script>
</wp:outputHeadInfo>

<%-- js scripts (remember to include the libraries first) --%>
<wp:outputHeadInfo type="JS">
	<script type="text/javascript" src="<wp:resourceURL />static/js/<wp:printHeadInfo />"></script>
</wp:outputHeadInfo>

<%-- js code --%>
<wp:outputHeadInfo type="JS_RAW">
	<script type="text/javascript">
	<!--//--><![CDATA[//><!--
		<wp:printHeadInfo />
	//--><!]]>
	</script>
</wp:outputHeadInfo>	
</head>

<body>
	<!--[if lte IE 6]>
<div id="ie6disclaimer">	
	<h1><wp:i18n key="DISCLAIMER" /></h1>
	<p><wp:i18n key="DISCLAIMER_NOTE" /></p>
</div>
	<![endif]-->	

<jsp:include page="inc/header.jsp" />
<div id="main">
	<div id="colonna1">
		<p class="noscreen">[ <a href="#a0" id="a3"><wp:i18n key="BACK_TO_THE_TOP" /></a> ]</p>
		<p class="noscreen">[ <a href="#a4"><wp:i18n key="SKIP" />&#32;<wp:i18n key="AI" />&#32;<wp:i18n key="CONTENTS" /></a> ]</p>
		<wp:show frame="3"/>
		<wp:show frame="4"/>
		<wp:show frame="5"/>
	</div>
	<div id="colonna2">
		<p class="noscreen">[ <a href="#a0" id="a4"><wp:i18n key="BACK_TO_THE_TOP" /></a> ]</p>
		<p class="noscreen">[ <a href="#a5"><wp:i18n key="SKIP" />&#32;<wp:i18n key="AL" />&#32;<wp:i18n key="LOGIN" /></a> ]</p>
		<wp:show frame="6"/>
		<wp:show frame="7"/>
		<wp:show frame="8"/>
		<div id="box_basso_sn">
			<wp:show frame="9"/>
		</div>
		<div id="box_basso_dx">
			<wp:show frame="10"/>
		</div>
	</div>
	<div id="colonna3">
		<p class="noscreen">[ <a href="#a0" id="a5"><wp:i18n key="BACK_TO_THE_TOP" /></a> ]</p>
			<wp:show frame="11"/>
			<wp:show frame="12"/>
		<wp:show frame="13"/>
	</div>
</div>
<jsp:include page="inc/footer.jsp" />
</body>
</html>