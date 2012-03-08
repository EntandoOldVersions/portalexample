<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<s:set var="targetNS" value="%{'/do/Card'}" />
<h1><s:text name="title.cardManagement" /><s:include value="/WEB-INF/apsadmin/jsp/common/inc/operations-context-general.jsp" /></h1>

<div id="main">
	<div class="intro CARD">
		<s:property value="%{getText('card.intro.html')}" escape="false"  />
	</div>
</div>