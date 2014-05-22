INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-login_form', 'entando-widget-login_form', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-1.10.0.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />

<ul class="nav pull-right">
	<li class="span2 dropdown
<#if (accountExpired?? && accountExpired == true) || (wrongAccountCredential?? && wrongAccountCredential == true)>open</#if>
">

	<#if (Session.currentUser != "guest")>
	<!-- caso 1 -->
			<div class="btn-group">
				<button class="btn span2 text-left dropdown-toggle" data-toggle="dropdown">
					<@c.out value="${Session.currentUser}" />
					<span class="caret pull-right"></span>
				</button>
				<ul class="dropdown-menu pull-right well-small">
					<li class="padding-medium-vertical">

						<@wp.ifauthorized permission="enterBackend">
						<p>
							<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />><span class="icon-wrench"></span> <@wp.i18n key="ESLF_ADMINISTRATION" /></a>
						</p>
						</@wp.ifauthorized>
						<div class="divider"></div>
						<p class="help-block text-right">
							<a class="btn" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action"><@wp.i18n key="ESLF_SIGNOUT" /></a>
						</p>
						<@wp.pageWithWidget var="editProfilePageVar" widgetTypeCode="userprofile_editCurrentUser" />
						<#if (editProfilePageVar??) >
						<p class="help-block text-right">
							<a href="<@wp.url page="${editProfilePageVar.code}" />" ><@wp.i18n key="ESLF_PROFILE_CONFIGURATION" /></a>
						</p>
						</#if>
					</li>
				</ul>
			</div>	
		<#else>
			<!-- caso 2 -->
			<a class="dropdown-toggle text-right" data-toggle="dropdown" href="#"><@wp.i18n key="ESLF_SIGNIN" /> <span class="caret"></span></a>
			<ul class="dropdown-menu well-small">
				<li>
					<form class="form-vertical" method="POST">
						<#if (accountExpired?? && accountExpired == true)>
						<div class="alert alert-error">
							<button class="close" data-dismiss="alert">x</button>
							<@wp.i18n key="ESLF_USER_STATUS_EXPIRED" />
						</div>
						</#if>
						<#if (wrongAccountCredential?? && wrongAccountCredential == true)>
						<div class="alert alert-error">
							<button class="close" data-dismiss="alert">x</button>
							<@wp.i18n key="ESLF_USER_STATUS_CREDENTIALS_INVALID" />
						</div>
						</#if>
						<input type="text" name="username" class="input-large" placeholder="<@wp.i18n key="ESLF_USERNAME" />">
						<input type="password" name="password" class="input-large" placeholder="<@wp.i18n key="ESLF_PASSWORD" />">
						<p class="text-right">
							<input type="submit" class="btn btn-primary" value="<@wp.i18n key="ESLF_SIGNIN" />" />
						</p>
					</form>
				</li>
			</ul>
		</#if>
	</li>
</ul>', 1);
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
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_cardFinding', 'card_list_detail', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign s=JspTaglibs["/struts-tags"]>

<section class="card_list">

<h1><@wp.i18n key="SEARCH_CARDS" /></h1>

<form action="<@wp.action path="/ExtStr2/do/FrontEnd/Card/search.action" />" method="post" class="form-search" role="search">
	<@wpsf.textfield name="holder" id="holder" cssClass="input-medium search-query" />
	<@s.set name="searchLabel"><@wp.i18n key="SEARCH" /></@s.set>
	<@wpsf.submit value="%{#searchLabel}" cssClass="btn btn-primary" />
</fieldset>

<@wpsa.subset source="cards" count=10 objectName="groupCard" advanced=true offset=5>
<@s.set name="group" value="#groupCard" />

<div class="margin-medium-vertical">
	<@wp.fragment code="portalexample_card_is_pagerInfo" escapeXml=false />
	<@wp.fragment code="portalexample_card_is_pagerFormBlock" escapeXml=false />
</div>

<table class="table table-bordered table-condensed table-hover" summary="<@wp.i18n key="CARDS_LIST_SUMMARY" />">
<thead>
<tr>
	<th><@wp.i18n key="CARD_HOLDER" /></th>
	<th><@wp.i18n key="CARD_DESCRIPTION" /></th>
	<th><@wp.i18n key="CARD_CREATION_DATE" /></th>
</tr>
</thead>
<tbody>
<@s.iterator id="card">
<tr>
	<td><a href="<@wp.action path="/ExtStr2/do/FrontEnd/Card/view.action"><@wp.parameter name="id"><@s.property value="#card.id" /></@wp.parameter></@wp.action>" title="<@wp.i18n key="EDIT" />: <@s.property value="#card.id" />" class="label label-info"><@s.property value="#card.holder" /></a></td>
	<td><@s.property value="#card.descr" /></td>
	<td><@s.date name="#card.date" format="dd/MM/yyyy" /></td>
</tr>
</@s.iterator>
</tbody>
</table>

<div class="centerText">
	<@wp.fragment code="portalexample_card_is_pagerFormBlock" escapeXml=false />
</div>

</@wpsa.subset>

</form>
</section>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_cardView', 'card_list_detail', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign s=JspTaglibs["/struts-tags"]>

<h2><@wp.i18n key="VIEW_CARD" /></h2>

<div class="well">
<dl class="dl-horizontal">
    <dt><@wp.i18n key="CARD_HOLDER" /></dt>
    <dd><@s.property value="holder" /></dd>

    <dt><@wp.i18n key="CARD_DESCRIPTION" /></dt>
    <dd><@s.property value="descr" /></dd>

    <dt><@wp.i18n key="CARD_NOTE" /></dt>
    <dd><@s.property value="note" /></dd>

    <dt><@wp.i18n key="CARD_CREATION_DATE" /></dt>
    <dd><@s.property value="date" /></dd>
</dl>
</div>

<a href="<@wp.action path="/ExtStr2/do/FrontEnd/Card/list.action" />" class="btn"><@wp.i18n key="BACK_TO_CARDS_LIST" /></a>
', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_error', 'card_list_detail', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<@wp.i18n key="GENERIC_ERROR" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_pagerInfo', 'card_list_detail', NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<p><@s.text name="note.searchIntro" />&#32;<@s.property value="#group.size" />&#32;<@s.text name="note.searchOutro" />.<br />
<@s.text name="label.page" />: [<@s.property value="#group.currItem" />/<@s.property value="#group.maxItem" />].</p>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_pagerFormBlock', 'card_list_detail', NULL, NULL, '<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign s=JspTaglibs["/struts-tags"]>

<@s.if test="#group.size > #group.max">

<ul class="pagination">
	<@s.if test="null != #group.pagerId">
		<@s.set var="pagerIdMarker" value="#group.pagerId" />
	</@s.if>
	<@s.else>
		<@s.set var="pagerIdMarker">pagerItem</@s.set>
	</@s.else>

	<@s.if test="#group.advanced">
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_1''}" type="button" disabled="%{1 == #group.currItem}" title="%{getText(''label.goToFirst'')}">
			<span class="icon fa fa-step-backward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#group.currItem - #group.offset) }" type="button" disabled="%{1 == #group.beginItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.backward'')}">
			<span class="icon fa fa-fast-backward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>

	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.prevItem}" type="button" title="%{getText(''label.prev.full'')}" disabled="%{1 == #group.currItem}">
			<span class="icon fa fa-long-arrow-left"></span>
		</@wpsf.submit>
	</li>

	<@s.subset source="#group.items" count="#group.endItemAnchor-#group.beginItemAnchor+1" start="#group.beginItemAnchor-1">
		<@s.iterator id="item">
			<li>
				<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #item}" type="button" disabled="%{#item == #group.currItem}">
					<@s.property value="%{#item}" />
				</@wpsf.submit>
			</li>
		</@s.iterator>
	</@s.subset>

	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.nextItem}" type="button" title="%{getText(''label.next.full'')}" disabled="%{#group.maxItem == #group.currItem}">
			<span class="icon fa fa-long-arrow-right"></span>
		</@wpsf.submit>
	</li>

	<@s.if test="#group.advanced">
	<@s.set name="jumpForwardStep" value="#group.currItem + #group.offset"></@s.set>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#jumpForwardStep)}" type="button" disabled="%{#group.maxItem == #group.endItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.forward'')}">
			<span class="icon fa fa-fast-forward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.size}" type="button" disabled="%{#group.maxItem == #group.currItem}" title="%{getText(''label.goToLast'')}">
			<span class="icon fa fa-step-forward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>

	<@s.set var="pagerIdMarker" value="null" />
</ul>

</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer', 'content_viewer', 'jacms', NULL, '<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@jacms.contentInfo param="authToEdit" var="canEditThis" />
<@jacms.contentInfo param="contentId" var="myContentId" />

<#if (canEditThis)>
	<div class="bar-content-edit">
		<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/jacms/Content/edit.action?contentId=<@jacms.contentInfo param="contentId" />" class="btn btn-info">
			<@wp.i18n key="EDIT_THIS_CONTENT" /> <i class="icon-edit icon-white"></i></a>
	</div>
</#if>
<@jacms.content publishExtraTitle=true />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list', 'content_viewer_list', 'jacms', NULL, '<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />

<@jacms.contentList listName="contentList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" userFilterOptionsVar="userFilterOptionsVar" />

<#if (titleVar??)>
	<h1><@c.out value="${titleVar}" /></h1>
</#if>
<@wp.freemarkerTemplateParameter var="userFilterOptionsVar" valueName="userFilterOptionsVar" removeOnEndTag=true >
<@wp.fragment code="jacms_content_viewer_list_userfilters" escapeXml=false />
</@wp.freemarkerTemplateParameter>
<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module.jsp" /> -->
<#if (contentList??) && (contentList?has_content) && (contentList?size > 0)>
	<@wp.pager listName="contentList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
		<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
<#list contentList as contentId>
<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
 <@jacms.content contentId="${contentId}" />
</#if>
</#list>
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
		</@wp.freemarkerTemplateParameter>
	</@wp.pager>
<#else>
	<#if (userFilterOptionsVar?size > 0)>
		<p class="alert alert-info"><@wp.i18n key="LIST_VIEWER_EMPTY" /></p>
	</#if>
</#if>

<#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
	<p class="text-right"><a class="btn btn-primary" href="<@wp.url page="${pageLinkVar}"/>"><@c.out value="${pageLinkDescriptionVar}" /></a></p>
</#if>

<@c.set var="contentList" scope="request" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-search_form', 'entando-widget-search_form', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<@wp.pageWithWidget var="searchResultPageVar" widgetTypeCode="search_result" />
<form class="navbar-search pull-left" action="<@wp.url page="${searchResultPageVar.code}" />" method="get">
<input type="text" name="search" class="search-query span2" placeholder="<@wp.i18n key="ESSF_SEARCH" />" x-webkit-speech="x-webkit-speech" />
</form> ', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_cardFinding', 'card_list', NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign vmr=JspTaglibs["/WEB-INF/tld/portalexample-core.tld"]>

<@vmr.cards listName="cardList" />

<#--
optional CSS
<@wp.headInfo type="CSS" info="widgets/card_list.css" />
-->
<section class="card_list">

<h1><@wp.i18n key="SEARCH_CARDS" /></h1>
<form id="searchForm" method="get" action="<@wp.url />" class="form-search">
	<input type="text" id="holder" name="holder" value="${holder?default("")}" placeholder="<@wp.i18n key="CARD_HOLDER" />" class="input-medium search-query" />
	<input type="submit" class="btn btn-primary" value="<@wp.i18n key="SEARCH" />" />
</form>
<#if cardList??>
	<@wp.pager listName="cardList" objectName="groupCard" pagerIdFromFrame=true max=5 advanced=true offset=5 >
	<@wp.freemarkerTemplateParameter var="group" valueName="groupCard" removeOnEndTag=true >
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	<h2>
		<@wp.i18n key="CARDS_NUMBER" /> : <@c.out value="${groupCard.size}" />
	</h2>
	<table class="table table-bordered table-condensed" summary="<@wp.i18n key="CARDS_LIST_SUMMARY" />">
	<tr>
		<th><@wp.i18n key="CARD_HOLDER" /></th>
		<th><@wp.i18n key="CARD_DESCRIPTION" /></th>
		<th><@wp.i18n key="CARD_CREATION_DATE" /></th>
	</tr>
<#list cardList as card>
<#if (card_index >= groupCard.begin) && (card_index <= groupCard.end)>
	<tr>
		<td><@c.out value="${card.holder}" /></td>
		<td><@c.out value="${card.descr}" /></td>
		<td>${card.date?string("dd/MM/yyyy")}</td>
	</tr>
</#if>
</#list>
	</table>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
	</@wp.pager>
</#if>
</section>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('default_pagerBlock', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#if (group.size > group.max)>
	<div class="pagination pagination-centered">
		<ul>
		<#if (1 != group.currItem)>
			<#if (group.advanced)>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >1</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_FIRST" />"><i class="icon-fast-backward"></i></a></li>
				<#if (1 != group.beginItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.currItem - group.offset}" /></@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_BACKWARD" />&#32;<@c.out value="${group.offset}" />"><i class="icon-step-backward"></i></a></li>
				</#if>
			</#if>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.prevItem}"/></@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_PREV" /></a></li>
		</#if>
		<#list group.items as item>
		<#if (item_index >= (group.beginItemAnchor-1)) && (item_index <= (group.endItemAnchor-1))>
			<#if (item == group.currItem)>
			<li class="active"><a href="#"><@c.out value="${item}"/></a></li>
			<#else>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${item}"/></@wp.parameter></@wp.url>"><@c.out value="${item}"/></a></li>
			</#if>
		</#if>
		</#list>
		<#if (group.maxItem != group.currItem)>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.nextItem}"/></@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_NEXT" /></a></li>
			<#if (group.advanced)>
				<#if (group.maxItem != group.endItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.currItem + group.offset}" /></@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_FORWARD" />&#32;<@c.out value="${group.offset}" />"><i class="icon-step-forward"></i></a></li>
				</#if>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.maxItem}" /></@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_LAST" />"><i class="icon-fast-forward"></i></a></li>
			</#if>
		</#if>
		</ul>
	</div>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilters', NULL, 'jacms', NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<#if (userFilterOptionsVar??) && userFilterOptionsVar?has_content && (userFilterOptionsVar?size > 0)>
<div class="row-fluid"><div class="span12 padding-medium-top">

<#assign hasUserFilterError = false >
<#-- <@c.set var="hasUserFilterError" value=false /> -->

<#list userFilterOptionsVar as userFilterOptionVar>
<#if (userFilterOptionVar.formFieldErrors??) && userFilterOptionVar.formFieldErrors?has_content && (userFilterOptionVar.formFieldErrors?size > 0)>
<#assign hasUserFilterError = true >
<#-- <@c.set var="hasUserFilterError" value=true /> -->
</#if>
</#list>

<#if (hasUserFilterError)>
<div class="alert alert-error">
	<a class="close" data-dismiss="alert" href="#"><i class="icon-remove"></i></a>
	<h2 class="alert-heading"><@wp.i18n key="ERRORS" /></h2>
	<ul>
		<#list userFilterOptionsVar as userFilterOptionVar>
			<#if (userFilterOptionVar.formFieldErrors??) && (userFilterOptionVar.formFieldErrors?size > 0)>
			<#assign formFieldErrorsVar = userFilterOptionVar.formFieldErrors >
			<#list formFieldErrorsVar?keys as formFieldErrorKey>
			<li>
			<@wp.i18n key="jacms_LIST_VIEWER_FIELD" />&#32;<em>${formFieldErrorsVar[formFieldErrorKey].attributeName}</em><#if (formFieldErrorsVar[formFieldErrorKey].rangeFieldType??)>:&#32;<em><@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].rangeFieldType}" /></em></#if>&#32;<@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].errorKey}" />
			</li>
			</#list>
			</#if>
		</#list>
	</ul>
</div>
</#if>
<@c.set var="hasUserFilterError" value=false />

<p><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#content-viewer-list-filters"><@wp.i18n key="SEARCH_FILTERS_BUTTON" /> <i class="icon-zoom-in icon-white"></i></button></p>

<form action="<@wp.url />" method="post" class="form-horizontal collapse" id="content-viewer-list-filters">
	<#list userFilterOptionsVar as userFilterOptionVar>
		<@wp.freemarkerTemplateParameter var="userFilterOptionVar" valueName="userFilterOptionVar" removeOnEndTag=true >
		<#if !userFilterOptionVar.attributeFilter && (userFilterOptionVar.key == "fulltext" || userFilterOptionVar.key == "category")>
			<@wp.fragment code="jacms_content_viewer_list_userfilter_met_${userFilterOptionVar.key}" escapeXml=false />
			<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-${userFilterOptionVar.key}.jsp" /> -->
		</#if>
		<#if userFilterOptionVar.attributeFilter >
			<#if userFilterOptionVar.attribute.type == "Monotext" || userFilterOptionVar.attribute.type == "Text" || userFilterOptionVar.attribute.type == "Longtext" || userFilterOptionVar.attribute.type == "Hypertext">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Text" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Text.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "Enumerator" >
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Enumer" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Enumerator.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "Number">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Number" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Number.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "Date">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Date" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Date.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "Boolean">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Boolean" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Boolean.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "CheckBox">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_CheckBox" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-CheckBox.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "ThreeState">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_ThreeSt" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-ThreeState.jsp" /> -->
			</#if>
		</#if>
		</@wp.freemarkerTemplateParameter>
	</#list>
	<p class="form-actions">
		<input type="submit" value="<@wp.i18n key="SEARCH" />" class="btn btn-primary" />
	</p>
</form>
</div></div>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_met_fulltext', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="TEXT" /></label>
	<div class="controls">
		<input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_met_category', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >

<@c.set var="userFilterCategoryCodeVar">${userFilterOptionVar.userFilterCategoryCode?default("")}</@c.set>
<@wp.categories var="systemCategories" titleStyle="prettyFull" root="${userFilterCategoryCodeVar}" />
<div class="control-group">
	<label for="category" class="control-label"><@wp.i18n key="CATEGORY" /></label>
	<div class="controls">
		<select id="category" name="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list systemCategories as systemCategory>
			<option value="${systemCategory.key}" <#if (formFieldValue == systemCategory.key)>selected="selected"</#if> >${systemCategory.value}</option>
			</#list>
		</select>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Text', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Enumer', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >

<div class="control-group">
	<@c.set var="i18n_Attribute_Key" value="${userFilterOptionVar.attribute.name}" />
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<select name="${formFieldNameVar}" id="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list userFilterOptionVar.attribute.items as enumeratorItemVar>
			<option value="${enumeratorItemVar}" <#if (formFieldValue??) && (enumeratorItemVar == formFieldValue)>selected="selected"</#if> ><@c.out value="${enumeratorItemVar}" /></option>
			</#list>
		</select>
	</div>

</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Date', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign currentLangVar ><@wp.info key="currentLang" /></#assign>

<#assign js_for_datepicker="jQuery(function($){
	$.datepicker.regional[''it''] = {
		closeText: ''Chiudi'',
		prevText: ''&#x3c;Prec'',
		nextText: ''Succ&#x3e;'',
		currentText: ''Oggi'',
		monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
			''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
		monthNamesShort: [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
			''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
		dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
		dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
		dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
		weekHeader: ''Sm'',
		dateFormat: ''yy-mm-dd'',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''''};
});

jQuery(function($){
	if (Modernizr.touch && Modernizr.inputtypes.date) {
		$.each(	$(\"input[data-isdate=true]\"), function(index, item) {
			item.type = ''date'';
		});
	} else {
		$.datepicker.setDefaults( $.datepicker.regional[ \"${currentLangVar}\" ] );
		$(\"input[data-isdate=true]\").datepicker({
      			changeMonth: true,
      			changeYear: true,
      			dateFormat: \"yy-mm-dd\"
    		});
	}
});" >

<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.min.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />

<fieldset>
<legend>
<@c.set var="i18n_Attribute_Key" value="${userFilterOptionVar.attribute.name}" />
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>

<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="DATE_FROM" />
	</label>
	<div class="controls">
		<input id="formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="DATE_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" />
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Boolean', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Boolean-ignoreOption.jsp" /> -->
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />

<div class="control-group">
	<div class="controls">
		<label for="${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
	</div>
	<div class="controls">
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Bool_io', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameControlVar = userFilterOptionVar.formFieldNames[2] >
<input name="${formFieldNameControlVar}" type="hidden" value="true" />
<#assign formFieldNameIgnoreVar = userFilterOptionVar.formFieldNames[1] >
<#assign formFieldIgnoreValue = userFilterOptionVar.getFormFieldValue(formFieldNameIgnoreVar) >
<#assign formFieldControlValue = userFilterOptionVar.getFormFieldValue(formFieldNameControlVar) >

<div class="controls">
	<label for="ignore_${formFieldNameIgnoreVar}" class="checkbox">
	<input id="ignore_${formFieldNameIgnoreVar}" name="${formFieldNameIgnoreVar}" <#if (formFieldIgnoreValue?? && formFieldIgnoreValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
	<@wp.i18n key="IGNORE" /></label>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_CheckBox', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />

<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="checkbox">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
		<@wp.i18n key="YES"/></label>
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_ThreeSt', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />

<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
		<label for="both_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="both_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "both")>checked="checked"</#if> value="both" type="radio" />
		<@wp.i18n key="BOTH"/></label>
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Number', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<fieldset>
<legend>
<@c.set var="i18n_Attribute_Key" value="${userFilterOptionVar.attribute.name}" />
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>

<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_FROM" />
	</label>
	<div class="controls">
		<input id="${formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-language_choose', 'entando-widget-language_choose', NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-1.10.0.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />
<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />

<ul class="nav">
  <li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon-flag"></span> <@wp.i18n key="ESLC_LANGUAGE" /> <span class="caret"></span></a>
      <ul class="dropdown-menu">
				<@wp.freemarkerTemplateParameter var="langsListVar" valueName="langsVar" removeOnEndTag=true >
				
				<#list langsListVar as curLangVar>
				<li
							<#if (curLangVar.code == currentLangVar)>class="active" </#if>>
							<a href=<@wp.url lang="${curLangVar.code}" paramRepeat=true />">
								<@wp.i18n key="ESLC_LANG_${curLangVar.code}" />
							</a>
				</li>
				</#list>
				
				</@wp.freemarkerTemplateParameter>
      </ul>
  </li>
</ul>', 1);
