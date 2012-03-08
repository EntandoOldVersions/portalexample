<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<wp:headInfo type="CSS" info="showlets/search_form.css" />
<wp:headInfo type="JS" info="mootools-core-1.3.2-full-nocompat-yc.js" />
<wp:headInfo type="JS" info="modernizr.custom.05926.js" />
<c:set var="ModernizrAddTests">
Modernizr.addTest('speechinput', function(){
    var elem = document.createElement('input'); 
    return 'speech' in elem || 'onwebkitspeechchange' in elem; 

    //  - 'webkitSpeech' in elem -> does`t work correctly in all versions of Chromium based  
    //  browsers: can return false even if they have support for speech (http://i.imgur.com/2Y40n.png)
    //  - testing with 'onwebkitspeechchange' seems to fix this problem
});
	
window.addEvent('domready', function(){
	if (Modernizr.speechinput) {
		var input = document.getElement('input#search');
		input.set("x-webkit-speech", "x-webkit-speech");
		<%-- input.set("speech", "speech"); --%>
	}
});

</c:set>
<wp:headInfo type="JS_RAW" var="ModernizrAddTests" />

<div class="search_form">
<form action="<wp:url page="search_result" />" >
	<p>
		<label for="search"><wp:i18n key="SEARCH" /></label>: <input type="text" name="search" id="search" class="text" value="" /> <input type="submit" value="Ok" class="button" />
	</p>
</form>
</div>
