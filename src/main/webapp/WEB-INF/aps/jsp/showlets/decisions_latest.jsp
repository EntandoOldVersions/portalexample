<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*  
        Author: William Ghelfi <w.ghelfi@agiletec.it> - 2005/05/23
        Author: Eugenio Santoboni <e.santoboni@agiletec.it>
        
        Eroga in automatico gli ultimi 2 contenuti di tipo "DLB" (Delibera), ordinati 
        per "data" decrescente.
*/                  
%>
<wp:headInfo type="CSS" info="showlets/delibere_latest.css" />

<div class="delibere_latest">
<h2 class="title"><wp:i18n key="LATEST_DECISIONS" /></h2>

<jacms:contentList listName="contentList" contentType="DLB" >
	<jacms:contentListFilter key="Date" attributeFilter="true" order="DESC" />
</jacms:contentList>

<ul>
<c:if test="${contentList != null}">
	<c:forEach var="contentId" items="${contentList}" begin="0" end="2">
		<li><jacms:content contentId="${contentId}" modelId="31" /></li>
	</c:forEach>
</c:if>        
</ul>
</div>