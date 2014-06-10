INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-language_choose', 'entando-widget-language_choose', NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-1.10.0.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />
<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />

<ul class="nav">
  <li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon-flag"></span> <@wp.i18n key="ESLC_LANGUAGE" /> <span class="caret"></span></a>
      <ul class="dropdown-menu">
				<@wp.freemarkerTemplateParameter var="langsListVar" valueName="langsVar" removeOnEndTag=true >
				
				<#list langsListVar as curLangVar>
				<li
							<#if (curLangVar.code == currentLangVar)>class="active" </#if>>
							<a href="<@wp.url lang="${curLangVar.code}" paramRepeat=true />">
								<@wp.i18n key="ESLC_LANG_${curLangVar.code}" />
							</a>
				</li>
				</#list>
				
				</@wp.freemarkerTemplateParameter>
      </ul>
  </li>
</ul>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Enumer', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >

<div class="control-group">
	<@c.set var="i18n_Attribute_Key" value="${userFilterOptionVar.attribute.name}" />
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<select name="${formFieldNameVar}" id="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list userFilterOptionVar.attribute.items as enumeratorItemVar>
			<option value="${enumeratorItemVar}" <#if (formFieldValue??) && (enumeratorItemVar == formFieldValue)>selected="selected"</#if> ><@c.out value="${enumeratorItemVar}" /></option>
			</#list>
		</select>
	</div>

</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_menu_include', NULL, NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<#assign liClass="">

<#if (previousPage.code == currentPageCode)>
  <#assign liClass='' class="active"''>
</#if>
<#if previousPage.voidPage>
  <#assign liClass='' class="nav-header"''>
</#if>

<li ${liClass}>
   <#if (!previousPage.voidPage)>
   	<a href="${previousPage.url}">
   </#if>
   <!-- [ ${previousLevel} ]-->
<#--  CHECK THIS
${homeIcon}
-->
   ${previousPage.title}
   <#if (!previousPage.voidPage)>
     </a>
   </#if>
  
   <#if (previousLevel == level)>
	</li>
   </#if>
   <#if (previousLevel < level)>
	<ul class="nav nav-list">
   </#if>
   <#if (previousLevel > level)>
	<#list 1..(previousLevel - level) as ignoreMe>
		</li></ul>
	</#list>
   </#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Number', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<fieldset>
<legend>
<@c.set var="i18n_Attribute_Key" value="${userFilterOptionVar.attribute.name}" />
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>

<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_FROM" />
	</label>
	<div class="controls">
		<input id="${formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-DateAttribute', NULL, NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<#assign currentLangVar ><@wp.info key="currentLang" /></#assign>


<@s.if test="#attribute.failedDateString == null">
	<@s.set name="dateAttributeValue" value="#attribute.getFormattedDate(''dd/MM/yyyy'')" />
</@s.if>
<@s.else>
	<@s.set name="dateAttributeValue" value="#attribute.failedDateString" />
</@s.else>


<@wpsf.textfield 
		useTabindexAutoIncrement=true 
		id="%{attribute_id}" 
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		value="%{#dateAttributeValue}"
		maxlength="10"
		cssClass="text userprofile-date" />
		&#32;


	<#assign js_for_datepicker="jQuery(function($){
			$.datepicker.regional[''''it''''] = {
				closeText: ''''Chiudi'''',
				prevText: ''''&#x3c;Prec'''',
				nextText: ''''Succ&#x3e;'''',
				currentText: ''''Oggi'''',
				monthNames: [''''Gennaio'''',''''Febbraio'''',''''Marzo'''',''''Aprile'''',''''Maggio'''',''''Giugno'''',
			''''Luglio'''',''''Agosto'''',''''Settembre'''',''''Ottobre'''',''''Novembre'''',''''Dicembre''''],
				monthNamesShort:  [''''Gen'''',''''Feb'''',''''Mar'''',''''Apr'''',''''Mag'''',''''Giu'''',
			''''Lug'''',''''Ago'''',''''Set'''',''''Ott'''',''''Nov'''',''''Dic''''],
				dayNames: [''''Domenica'''',''''Luned&#236'''',''''Marted&#236'''',''''Mercoled&#236'''',''''Gioved&#236'''',''''Venerd&#236'''',''''Sabato''''],
				dayNamesShort: [''''Dom'''',''''Lun'''',''''Mar'''',''''Mer'''',''''Gio'''',''''Ven'''',''''Sab''''],
				dayNamesMin: [''''Do'''',''''Lu'''',''''Ma'''',''''Me'''',''''Gi'''',''''Ve'''',''''Sa''''],
				weekHeader: ''''Sm'''',
				dateFormat: ''''dd/mm/yy'''',
				firstDay: 1,
				isRTL: false,
				showMonthAfterYear: false,
				yearSuffix: ''''''''};
		});

		jQuery(function($) {
			if (Modernizr.touch && Modernizr.inputtypes.date) {
				$.each(	$(\"input.userprofile-date\"), function(index, item) {
					item.type = ''''date'''';
				});
			} else {
				$.datepicker.setDefaults( $.datepicker.regional[ \"${currentLangVar}\" ] );
				$(\"input.userprofile-date\").datepicker({
						changeMonth: true,
						changeYear: true,
						dateFormat: \"dd/mm/yy\"
		    		});
			}
		});
		">

<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.min.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front_attributeInfo-help-block', NULL, NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.set var="validationRules" value="#attribute.validationRules.ognlValidationRule" />
<@s.set var="hasValidationRulesVar" value="%{#validationRules != null && #validationRules.expression != null}" />

<@s.if test="%{#hasValidationRulesVar || #attribute.type == ''Date'' || (#attribute.textAttribute && (#attribute.minLength != -1 || #attribute.maxLength != -1))}">
		<span class="help-block">
		<@s.if test="#attribute.type == ''Date''">dd/MM/yyyy&#32;</@s.if>
		<@s.if test="%{#validationRules.helpMessageKey != null}">
			<@s.set var="label" scope="page" value="#validationRules.helpMessageKey" /><@wp.i18n key="${label}" />
		</@s.if>
		<@s.elseif test="%{#validationRules.helpMessage != null}">
			<@s.property value="#validationRules.helpMessage" />
		</@s.elseif>
		<@s.if test="#attribute.minLength != -1">
			&#32;
			<abbr title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL" />&#32;<@s.property value="#attribute.minLength" />">
				<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT" />:&#32;<@s.property value="#attribute.minLength" />
			</abbr>
		</@s.if>
		<@s.if test="#attribute.maxLength != -1">
			&#32;
			<abbr title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL" />&#32;<@s.property value="#attribute.maxLength" />">
				<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT" />:&#32;<@s.property value="#attribute.maxLength" />
			</abbr>
		</@s.if>
	</span>
</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_passwordChanged', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign s=JspTaglibs["/struts-tags"]>

<h1><@wp.i18n key="userprofile_EDITPASSWORD_TITLE" /></h1>
<p class="alert alert-success"><@wp.i18n key="userprofile_PASSWORD_UPDATED" /></p>
<@s.if test="!#session.currentUser.credentialsNonExpired">
	<p class="alert alert-info">
		<a href="<@s.url namespace="/do" action="logout" />" ><@wp.i18n key="userprofile_PLEASE_LOGIN_AGAIN" /></a>
	</p>
</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-HypertextAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.textarea 
	useTabindexAutoIncrement=true 
	cols="50" 
	rows="3" 
	id="%{#attribute_id}" 
	name="%{#attributeTracer.getFormFieldName(#attribute)}" 
	value="%{#attribute.textMap[#lang.code]}"  />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-NumberAttribute', NULL, NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.if test="#attribute.failedNumberString == null">
	<@s.set name="numberAttributeValue" value="#attribute.value"></@s.set>
</@s.if>
<@s.else>
	<@s.set name="numberAttributeValue" value="#attribute.failedNumberString"></@s.set>
</@s.else>
<@wpsf.textfield 
		useTabindexAutoIncrement=true 
		id="%{#attribute_id}" 
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		value="%{#numberAttributeValue}"
		maxlength="254" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-BooleanAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-true''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true 
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-true''}" 
		value="true"
		checked="%{#attribute.value == true}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_YES" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id+''-false''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true 
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-false''}" 
		value="false" 
		checked="%{#attribute.value == false}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_NO" />
</label>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-ThreeStateAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-none''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true  
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-none''}" 
		value="" 
		checked="%{#attribute.booleanValue == null}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_BOTH_YES_AND_NO" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-true''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true  
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-true''}" 
		value="true" 
		checked="%{#attribute.booleanValue != null && #attribute.booleanValue == true}"
		cssClass="radio" />
		<@wp.i18n key="userprofile_YES" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-false''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true  
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-false''}" 
		value="false" 
		checked="%{#attribute.booleanValue != null && #attribute.booleanValue == false}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_NO" />
</label>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_frontAttributeInfo', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.if test="#attribute.required">
	<abbr class="icon icon-asterisk" title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL" />"><span class="noscreen"><@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT" /></span></abbr>
</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front_AllList_operationModule', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.if test="null == #operationButtonDisabled">
	<@s.set var="operationButtonDisabled" value="false" />
</@s.if>
<div class="btn-toolbar">
	<div class="btn-group btn-group-sm">
		<@wpsa.actionParam action="moveListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
			<@wpsa.actionSubParam name="movement" value="UP" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default" title="%{getText(''label.moveInPositionNumber'')}: %{#elementIndex}">
		<span class="icon fa fa-sort-desc"></span>
		<span class="sr-only"><@s.text name="label.moveInPositionNumber" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>

		<@wpsa.actionParam action="moveListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
			<@wpsa.actionSubParam name="movement" value="DOWN" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default" title="%{getText(''label.moveInPositionNumber'')}: %{#elementIndex+2}">
		<span class="icon fa fa-sort-asc"></span>
		<span class="sr-only"><@s.text name="label.moveInPositionNumber" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>
	</div>
	<div class="btn-group btn-group-sm">
		<@wpsa.actionParam action="removeListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default btn-warning" title="%{getText(''label.remove'')}: %{#elementIndex}">
		<span class="icon fa fa-times-circle-o"></span>
		<span class="sr-only"><@s.text name="label.remove" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_editEntry', NULL, NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<#if (Session.currentUser != "guest") >
	<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/Profile/save.action" />" method="post" class="form-horizontal">
	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escape=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>
	<@s.set name="lang" value="defaultLang" />
	<@s.iterator value="userProfile.attributeList" id="attribute">
		<@s.if test="%{#attribute.active}">
			<@wpsa.tracerFactory var="attributeTracer" lang="%{#lang.code}" />
				<@s.set var="i18n_attribute_name">userprofile_<@s.property value="userProfile.typeCode" />_<@s.property value="#attribute.name" /></@s.set>
				<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" /></@s.set>
				<@wp.fragment code="user-profile_is_IteratorAttribute" escapeXml=false />
		</@s.if>
	</@s.iterator>

	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PROFILE" var="userprofile_SAVE_PROFILE" />
		<@wpsf.submit useTabindexAutoIncrement=true value="%{#attr.userprofile_SAVE_PROFILE}" cssClass="btn btn-primary" />
	</p>

	</form>
<#else>
	<p>
		<@wp.i18n key="userprofile_PLEASE_LOGIN" />
	</p>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilters', NULL, 'jacms', NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<#if (userFilterOptionsVar??) && userFilterOptionsVar?has_content && (userFilterOptionsVar?size > 0)>
<div class="row-fluid"><div class="span12 padding-medium-top">

<#assign hasUserFilterError = false >
<#-- <@c.set var="hasUserFilterError" value=false /> -->

<#list userFilterOptionsVar as userFilterOptionVar>
<#if (userFilterOptionVar.formFieldErrors??) && userFilterOptionVar.formFieldErrors?has_content && (userFilterOptionVar.formFieldErrors?size > 0)>
<#assign hasUserFilterError = true >
<#-- <@c.set var="hasUserFilterError" value=true /> -->
</#if>
</#list>

<#if (hasUserFilterError)>
<div class="alert alert-error">
	<a class="close" data-dismiss="alert" href="#"><i class="icon-remove"></i></a>
	<h2 class="alert-heading"><@wp.i18n key="ERRORS" /></h2>
	<ul>
		<#list userFilterOptionsVar as userFilterOptionVar>
			<#if (userFilterOptionVar.formFieldErrors??) && (userFilterOptionVar.formFieldErrors?size > 0)>
			<#assign formFieldErrorsVar = userFilterOptionVar.formFieldErrors >
			<#list formFieldErrorsVar?keys as formFieldErrorKey>
			<li>
			<@wp.i18n key="jacms_LIST_VIEWER_FIELD" />&#32;<em>${formFieldErrorsVar[formFieldErrorKey].attributeName}</em><#if (formFieldErrorsVar[formFieldErrorKey].rangeFieldType??)>:&#32;<em><@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].rangeFieldType}" /></em></#if>&#32;<@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].errorKey}" />
			</li>
			</#list>
			</#if>
		</#list>
	</ul>
</div>
</#if>
<@c.set var="hasUserFilterError" value=false />

<p><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#content-viewer-list-filters"><@wp.i18n key="SEARCH_FILTERS_BUTTON" /> <i class="icon-zoom-in icon-white"></i></button></p>

<form action="<@wp.url />" method="post" class="form-horizontal collapse" id="content-viewer-list-filters">
	<#list userFilterOptionsVar as userFilterOptionVar>
		<@wp.freemarkerTemplateParameter var="userFilterOptionVar" valueName="userFilterOptionVar" removeOnEndTag=true >
		<#if !userFilterOptionVar.attributeFilter && (userFilterOptionVar.key == "fulltext" || userFilterOptionVar.key == "category")>
			<@wp.fragment code="jacms_content_viewer_list_userfilter_met_${userFilterOptionVar.key}" escapeXml=false />
			<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-${userFilterOptionVar.key}.jsp" /> -->
		</#if>
		<#if userFilterOptionVar.attributeFilter >
			<#if userFilterOptionVar.attribute.type == "Monotext" || userFilterOptionVar.attribute.type == "Text" || userFilterOptionVar.attribute.type == "Longtext" || userFilterOptionVar.attribute.type == "Hypertext">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Text" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Text.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "Enumerator" >
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Enumer" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Enumerator.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "Number">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Number" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Number.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "Date">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Date" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Date.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "Boolean">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Boolean" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Boolean.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "CheckBox">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_CheckBox" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-CheckBox.jsp" /> -->
			</#if>
			<#if userFilterOptionVar.attribute.type == "ThreeState">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_ThreeSt" escapeXml=false />
				<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-ThreeState.jsp" /> -->
			</#if>
		</#if>
		</@wp.freemarkerTemplateParameter>
	</#list>
	<p class="form-actions">
		<input type="submit" value="<@wp.i18n key="SEARCH" />" class="btn btn-primary" />
	</p>
</form>
</div></div>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-AllList-addElementButton', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.set var="add_label"><@wp.i18n key="userprofile_ADDITEM_LIST" /></@s.set>

<@wpsa.actionParam action="addListElement" var="actionName" >
	<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
	<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
</@wpsa.actionParam>
<@s.set name="iconImagePath" id="iconImagePath"><@wp.resourceURL/>administration/common/img/icons/list-add.png</@s.set> 
<@wpsf.submit 
	cssClass="btn"
	useTabindexAutoIncrement=true 
	action="%{#actionName}" 
	value="%{add_label}" 
	title="%{i18n_attribute_name}%{'': ''}%{add_label}" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_met_fulltext', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="TEXT" /></label>
	<div class="controls">
		<input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_met_category', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >

<@c.set var="userFilterCategoryCodeVar">${userFilterOptionVar.userFilterCategoryCode?default("")}</@c.set>
<@wp.categories var="systemCategories" titleStyle="prettyFull" root="${userFilterCategoryCodeVar}" />
<div class="control-group">
	<label for="category" class="control-label"><@wp.i18n key="CATEGORY" /></label>
	<div class="controls">
		<select id="category" name="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list systemCategories as systemCategory>
			<option value="${systemCategory.key}" <#if (formFieldValue == systemCategory.key)>selected="selected"</#if> >${systemCategory.value}</option>
			</#list>
		</select>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Text', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-login_form', 'entando-widget-login_form', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-1.10.0.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />

<ul class="nav pull-right">
	<li class="span2 dropdown
<#if (accountExpired?? && accountExpired == true) || (wrongAccountCredential?? && wrongAccountCredential == true)>open</#if>
">

	<#if (Session.currentUser != "guest")>
	<!-- caso 1 -->
			<div class="btn-group">
				<button class="btn span2 text-left dropdown-toggle" data-toggle="dropdown">
					<@c.out value="${Session.currentUser}" />
					<span class="caret pull-right"></span>
				</button>
				<ul class="dropdown-menu pull-right well-small">
					<li class="padding-medium-vertical">

						<@wp.ifauthorized permission="enterBackend">
						<p>
							<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />"><span class="icon-wrench"></span> <@wp.i18n key="ESLF_ADMINISTRATION" /></a>
						</p>
						</@wp.ifauthorized>
						<div class="divider"></div>
						<p class="help-block text-right">
							<a class="btn" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action"><@wp.i18n key="ESLF_SIGNOUT" /></a>
						</p>
						<@wp.pageWithWidget var="editProfilePageVar" widgetTypeCode="userprofile_editCurrentUser" />
						<#if (editProfilePageVar??) >
						<p class="help-block text-right">
							<a href="<@wp.url page="${editProfilePageVar.code}" />" ><@wp.i18n key="ESLF_PROFILE_CONFIGURATION" /></a>
						</p>
						</#if>
					</li>
				</ul>
			</div>	
		<#else>
			<!-- caso 2 -->
			<a class="dropdown-toggle text-right" data-toggle="dropdown" href="#"><@wp.i18n key="ESLF_SIGNIN" /> <span class="caret"></span></a>
			<ul class="dropdown-menu well-small">
				<li>
					<form class="form-vertical" method="POST">
						<#if (accountExpired?? && accountExpired == true)>
						<div class="alert alert-error">
							<button class="close" data-dismiss="alert">x</button>
							<@wp.i18n key="ESLF_USER_STATUS_EXPIRED" />
						</div>
						</#if>
						<#if (wrongAccountCredential?? && wrongAccountCredential == true)>
						<div class="alert alert-error">
							<button class="close" data-dismiss="alert">x</button>
							<@wp.i18n key="ESLF_USER_STATUS_CREDENTIALS_INVALID" />
						</div>
						</#if>
						<input type="text" name="username" class="input-large" placeholder="<@wp.i18n key="ESLF_USERNAME" />">
						<input type="password" name="password" class="input-large" placeholder="<@wp.i18n key="ESLF_PASSWORD" />">
						<p class="text-right">
							<input type="submit" class="btn btn-primary" value="<@wp.i18n key="ESLF_SIGNIN" />" />
						</p>
					</form>
				</li>
			</ul>
		</#if>
	</li>
</ul>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_editPassword', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<h1><@wp.i18n key="userprofile_EDITPASSWORD" /></h1>

<#if (Session.currentUser != "guest") >

	<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/changePassword.action" />" method="post" class="form-horizontal">

	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escape=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>

	<p class="noscreen">
		<wpsf:hidden name="username" />
	</p>

	<div class="control-group">
		<label for="userprofile-old-password" class="control-label"><@wp.i18n key="userprofile_OLDPASSWORD" /></label>
		<div class="controls">
			<@wpsf.password 
				useTabindexAutoIncrement=true 
				name="oldPassword" 
				id="userprofile-old-password" />
		</div>
	</div>

	<div class="control-group">
		<label for="userprofile-new-password" class="control-label"><@wp.i18n key="userprofile_NEWPASS" /></label>
		<div class="controls">
			<@wpsf.password 
				useTabindexAutoIncrement=true 
				name="password" 
				id="userprofile-new-password" />
		</div>
	</div>

	<div class="control-group">
		<label for="userprofile-new-password-confirm" class="control-label"><@wp.i18n key="userprofile_CONFIRM_NEWPASS" /></label>
		<div class="controls">
			<@wpsf.password 
				useTabindexAutoIncrement=true 
				name="passwordConfirm" 
				id="userprofile-new-password-confirm" />
		</div>
	</div>

	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PASSWORD" var="userprofile_SAVE_PASSWORD" />
		<@wpsf.submit 
			useTabindexAutoIncrement=true 
			value="%{#attr.userprofile_SAVE_PASSWORD}" 
			cssClass="btn btn-primary" />
	</p>

	</form>
	
<#else>
	<p>
		<@wp.i18n key="userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD" />
	</p>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('models-common-utils', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#-- css -->
<@wp.outputHeadInfo type="CSS">
	<link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
</@wp.outputHeadInfo>

<#-- css -->
<@wp.outputHeadInfo type="CSS_EXT">
	<link rel="stylesheet" type="text/css" href="<@wp.printHeadInfo />" />
</@wp.outputHeadInfo>

<#-- css for ie7 -->
<@wp.outputHeadInfo type="CSS_IE7">
	<!--[if IE 7]>
		<link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
	<![endif]-->
</@wp.outputHeadInfo>

<#-- css for ie8 -->
<@wp.outputHeadInfo type="CSS_IE8">
	<!--[if IE 8]>
		<link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
	<![endif]-->
</@wp.outputHeadInfo>

<#-- js global vars -->
<@wp.outputHeadInfo type="JS_VARS">
	<script>
	<!--//--><![CDATA[//><!--
		<@wp.printHeadInfo />
	//--><!]]>
	</script>
</@wp.outputHeadInfo>

<#-- js scripts (remember to include the libraries first) -->
<@wp.outputHeadInfo type="JS">
	<script src="<@wp.resourceURL />static/js/<@wp.printHeadInfo />"></script>
</@wp.outputHeadInfo>

<#-- external/CDN js scripts (remember to include the libraries first) -->
<@wp.outputHeadInfo type="JS_EXT">
	<script src="<@wp.printHeadInfo />"></script>
</@wp.outputHeadInfo>

<#-- js code -->
<@wp.outputHeadInfo type="JS_RAW">
	<script>
	<!--//--><![CDATA[//><!--
		<@wp.printHeadInfo />
	//--><!]]>
	</script>
</@wp.outputHeadInfo>', NULL, 0);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('models-lesscss-active', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<link rel="stylesheet/less" href="<@wp.resourceURL />static/entando-misc-bootstrap/bootstrap/less/bootstrap.less" />
<link rel="stylesheet/less" href="<@wp.resourceURL />static/entando-misc-bootstrap/bootstrap/less/responsive.less" />
<link rel="stylesheet/less" href="<@wp.resourceURL />static/less/portalexample.less" />
<script src="<@wp.resourceURL />static/js/entando-misc-less/less-1.3.1.min.js"></script>', NULL, 0);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_IteratorAttribute', NULL, NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign i18n_attribute_name ><@s.property value="#i18n_attribute_name" /></#assign>
<@s.if test="#attribute.type == ''Boolean''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 	
		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_booleanAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />	
-->
			<@wp.fragment code="user-profile_is_front-BooleanAttribute" escapeXml=false />
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />

		</div>
	</div>
</@s.if>
<@s.elseif test="#attribute.type == ''CheckBox''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_checkBoxAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-CheckboxAttribute" escapeXml=false />
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>	
<@s.elseif test="#attribute.type == ''Composite''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top">
				<@wp.i18n key="${i18n_attribute_name}" />
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
				<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false />
			</legend>
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_compositeAttribute.jsp" />
-->
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="user-profile_is_front-CompositeAttribute" escapeXml=false />
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Date''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_dateAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-DateAttribute" escapeXml=false /> 
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
			
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Enumerator''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 

		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_enumeratorAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-EnumeratorAttribute" escapeXml=false /> 
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
		
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Hypertext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->

			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 

		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_hypertextAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-HypertextAttribute" escapeXml=false /> 
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''List''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top">
				<@wp.i18n key="${i18n_attribute_name}" />
<#--
					<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
					<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 
									
			</legend>
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monolistAttribute.jsp" />
-->
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="user-profile_is_front-MonolistAttribute" escapeXml=false /> 
		</fieldset>
	</div>
	LISTA</br>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Longtext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_hypertextAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-HypertextAttribute" escapeXml=false /> 			
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
			
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Monolist''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top"><@wp.i18n key="${i18n_attribute_name}" />
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
				<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false />
			</legend>
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monolistAttribute.jsp" />			
-->
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="user-profile_is_front-MonolistAttribute" escapeXml=false /> 		
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Monotext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />

			<#-- <s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" /> -->

			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 
		</label>

		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monotextAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />	
-->
			<@wp.fragment code="user-profile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>

	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Number''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 			
		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_numberAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-NumberAttribute" escapeXml=false />
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Text''">
<#--
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monotextAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''ThreeState''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_threeStateAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-ThreeStateAttribute" escapeXml=false />
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
			
		</div>
	</div>
</@s.elseif>
<@s.else><%-- for all other types, insert a simple label and a input[type="text"] --%>
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo.jsp" />
-->
			<@wp.fragment code="user-profile_is_frontAttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monotextAttribute.jsp" />
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
	DEFAULT</br>
</@s.else>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_bar', 'entando-widget-navigation_bar', NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<#--
	A 8-year-long effort, lovely brought to you by:

	- Marco Diana <m.diana@entando.com>
	- Eugenio Santoboni <e.santoboni@entando.com>
	- William Ghelfi <w.ghelfi@entando.com>
	- Andrea Dessì <a.dessi@entando.com>
-->

<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-1.10.0.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />

<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />
<ul class="nav">
<@wp.nav var="page">

<#if (previousPage?? && previousPage.code??)>
	<#assign previousLevel=previousPage.level>
	<#assign level=page.level>
        <@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />
</#if>

	<@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
</@wp.nav>

<#if (previousPage??)>
	<#assign previousLevel=previousPage.level>
        <#assign level=0>
	<@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />

        <#if (previousLevel != 0)>
        <#list 0..(previousLevel - 1) as ignoreMe>
            </ul></li>
        </#list>
                
	</#if>
</#if>

</ul>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_breadcrumbs', 'entando-widget-navigation_breadcrumbs', NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.currentPage param="code" var="currentViewCode" />
<p class="breadcrumb"><span class="noscreen"><@wp.i18n key="ESNB_YOU_ARE_HERE" />:</span>
<#assign first=true>
<@wp.nav spec="current.path" var="currentTarget">
      <#assign currentCode=currentTarget.code>
      <#if first>
             <span class="divider">/</span>
      </#if>
      <#if !currentTarget.voidPage>
              <#if (currentCode == currentViewCode)>
                     <span class="active">${currentTarget.title}</span>
              <#else>
                     <a href="${currentTarget.url}">${currentTarget.title}</a>
              </#if>
      <#else>
              ${currentTarget.title}
      </#if>
      <#assign first=false>
</@wp.nav>
</p>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_cardFinding', 'card_list_detail', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign s=JspTaglibs["/struts-tags"]>

<section class="card_list">

<h1><@wp.i18n key="SEARCH_CARDS" /></h1>

<form action="<@wp.action path="/ExtStr2/do/FrontEnd/Card/search.action" />" method="post" class="form-search" role="search">
	<@wpsf.textfield name="holder" id="holder" cssClass="input-medium search-query" />
	<@s.set name="searchLabel"><@wp.i18n key="SEARCH" /></@s.set>
	<@wpsf.submit value="%{#searchLabel}" cssClass="btn btn-primary" />
</fieldset>

<@wpsa.subset source="cards" count=10 objectName="groupCard" advanced=true offset=5>
<@s.set name="group" value="#groupCard" />

<div class="margin-medium-vertical">
	<@wp.fragment code="portalexample_card_is_pagerInfo" escapeXml=false />
	<@wp.fragment code="portalexample_card_is_pagerFormBlock" escapeXml=false />
</div>

<table class="table table-bordered table-condensed table-hover" summary="<@wp.i18n key="CARDS_LIST_SUMMARY" />">
<thead>
<tr>
	<th><@wp.i18n key="CARD_HOLDER" /></th>
	<th><@wp.i18n key="CARD_DESCRIPTION" /></th>
	<th><@wp.i18n key="CARD_CREATION_DATE" /></th>
</tr>
</thead>
<tbody>
<@s.iterator id="card">
<tr>
	<td><a href="<@wp.action path="/ExtStr2/do/FrontEnd/Card/view.action"><@wp.parameter name="id"><@s.property value="#card.id" /></@wp.parameter></@wp.action>" title="<@wp.i18n key="EDIT" />: <@s.property value="#card.id" />" class="label label-info"><@s.property value="#card.holder" /></a></td>
	<td><@s.property value="#card.descr" /></td>
	<td><@s.date name="#card.date" format="dd/MM/yyyy" /></td>
</tr>
</@s.iterator>
</tbody>
</table>

<div class="centerText">
	<@wp.fragment code="portalexample_card_is_pagerFormBlock" escapeXml=false />
</div>

</@wpsa.subset>

</form>
</section>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_cardView', 'card_list_detail', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign s=JspTaglibs["/struts-tags"]>

<h2><@wp.i18n key="VIEW_CARD" /></h2>

<div class="well">
<dl class="dl-horizontal">
    <dt><@wp.i18n key="CARD_HOLDER" /></dt>
    <dd><@s.property value="holder" /></dd>

    <dt><@wp.i18n key="CARD_DESCRIPTION" /></dt>
    <dd><@s.property value="descr" /></dd>

    <dt><@wp.i18n key="CARD_NOTE" /></dt>
    <dd><@s.property value="note" /></dd>

    <dt><@wp.i18n key="CARD_CREATION_DATE" /></dt>
    <dd><@s.property value="date" /></dd>
</dl>
</div>

<a href="<@wp.action path="/ExtStr2/do/FrontEnd/Card/list.action" />" class="btn"><@wp.i18n key="BACK_TO_CARDS_LIST" /></a>
', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_error', 'card_list_detail', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<@wp.i18n key="GENERIC_ERROR" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_pagerInfo', 'card_list_detail', NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<p><@s.text name="note.searchIntro" />&#32;<@s.property value="#group.size" />&#32;<@s.text name="note.searchOutro" />.<br />
<@s.text name="label.page" />: [<@s.property value="#group.currItem" />/<@s.property value="#group.maxItem" />].</p>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_pagerFormBlock', 'card_list_detail', NULL, NULL, '<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign s=JspTaglibs["/struts-tags"]>

<@s.if test="#group.size > #group.max">

<ul class="pagination">
	<@s.if test="null != #group.pagerId">
		<@s.set var="pagerIdMarker" value="#group.pagerId" />
	</@s.if>
	<@s.else>
		<@s.set var="pagerIdMarker">pagerItem</@s.set>
	</@s.else>

	<@s.if test="#group.advanced">
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_1''}" type="button" disabled="%{1 == #group.currItem}" title="%{getText(''label.goToFirst'')}">
			<span class="icon fa fa-step-backward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#group.currItem - #group.offset) }" type="button" disabled="%{1 == #group.beginItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.backward'')}">
			<span class="icon fa fa-fast-backward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>

	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.prevItem}" type="button" title="%{getText(''label.prev.full'')}" disabled="%{1 == #group.currItem}">
			<span class="icon fa fa-long-arrow-left"></span>
		</@wpsf.submit>
	</li>

	<@s.subset source="#group.items" count="#group.endItemAnchor-#group.beginItemAnchor+1" start="#group.beginItemAnchor-1">
		<@s.iterator id="item">
			<li>
				<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #item}" type="button" disabled="%{#item == #group.currItem}">
					<@s.property value="%{#item}" />
				</@wpsf.submit>
			</li>
		</@s.iterator>
	</@s.subset>

	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.nextItem}" type="button" title="%{getText(''label.next.full'')}" disabled="%{#group.maxItem == #group.currItem}">
			<span class="icon fa fa-long-arrow-right"></span>
		</@wpsf.submit>
	</li>

	<@s.if test="#group.advanced">
	<@s.set name="jumpForwardStep" value="#group.currItem + #group.offset"></@s.set>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#jumpForwardStep)}" type="button" disabled="%{#group.maxItem == #group.endItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.forward'')}">
			<span class="icon fa fa-fast-forward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.size}" type="button" disabled="%{#group.maxItem == #group.currItem}" title="%{getText(''label.goToLast'')}">
			<span class="icon fa fa-step-forward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>

	<@s.set var="pagerIdMarker" value="null" />
</ul>

</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer', 'content_viewer', 'jacms', NULL, '<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@jacms.contentInfo param="authToEdit" var="canEditThis" />
<@jacms.contentInfo param="contentId" var="myContentId" />

<#if (canEditThis)>
	<div class="bar-content-edit">
		<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/jacms/Content/edit.action?contentId=<@jacms.contentInfo param="contentId" />" class="btn btn-info">
			<@wp.i18n key="EDIT_THIS_CONTENT" /> <i class="icon-edit icon-white"></i></a>
	</div>
</#if>
<@jacms.content publishExtraTitle=true />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list', 'content_viewer_list', 'jacms', NULL, '<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />

<@jacms.contentList listName="contentList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" userFilterOptionsVar="userFilterOptionsVar" />

<#if (titleVar??)>
	<h1><@c.out value="${titleVar}" /></h1>
</#if>
<@wp.freemarkerTemplateParameter var="userFilterOptionsVar" valueName="userFilterOptionsVar" removeOnEndTag=true >
<@wp.fragment code="jacms_content_viewer_list_userfilters" escapeXml=false />
</@wp.freemarkerTemplateParameter>
<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module.jsp" /> -->
<#if (contentList??) && (contentList?has_content) && (contentList?size > 0)>
	<@wp.pager listName="contentList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
		<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
<#list contentList as contentId>
<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
 <@jacms.content contentId="${contentId}" />
</#if>
</#list>
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
		</@wp.freemarkerTemplateParameter>
	</@wp.pager>
<#else>
	<#if (userFilterOptionsVar?size > 0)>
		<p class="alert alert-info"><@wp.i18n key="LIST_VIEWER_EMPTY" /></p>
	</#if>
</#if>

<#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
	<p class="text-right"><a class="btn btn-primary" href="<@wp.url page="${pageLinkVar}"/>"><@c.out value="${pageLinkDescriptionVar}" /></a></p>
</#if>

<@c.set var="contentList" scope="request" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-search_form', 'entando-widget-search_form', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<@wp.pageWithWidget var="searchResultPageVar" widgetTypeCode="search_result" />
<form class="navbar-search pull-left" action="<@wp.url page="${searchResultPageVar.code}" />" method="get">
<input type="text" name="search" class="search-query span2" placeholder="<@wp.i18n key="ESSF_SEARCH" />" x-webkit-speech="x-webkit-speech" />
</form> ', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_cardFinding', 'card_list', NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign vmr=JspTaglibs["/WEB-INF/tld/portalexample-core.tld"]>

<@vmr.cards listName="cardList" />

<#--
optional CSS
<@wp.headInfo type="CSS" info="widgets/card_list.css" />
-->
<section class="card_list">

<h1><@wp.i18n key="SEARCH_CARDS" /></h1>
<form id="searchForm" method="get" action="<@wp.url />" class="form-search">
	<input type="text" id="holder" name="holder" value="${holder?default("")}" placeholder="<@wp.i18n key="CARD_HOLDER" />" class="input-medium search-query" />
	<input type="submit" class="btn btn-primary" value="<@wp.i18n key="SEARCH" />" />
</form>
<#if cardList??>
	<@wp.pager listName="cardList" objectName="groupCard" pagerIdFromFrame=true max=5 advanced=true offset=5 >
	<@wp.freemarkerTemplateParameter var="group" valueName="groupCard" removeOnEndTag=true >
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	<h2>
		<@wp.i18n key="CARDS_NUMBER" /> : <@c.out value="${groupCard.size}" />
	</h2>
	<table class="table table-bordered table-condensed" summary="<@wp.i18n key="CARDS_LIST_SUMMARY" />">
	<tr>
		<th><@wp.i18n key="CARD_HOLDER" /></th>
		<th><@wp.i18n key="CARD_DESCRIPTION" /></th>
		<th><@wp.i18n key="CARD_CREATION_DATE" /></th>
	</tr>
<#list cardList as card>
<#if (card_index >= groupCard.begin) && (card_index <= groupCard.end)>
	<tr>
		<td><@c.out value="${card.holder}" /></td>
		<td><@c.out value="${card.descr}" /></td>
		<td>${card.date?string("dd/MM/yyyy")}</td>
	</tr>
</#if>
</#list>
	</table>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
	</@wp.pager>
</#if>
</section>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('default_pagerBlock', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#if (group.size > group.max)>
	<div class="pagination pagination-centered">
		<ul>
		<#if (1 != group.currItem)>
			<#if (group.advanced)>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >1</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_FIRST" />"><i class="icon-fast-backward"></i></a></li>
				<#if (1 != group.beginItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.currItem - group.offset}" /></@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_BACKWARD" />&#32;<@c.out value="${group.offset}" />"><i class="icon-step-backward"></i></a></li>
				</#if>
			</#if>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.prevItem}"/></@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_PREV" /></a></li>
		</#if>
		<#list group.items as item>
		<#if (item_index >= (group.beginItemAnchor-1)) && (item_index <= (group.endItemAnchor-1))>
			<#if (item == group.currItem)>
			<li class="active"><a href="#"><@c.out value="${item}"/></a></li>
			<#else>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${item}"/></@wp.parameter></@wp.url>"><@c.out value="${item}"/></a></li>
			</#if>
		</#if>
		</#list>
		<#if (group.maxItem != group.currItem)>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.nextItem}"/></@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_NEXT" /></a></li>
			<#if (group.advanced)>
				<#if (group.maxItem != group.endItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.currItem + group.offset}" /></@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_FORWARD" />&#32;<@c.out value="${group.offset}" />"><i class="icon-step-forward"></i></a></li>
				</#if>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" ><@c.out value="${group.maxItem}" /></@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_LAST" />"><i class="icon-fast-forward"></i></a></li>
			</#if>
		</#if>
		</ul>
	</div>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Date', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign currentLangVar ><@wp.info key="currentLang" /></#assign>

<#assign js_for_datepicker="jQuery(function($){
	$.datepicker.regional[''it''] = {
		closeText: ''Chiudi'',
		prevText: ''&#x3c;Prec'',
		nextText: ''Succ&#x3e;'',
		currentText: ''Oggi'',
		monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
			''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
		monthNamesShort: [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
			''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
		dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
		dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
		dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
		weekHeader: ''Sm'',
		dateFormat: ''yy-mm-dd'',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''''};
});

jQuery(function($){
	if (Modernizr.touch && Modernizr.inputtypes.date) {
		$.each(	$(\"input[data-isdate=true]\"), function(index, item) {
			item.type = ''date'';
		});
	} else {
		$.datepicker.setDefaults( $.datepicker.regional[ \"${currentLangVar}\" ] );
		$(\"input[data-isdate=true]\").datepicker({
      			changeMonth: true,
      			changeYear: true,
      			dateFormat: \"yy-mm-dd\"
    		});
	}
});" >

<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.min.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />

<fieldset>
<legend>
<@c.set var="i18n_Attribute_Key" value="${userFilterOptionVar.attribute.name}" />
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>

<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="DATE_FROM" />
	</label>
	<div class="controls">
		<input id="formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="DATE_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" />
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Boolean', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<#-- <@c.import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/userFilter-module-entity-Boolean-ignoreOption.jsp" /> -->
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />

<div class="control-group">
	<div class="controls">
		<label for="${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
	</div>
	<div class="controls">
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Bool_io', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameControlVar = userFilterOptionVar.formFieldNames[2] >
<input name="${formFieldNameControlVar}" type="hidden" value="true" />
<#assign formFieldNameIgnoreVar = userFilterOptionVar.formFieldNames[1] >
<#assign formFieldIgnoreValue = userFilterOptionVar.getFormFieldValue(formFieldNameIgnoreVar) >
<#assign formFieldControlValue = userFilterOptionVar.getFormFieldValue(formFieldNameControlVar) >

<div class="controls">
	<label for="ignore_${formFieldNameIgnoreVar}" class="checkbox">
	<input id="ignore_${formFieldNameIgnoreVar}" name="${formFieldNameIgnoreVar}" <#if (formFieldIgnoreValue?? && formFieldIgnoreValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
	<@wp.i18n key="IGNORE" /></label>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_CheckBox', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />

<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="checkbox">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
		<@wp.i18n key="YES"/></label>
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_ThreeSt', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />

<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
		<label for="both_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="both_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "both")>checked="checked"</#if> value="both" type="radio" />
		<@wp.i18n key="BOTH"/></label>
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_menu', 'entando-widget-navigation_menu', NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<#--
	A 8-year-long effort, lovely brought to you by:

	- Marco Diana <m.diana@entando.com>
	- Eugenio Santoboni <e.santoboni@entando.com>
	- William Ghelfi <w.ghelfi@@entando.com>
	- Andrea Dessì <a.dessi@entando.com>
-->

<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />
<div class="well well-small">
<ul class="nav nav-list">
<@wp.nav var="page">
   <#if (previousPage?? && previousPage.code??)>
	<#assign previousLevel=previousPage.level>
	<#assign level=page.level>
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.fragment code="entando-widget-navigation_menu_include" escapeXml=false />
   </#if>
   <@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
</@wp.nav>
<#if (previousPage??)>
   <#assign previousLevel=previousPage.level>
   <#assign level=0>
   <@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
   <@wp.freemarkerTemplateParameter var="level" valueName="level" />
   <@wp.fragment code="entando-widget-navigation_menu_include" escapeXml=false />   
   <#if (previousLevel != 0)>
	<#list 0..(previousLevel - 1) as ignoreMe>
		</ul></li>
	</#list>
   </#if>
</#if>
</ul>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-MonolistAttribute', NULL, NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@s.if test="#attribute.attributes.size() != 0">
	<ul class="unstyled">
</@s.if>

<@s.set name="masterListAttributeTracer" value="#attributeTracer" />
<@s.set name="masterListAttribute" value="#attribute" />

<@s.iterator value="#attribute.attributes" var="attribute" status="elementStatus">
	<@s.set name="attributeTracer" value="#masterListAttributeTracer.getMonoListElementTracer(#elementStatus.index)"></@s.set>
	<@s.set name="elementIndex" value="#elementStatus.index" />
	<@s.set var="i18n_attribute_name">userprofile_ATTR<@s.property value="#attribute.name" /></@s.set>
	<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" />_<@s.property value="#elementStatus.count" /></@s.set>

	<li class="control-group  <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@s.if test="#attribute.type == ''Composite''">
				<@s.property value="#elementStatus.count" /><span class="noscreen">&#32;<@s.text name="label.compositeAttribute.element" /></span>
				&#32;
				<@s.if test="#lang.default">
<#--
					<s:include value="/WEB-INF/apsadmin/jsp/entity/modules/include/listAttributes/allList_operationModule.jsp" />
-->
					<@wp.fragment code="user-profile_is_front_AllList_operationModule" escapeXml=false /> 

				</@s.if>
			</@s.if>
			<@s.else>
				<@s.property value="#elementStatus.count" />
				&#32;
<#--
				<s:include value="/WEB-INF/apsadmin/jsp/entity/modules/include/listAttributes/allList_operationModule.jsp" />
-->
				<@wp.fragment code="user-profile_is_front_AllList_operationModule" escapeXml=false /> 
			</@s.else>
		</label>
		<div class="controls">
			<@s.if test="#attribute.type == ''Boolean''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_booleanAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-BooleanAttribute" escapeXml=false />
			</@s.if>
			<@s.elseif test="#attribute.type == ''CheckBox''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_checkBoxAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-CheckboxAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Composite''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_compositeAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-CompositeAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Date''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_dateAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-DateAttribute" escapeXml=false /> 
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Enumerator''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_enumeratorAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-EnumeratorAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Hypertext''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_hypertextAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-HypertextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Longtext''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_hypertextAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-HypertextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Monotext''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monotextAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-MonotextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Number''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_numberAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-NumberAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''ThreeState''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_threeStateAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-ThreeStateAttribute" escapeXml=false />
				
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Text''">
<#--
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monotextAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-MonotextAttribute" escapeXml=false />				
			</@s.elseif>
			<@s.else>
<#--
				else?<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monotextAttribute.jsp" />
-->
				<@wp.fragment code="user-profile_is_front-MonotextAttribute" escapeXml=false />	
			</@s.else>
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_attributeInfo-help-block.jsp" />
-->
			<@wp.fragment code="user-profile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</li>
<#--
		<li class="contentAttributeBox">
		<p>
			<span class="important">
				<@s.property value="#elementStatus.count" />&#32;<@s.text name="label.compositeAttribute.element" />
			</span>
			<@s.if test="#lang.default">
				<s:include value="/WEB-INF/apsadmin/jsp/entity/modules/include/listAttributes/allList_operationModule.jsp" />
			</@s.if>
		</p>
	</@s.if>
	<@s.else>
		<li>
			<label for="<@s.property value="#attribute_id" />"><@s.property value="#elementStatus.index + 1" /></label>
	</@s.else>
		
		<@s.if test="#attribute.type == ''Boolean''">
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_booleanAttribute.jsp" />
		</@s.if>

		<@s.elseif test="#attribute.type == ''Monotext''">
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monotextAttribute.jsp" />
		</@s.elseif>
		<@s.elseif test="#attribute.type == ''Text''">
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monotextAttribute.jsp" />
		</@s.elseif>
		<@s.elseif test="#attribute.type == ''Longtext''"> 
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_monotextAttribute.jsp" />
		</@s.elseif>
		<@s.elseif test="#attribute.type == ''Date''">
		 	<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_dateAttribute.jsp" />
		</@s.elseif>
		<@s.elseif test="#attribute.type == ''Hypertext''">
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/front_hypertextAttribute.jsp" />
		</@s.elseif>
		<@s.elseif test="#attribute.type == ''Composite''">
			<s:include value="/WEB-INF/apsadmin/jsp/entity/modules/compositeAttribute.jsp" />
		</@s.elseif>
		

		&#32;
		
		<@s.if test="#attribute.type != ''Composite''">	
			<@s.if test="#lang.default">
				<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/listAttributes/front_allList_operationModule.jsp" />
			</@s.if>
		</@s.if> 
	</li>

-->
</@s.iterator>

<@s.set name="attributeTracer" value="#masterListAttributeTracer" />
<@s.set name="attribute" value="#masterListAttribute" />
<@s.set name="elementIndex" value="" />
<@s.if test="#attribute.attributes.size() != 0">
</ul>
</@s.if>

<@s.if test="#lang.default">
	<div class="control-group">
		<div class="controls">
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/attributes/listAttributes/front_allList_addElementButton.jsp" />
-->
			<@wp.fragment code="user-profile_is_front-AllList-addElementButton" escapeXml=false />				
		</div>
	</div>

</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_profileChangeConfirmation', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<p><@wp.i18n key="userprofile_PROFILE_UPDATED" /></p>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_entryCurrentProfile', NULL, NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<#if (Session.currentUser != "guest") >

<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/Profile/save.action" />" method="post" class="form-horizontal">

	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escape=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>


	<@s.set name="lang" value="defaultLang" />
	
	<@s.iterator value="userProfile.attributeList" id="attribute">
		<@s.if test="%{#attribute.active}">
			<@wpsa.tracerFactory var="attributeTracer" lang="%{#lang.code}" />
			<@s.set var="i18n_attribute_name">userprofile_<@s.property value="userProfile.typeCode" />_<@s.property value="#attribute.name" /></@s.set>
			<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" /></@s.set>
<#--
			<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/iteratorAttribute.jsp" />
-->
			<@wp.fragment code="user-profile_is_IteratorAttribute" escapeXml=false /> 
		</@s.if>
	</@s.iterator>

	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PROFILE" var="userprofile_SAVE_PROFILE" />
		<@wpsf.submit useTabindexAutoIncrement=true value="%{#attr.userprofile_SAVE_PROFILE}" cssClass="btn btn-primary" />
	</p>

</form>

<#else>
	<p>
		<@wp.i18n key="userprofile_PLEASE_LOGIN" />
	</p>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_currentWithoutProfile', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<p class="label label-info">
	<@wp.i18n key="userprofile_CURRENT_USER_WITHOUT_PROFILE" />
</p>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('mia_view', 'mia_view', NULL, 'vhjf gjf

mia_view

mia_view', NULL, 0);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_edit', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<#if (Session.currentUser != "guest") >
		<@s.action name="editPassword" namespace="/do/Front/CurrentUser" executeResult=true />
		<@s.action name="edit" namespace="/do/Front/CurrentUser/Profile" executeResult=true />
<#else>
		<p>
			<@wp.i18n key="userprofile_PLEASE_LOGIN" />
		</p>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-CheckboxAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.checkbox useTabindexAutoIncrement=true 
	name="%{#attributeTracer.getFormFieldName(#attribute)}" 
	id="%{attribute_id}" value="%{#attribute.value == true}"/>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-MonotextAttribute', NULL, NULL, NULL, '<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.textfield useTabindexAutoIncrement=true id="%{attribute_id}" 
	name="%{#attributeTracer.getFormFieldName(#attribute)}" value="%{#attribute.getTextForLang(#lang.code)}"
	maxlength="254" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-CompositeAttribute', NULL, NULL, NULL, '<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.set var="i18n_parent_attribute_name" value="#attribute.name" />
<@s.set name="masterCompositeAttributeTracer" value="#attributeTracer" />
<@s.set name="masterCompositeAttribute" value="#attribute" />

<@s.set var="i18n_parent_attribute_name" value="#attribute.name" />
<@s.set name="masterCompositeAttributeTracer" value="#attributeTracer" />
<@s.set name="masterCompositeAttribute" value="#attribute" />
<@s.iterator value="#attribute.attributes" var="attribute">
	<@s.set name="attributeTracer" value="#masterCompositeAttributeTracer.getCompositeTracer(#masterCompositeAttribute)"></@s.set>
	<@s.set name="parentAttribute" value="#masterCompositeAttribute"></@s.set>
	<@s.set var="i18n_attribute_name">userprofile_ATTR<@s.property value="%{i18n_parent_attribute_name}" /><@s.property value="#attribute.name" /></@s.set>
	<@s.set var="attribute_id">userprofile_<@s.property value="%{i18n_parent_attribute_name}" /><@s.property value="#attribute.name" />_<@s.property value="#elementIndex" /></@s.set>

<#--
	<s:include value="/WEB-INF/aps/jsp/internalservlet/user/inc/iteratorAttribute.jsp" />
-->
	<@wp.fragment code="user-profile_is_IteratorAttribute" escapeXml=false />

</@s.iterator>
<@s.set name="attributeTracer" value="#masterCompositeAttributeTracer" />
<@s.set name="attribute" value="#masterCompositeAttribute" />
<@s.set name="parentAttribute" value=""></@s.set>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('user-profile_is_front-EnumeratorAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.select useTabindexAutoIncrement=true
	name="%{#attributeTracer.getFormFieldName(#attribute)}"
	id="%{attribute_id}"  
	headerKey="" headerValue="" 
	list="#attribute.items" value="%{#attribute.getText()}" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_bar_include', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>


<#assign liClass="">
<#assign homeIcon="">
<#assign caret="">
<#assign ulClass='' class="dropdown-menu"''>
<#assign aClassAndData="">
<#assign aURL=previousPage.url>

<#if (previousPage.voidPage)>
       <#assign aURL=''#'' />
</#if>

<#if (previousPage.code?contains("homepage"))>
     <#assign homeIcon=''<i class="icon-home"></i>&#32;''>
</#if>

<#if (previousPage.code == currentPageCode)>
     <#assign liClass='' class="active"''>
</#if>

<#if (previousLevel < level)>
    <#assign liClass='' class="dropdown"'' >

    <#if (previousPage.code == currentPageCode)>
	<#assign liClass='' class="dropdown active"''>
    </#if>

    <#if previousPage.voidPage>
	<#assign liClass='' class=" dropdown"'' >
    </#if>

    <#if (previousLevel > 0) >
	<#assign liClass='' class="dropdown-submenu"''>
	<#if (previousPage.code == currentPageCode)>
		<#assign liClass='' class="dropdown-submenu active"''>
    	</#if>

	<#assign ulClass='' class="dropdown-menu"''>
    </#if>

    <#assign aClassAndData='' class="dropdown-toggle" data-toggle="dropdown"''>

    <#if (previousLevel == 0)>
	<#assign caret='' <span class="caret"></span>''>
    </#if>
</#if>

<li ${liClass} > 
	<a href="${aURL}"  ${aClassAndData} >
				<!-- [ ${previousLevel} ] -->
				${homeIcon}
				${previousPage.title}
				${caret}
	</a>

<#if (previousLevel == level)></li></#if>
<#if (previousLevel < level)>
    <ul ${ulClass}>
</#if>
<#if (previousLevel > level)>
     <#list 1..(previousLevel - level) as ignoreMe>
            </li></ul>
     </#list>
    </li>
</#if>', 1);
