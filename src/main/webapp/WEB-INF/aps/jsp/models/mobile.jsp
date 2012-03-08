<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en"> 
<head> 
	<meta name="viewport" content="initial-scale=1,maximum-scale=1,minimum-scale=1 user-scalable=no,width = 320" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="default" />
	<title>Mobile @ jAPS Portal Example| <wp:currentPage param="title" /></title> 
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.css" />
	<link type="text/css" rel="stylesheet" href="<wp:cssURL/>mobile/general.css" />
	
	<script src="http://code.jquery.com/jquery-1.5.2.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.0a4.1/jquery.mobile-1.0a4.1.min.js"></script>
</head> 
<body> 

<div data-role="page" data-theme="b" data-url="${pageURL}">
	<div data-role="header" data-position="inline">
		<h1><wp:i18n key="MAIN_TITLE" /></h1>
		<a href="<wp:url page="mobile_home" />" data-icon="home" data-iconpos="notext" class="ui-btn-right">Home</a>
	</div> 
	<div data-role="content">
		<wp:show frame="0" />
		<wp:show frame="1" />
		<wp:show frame="2" />
		<wp:show frame="3" />
		<wp:show frame="4" />
		<wp:show frame="5" />
		<wp:show frame="6" />
		<wp:show frame="7" />
	</div> 
	<div data-role="footer">
		<h2><wp:i18n key="COPYRIGHT" escapeXml="false" /></h2>
		<h2><wp:i18n key="CREDITS_POWERED_BY" escapeXml="false" /></h2>
	</div> 
</div>
</body>
</html>