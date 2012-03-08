<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>

<h2 class="title"><wp:i18n key="VIEW_CARD" /></h2>

<p><span class="bolded"><wp:i18n key="CARD_HOLDER" />:</span><br /><s:property value="holder" /></p>
	
<p><span class="bolded"><wp:i18n key="CARD_DESCRIPTION" />:</span><br /><s:property value="descr" /></p>

<p><span class="bolded"><wp:i18n key="CARD_NOTE" />:</span><br /><s:property value="note" /></p>

<p><span class="bolded"><wp:i18n key="CARD_CREATION_DATE" />:</span><br /><s:property value="date" /></p>

<p class="rightText">
	<a href="<wp:action path="/ExtStr2/do/FrontEnd/Card/list.action" />"><wp:i18n key="BACK_TO_CARDS_LIST" /></a>
</p>