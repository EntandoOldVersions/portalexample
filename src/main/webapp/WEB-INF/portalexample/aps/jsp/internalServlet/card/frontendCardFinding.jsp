<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<wp:headInfo type="CSS" info="showlets/card_list.css" />

<div class="card_list">
<form action="<wp:action path="/ExtStr2/do/FrontEnd/Card/search.action" />" method="post">
<fieldset><legend><wp:i18n key="SEARCH_CARDS" /></legend>
	<div class="formPair">
		<label for="holder"><wp:i18n key="CARD_HOLDER" /></label>
		<wpsf:textfield name="holder" id="holder" />
			<s:set name="searchLabel"><wp:i18n key="SEARCH" /></s:set>
			<wpsf:submit value="%{#searchLabel}" />
	</div>
</fieldset>

<wpsa:subset source="cards" count="10" objectName="groupCard" advanced="true" offset="5">
<s:set name="group" value="#groupCard" />

<div class="centerText">
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
</div>

<table class="generic" border="1" summary="<wp:i18n key="CARDS_LIST_SUMMARY" />">
<tr>
	<th><wp:i18n key="CARD_HOLDER" /></th>
	<th><wp:i18n key="CARD_DESCRIPTION" /></th>
	<th><wp:i18n key="CARD_CREATION_DATE" /></th>
</tr>
<s:iterator id="card">
<tr>
	<td><a href="<wp:action path="/ExtStr2/do/FrontEnd/Card/view.action" ><wp:parameter name="id"><s:property value="#card.id" /></wp:parameter></wp:action>" title="<wp:i18n key="EDIT" />: <s:property value="#card.id" />" ><s:property value="#card.holder" /></a></td>
	<td><s:property value="#card.descr" /></td>
	<td><s:date name="#card.date" format="dd/MM/yyyy" /></td>
</tr>
</s:iterator>
</table>

<div class="centerText">
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
</div>

</wpsa:subset>

</form>
</div>