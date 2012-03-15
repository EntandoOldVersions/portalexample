<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*  menu.jsp
	Author: William Ghelfi <w.ghelfi@agiletec.it> - 2005/04/14
	Author: Marco Diana - 2005/04/15
    
	Showlet che mostra il menù di navigazione verticale.
*/
%>
<c:set var="isMobile"><wp:currentPage param="childOf" targetPage="mobile" /></c:set>
<wp:headInfo type="CSS" info="showlets/navigation_menu.css" />

<div class="navigation_menu">
<c:set var="prev" value="-1" />
<wp:currentPage param="code" var="currentViewCode" />
<c:set var="startClosing" value="0" />	

<ul class="menuRoot" <c:if test="${isMobile == true}">data-role="listview" data-inset="true"</c:if>>
<wp:nav var="currentTarget">
	<c:set var="current"><c:out value="${currentTarget.level}" /></c:set>
	<c:set var="currentCode"><c:out value="${currentTarget.code}" /></c:set>
	
		<c:if test="${current == prev}"></li></c:if>
		<c:if test="${current < prev}"></li></ul></li></c:if>
		<c:if test="${(current > prev) && (current != 0)}"><ul <c:if test="${isMobile == true}">data-role="listview" data-inset="true"</c:if>></c:if>	
		
		<c:choose>
			<c:when test="${!currentTarget.voidPage}">		
				<c:choose>
					<c:when test="${currentCode == currentViewCode}"><li><c:if test="${currentCode == 'homepage'}"><span class="noscreen"></c:if><span class="current"><c:out value="${currentTarget.title}" /></span><c:if test="${currentCode == 'homepage'}"></span></c:if></c:when>
					<c:otherwise><li><c:if test="${currentCode == 'homepage'}"><span class="noscreen"></c:if><span><a href="<c:out value="${currentTarget.url}" />" title="<wp:i18n key="GO_TO_PAGE" />: <c:out value="${currentTarget.title}" />"><c:out value="${currentTarget.title}" /></a></span><c:if test="${currentCode == 'homepage'}"></span></c:if></c:otherwise>
				</c:choose>
			</c:when>
			<c:otherwise>
					<li <c:if test="${isMobile == true}">data-role="list-divider"</c:if>><c:if test="${currentCode == 'homepage'}"><span class="noscreen"></c:if><span class="title"><c:out value="${currentTarget.title}" /></span><c:if test="${currentCode == 'homepage'}"></span></c:if>
			</c:otherwise>
		</c:choose>
		<c:set var="prev"><c:out value="${currentTarget.level}" /></c:set>
		
</wp:nav>
<c:if test="${prev==0}"></li></ul></c:if>
<c:if test="${prev<0}"></ul></c:if>
<c:if test="${prev>0}">
<c:forEach begin="${startClosing}" end="${prev}" ></li></ul></c:forEach> 
</c:if>
</div>
