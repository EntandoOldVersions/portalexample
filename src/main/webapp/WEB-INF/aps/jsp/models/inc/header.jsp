<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope.currentUser != 'guest'}">
<wp:currentPage param="owner" var="currentPageOwner" />
<wp:ifauthorized permission="managePages" groupName="${currentPageOwner}">
<div id="bar-page-edit">
<wp:currentPage param="code" var="currentPageCode" />
<p>
	<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/Page/detail.action?selectedNode=<c:out value="${currentPageCode}" />" title="<wp:i18n key="PAGE_DETAILS" />">
	<img src="<wp:resourceURL />administration/common/img/icons/32x32/detail.png" width="22" height="22" alt="<wp:i18n key="PAGE_DETAILS" />" />
	</a>
	<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/Page/viewTree.action?selectedNode=<c:out value="${currentPageCode}" />" title="<wp:i18n key="EDIT_THIS_PAGE" />">
	<img src="<wp:resourceURL />administration/common/img/icons/32x32/page-edit.png" width="22" height="22" alt="<wp:i18n key="EDIT_THIS_PAGE" />" />
	</a>
</p>
</div>
</wp:ifauthorized>
</c:if>

<div id="header">
<h1><wp:i18n key="MAIN_TITLE" /></h1>
<p><wp:i18n key="MAIN_SUBTITLE" /></p>
<div class="noscreen">
	<p>[ <a href="#a4" id="a0"><wp:i18n key="SKIP_ALL" /></a> ]</p>
	<dl>
		<dt><wp:i18n key="SERVICES" />:</dt>
		<dd><a href="#a1" accesskey="1"><wp:i18n key="LANGUAGE" /></a> [1];</dd>
		<dd><a href="#a2" accesskey="2"><wp:i18n key="SEARCH_ENGINE" /></a> [2];</dd>
		<dd><a href="#a3" accesskey="3"><wp:i18n key="MENU_NAVIGATION" /></a> [3];</dd>
		<dd><a href="#a4" accesskey="4"><wp:i18n key="CONTENTS" /></a> [4];</dd>
		<dd><a href="#a5" accesskey="5"><wp:i18n key="LOGIN" /></a>;</dd>
	</dl>
</div>
</div>
<div id="subheader">
	<div id="subheader1">
		<p class="noscreen">[ <a href="#a0" id="a1"><wp:i18n key="BACK_TO_THE_TOP" /></a> ]</p>
		<p class="noscreen">[ <a href="#a2"><wp:i18n key="SKIP" />&#32;<wp:i18n key="ALLA" />&#32;<wp:i18n key="SEARCH_ENGINE" /></a> ]</p>
		<wp:show frame="0"/>
	</div>
	<div id="subheader2">
		<p class="noscreen">[ <a href="#a0" id="a2"><wp:i18n key="BACK_TO_THE_TOP" /></a> ]</p>
		<p class="noscreen">[ <a href="#a3"><wp:i18n key="SKIP" />&#32;<wp:i18n key="AL" />&#32;<wp:i18n key="MENU_NAVIGATION" /></a> ]</p>
		<wp:show frame="1"/>
	</div>
</div>
<div id="topmain">
	<wp:show frame="2"/>
</div>