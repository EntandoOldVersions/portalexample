<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*  
        Author: William Ghelfi <w.ghelfi@agiletec.it> - 2005/05/23
        Author: Eugenio Santoboni <e.santoboni@agiletec.it>
        
        Eroga in automatico gli ultimi 2 contenuti di tipo "BND" (Bandi), ordinati 
        per "data" decrescente.
*/                  
%>

<wp:headInfo type="CSS" info="showlets/bandi_latest.css" />

<div class="bandi_latest clear">
<h2 class="title"><wp:i18n key="LATEST_BANDI" /></h2>

<jacms:contentList listName="contentList" contentType="BND" >
<jacms:contentListFilter key="StartDate" attributeFilter="true" order="DESC" />
</jacms:contentList>

<ul>
<c:if test="${contentList != null}">
	<c:forEach var="content" items="${contentList}" begin="0" end="2">
		<li><jacms:content contentId="${content}" modelId="41" /></li>
	</c:forEach>
</c:if>        
</ul>
</div>