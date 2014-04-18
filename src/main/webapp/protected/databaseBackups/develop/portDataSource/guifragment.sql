INSERT INTO guifragment (id, code, widgettypecode, plugincode, gui) VALUES (79, 'content_viewer', 'content_viewer', 'jacms', '<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<@jacms.content publishExtraTitle=true />');
INSERT INTO guifragment (id, code, widgettypecode, plugincode, gui) VALUES (84, 'entando-widget-search_form', 'entando-widget-search_form', NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<@wp.pageWithWidget var="searchResultPageVar" widgetTypeCode="search_result" />
<form class="navbar-search pull-left" action="<@wp.url page="${searchResultPageVar.code}" />" method="get">
<input type="text" name="search" class="search-query span2" placeholder="Give me a word for Matteo" x-webkit-speech="x-webkit-speech" />
</form> ');
