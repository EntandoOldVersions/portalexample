<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<wp:ifauthorized permission="superuser">
	<li><a href="<s:url action="list" namespace="/do/Card" />" >CARD</a></li>
</wp:ifauthorized>