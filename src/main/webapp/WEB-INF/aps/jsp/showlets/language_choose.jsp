<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<wp:headInfo type="CSS" info="showlets/language_choose.css" />

<c:set var="isMobile"><wp:currentPage param="childOf" targetPage="mobile" /></c:set>
<div class="language_choose">
	<wp:info key="langs" var="langs" />
	<wp:info key="currentLang" var="currentLang" />
	
	<c:if test="${isMobile == true}">
	<div data-role="collapsible" data-collapsed="true" >
	<h3>Langs</h3>
	</c:if>
	
	<ul <c:if test="${isMobile == true}">data-role="listview" data-inset="true"</c:if>>
	<c:forEach var="lang" items="${langs}">
		<c:choose>
			<c:when test="${currentLang == lang.code}"><li><c:out value="${lang.code}" /></li></c:when>
			<c:otherwise><li><a href="<wp:url lang="${lang.code}" paramRepeat="true" />" title="<c:out value="${lang.descr}" />"><c:out value="${lang.code}" /></a></li></c:otherwise>
		</c:choose>
	</c:forEach>
	</ul>
	<c:if test="${isMobile == true}">
	</div>	
	</c:if>
</div>