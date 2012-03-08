<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<s:set var="targetNS" value="%{'/do/Card'}" />
<h1><s:text name="title.cardManagement" /><s:include value="/WEB-INF/apsadmin/jsp/common/inc/operations-context-general.jsp" /></h1>
<div id="main">
	<s:form action="search">
		
		<p>
			<label for="holder" class="basic-mint-label label-search"><s:text name="label.search.by"/>&#32;<s:text name="label.cardHolder" />:</label>
			<wpsf:textfield name="holder" id="holder" cssClass="text" />
			&#32;
			<wpsf:submit value="%{getText('label.search')}" cssClass="button" />
		</p> 
		<div class="subsection-light">
		
			<wpsa:subset source="cards" count="10" objectName="cardsGroup" advanced="true" offset="5">
				<%-- IMPORTANT! --%>
				<s:set name="group" value="#cardsGroup" />
				
				<div class="pager">
					<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
					<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
				</div>
				
				<s:if test="%{#group.size>0}">
					<table class="generic" summary="TODO">
						<caption><span>Cards</span></caption>
						<tr>
							<th><s:text name="label.cardHolder" /></th>
							<th><s:text name="label.cardDescr" /></th>
							<th><s:text name="label.cardDate" /></th>	
							<th class="icon"><abbr title="<s:text name="label.remove" />">&ndash;</abbr></th>	
						</tr>
							<s:iterator var="card">
							<tr> 
								<td><a href="<s:url action="edit"><s:param name="id" value="#card.id"/></s:url>" title="<s:text name="label.edit" />: <s:property value="#card.holder" />" ><s:property value="#card.holder" /></a></td>
								<td><s:property value="#card.descr" /></td>
								<td class="centerText"><s:date name="#card.date" format="dd/MM/yyyy" /></td>
								<td class="icon"><a href="<s:url action="delete"><s:param name="id" value="#card.id"/></s:url>" title="<s:text name="label.remove" />: <s:property value="#card.holder" />"><img src="<wp:resourceURL />administration/common/img/icons/delete.png" alt="<s:text name="label.alt.clear" />" /></a></td>
							</tr>
							</s:iterator>
					</table>
				</s:if>
				
				<div class="pager">
					<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
				</div>
				
			</wpsa:subset>
		</div>
	</s:form>
</div>