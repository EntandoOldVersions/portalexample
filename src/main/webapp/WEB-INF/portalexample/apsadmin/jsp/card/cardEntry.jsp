<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<s:set var="targetNS" value="%{'/do/Card'}" />
<h1><s:text name="title.cardManagement" /><s:include value="/WEB-INF/apsadmin/jsp/common/inc/operations-context-general.jsp" /></h1>
<div id="main">
	<s:if test="getStrutsAction() == 1">
		<h2><s:text name="title.newCard" /></h2>
	</s:if>
	<s:if test="getStrutsAction() == 2">
		<h2><s:text name="title.editCard" /></h2>	
	</s:if>
	
	<s:form action="save" >
		<s:if test="hasFieldErrors()">
			<div class="message message_error">	
				<h3><s:text name="message.title.FieldErrors" /></h3>
				<ul>
					<s:iterator value="fieldErrors">
						<s:iterator value="value">
				            <li><s:property/></li>
						</s:iterator>
					</s:iterator>
				</ul>
			</div>
		</s:if>
		<fieldset class="margin-more-top"> 
			<legend><s:text name="label.info" /></legend>
			<p class="noscreen">
				<wpsf:hidden name="strutsAction" />
				<s:if test="getStrutsAction() == 2">
					<wpsf:hidden name="id" />
				</s:if>
			</p>
			<p>
				<label for="holder" class="basic-mint-label"><s:text name="label.cardHolder" />:</label>
				<wpsf:textfield name="holder" id="holder" cssClass="text" />
			</p>
			
			<p>
				<label for="descr" class="basic-mint-label"><s:text name="label.cardDescr" />:</label>
				<wpsf:textfield name="descr" id="descr" cssClass="text" />
			</p>
			
			<p>
				<label for="date_cal" class="basic-mint-label"><s:text name="label.cardDate" />:</label>
				<wpsf:textfield name="date" id="date_cal" cssClass="text" />
			</p>
			
			<p>
				<label for="note" class="basic-mint-label"><s:text name="label.cardNote" />:</label>
				<wpsf:textarea name="note" id="note" cssClass="text" cols="50" rows="3" />
			</p>
			
		</fieldset>
		<p class="centerText">
			<wpsf:submit value="%{getText('label.save')}" cssClass="button" />
		</p>
	</s:form>
</div>