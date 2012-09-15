--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: contentmodels; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (2, 'NEW', 'Complete - default', '<h2>$content.Date.getFormattedDate("dd/MM/yyyy") &mdash; $content.Title.text</h2>
#if ( $content.TextBody.text != "" )
$content.TextBody.getTextBeforeImage(0)
#if ( $content.Image_1.imagePath("2") != "" )
<a href="$content.Image_1.imagePath("0")"><img src="$content.Image_1.imagePath("2")" alt="$content.Image_1.text" class="right" /></a>
#end 
$content.TextBody.getTextAfterImage(0)
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h3 class="clear">$i18n.getLabel(''ATTACHES'')</h3>
	<ul>
		#foreach ($attach in $content.Documents)
		<li><a href="$attach.attachPath">$attach.text</a></li>
		#end	
	</ul>
#end
#if ($content.Links && $content.Links.size() > 0)
<h3 class="clear">$i18n.getLabel(''LINKS'')</h3>
	<ul>
		#foreach ($link in $content.Links)
		<li><a href="$link.destination">$link.text</a></li>
		#end	
	</ul>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (3, 'DLB', 'Complete - default', '<h2>$content.Number.value &mdash; $content.Date.getFormattedDate("dd/MM/yyyy")<br />
$content.Title.text</h2>
#if ($content.Abstract.text != "")
$content.Abstract.text
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h3 class="clear">$i18n.getLabel(''ATTACHES'')</h3>
	<ul>
		#foreach ($attach in $content.Documents)
		<li><a href="$attach.attachPath">$attach.text</a></li>
		#end	
	</ul>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (41, 'BND', 'for List', '<h3><a href="$content.contentLink">$content.Title.text</a></h3>
<p>$content.StartDate.getFormattedDate("dd/MM/yyyy") &mdash; $content.EndDate.getFormattedDate("dd/MM/yyyy")</p>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (21, 'NEW', 'for List', '<h3><a href="$content.contentLink">$content.Date.getFormattedDate("dd/MM/yyyy") &mdash; $content.Title.text</a></h3>
#if ($content.ShortText.text != "")
<p>$content.ShortText.text</p>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (5, 'SDL', 'Complete - default', '<div class="scheda_download">
<h2><a href="$content.File.attachPath" title="$i18n.getLabel(''DOWNLOAD_THIS'')">$content.Title.text</a></h2>
#if($content.categories.size() >= 1)
#set ($first = "true")
<p><span class="important">$i18n.getLabel(''CATEGORIES''):</span>
#foreach($categ in $content.categories)
#if ($first == "false") | #end
$categ.title
#set ($first = "false")
#end
</p>
#end
#if ( $content.LongDescr.text != "" )
$content.LongDescr.getTextBeforeImage(0)
#if ( $content.Image.imagePath("2") != "" )
<img src="$content.Image.imagePath("2")" alt="$content.Image.text" class="left" />
#end
$content.LongDescr.getTextAfterImage(0)
#end
#if ($content.Links && $content.Links.size() > 0)
<h3 class="clear">$i18n.getLabel(''LINKS'')</h3>
<ul>#foreach ($link in $content.Links)
<li><a href="$link.destination">$link.text</a></li>
#end</ul>
#end
</div>', 'contentmodels/scheda_download.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (23, 'NEW', 'for Mobile - Complete', '<h2>$content.Date.getFormattedDate("dd/MM/yyyy") &mdash; $content.Title.text</h2>
#if ( $content.TextBody.text != "" )
$content.TextBody.text
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h3 class="clear">$i18n.getLabel(''ATTACHES'')</h3>
	<ul>
		#foreach ($attach in $content.Documents)
		<li><a href="$attach.attachPath">$attach.text</a></li>
		#end	
	</ul>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (22, 'NEW', 'for Mobile - for List', '<h3><a href="mobile_contentview.wp?contentId=$content.id&amp;modelId=23">$content.Date.getFormattedDate("dd/MM/yyyy") &mdash; $content.Title.text</a></h3>
#if ($content.ShortText.text != "")
<p>$content.ShortText.text</p>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (11, 'CNG', 'for List', '<h3><a href="$content.contentLink">$content.Title.text</a></h3>
#if ($content.Abstract.text != "")
<p>$content.Abstract.text</p>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (14, 'CNG', 'for Mobile - Home', '<div class="mobileInEvidenza">
#if ( $content.Image_1.imagePath("1") != "" )
<img src="$content.Image_1.imagePath("1")" alt="$content.Image_1.text" class="left" />
#end
<h2>$content.Title.text</h2>
#if ($content.TextBody.text != "")
<p>$content.TextBody.text</p>
#end
</div>', 'mobile/contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (13, 'CNG', 'for Mobile - Complete', '<h2>$content.Title.text</h2>
#if ( $content.TextBody.text != "" )
$content.TextBody.text
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h3 class="clear">$i18n.getLabel(''ATTACHES'')</h3>
	<ul>
		#foreach ($attach in $content.Documents)
		<li><a href="$attach.attachPath">$attach.text</a></li>
		#end	
	</ul>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (42, 'BND', 'for Mobile - for List', '<h3><a href="mobile_contentview.wp?contentId=$content.id&amp;modelId=4">$content.StartDate.getFormattedDate("dd/MM/yyyy") &mdash; $content.EndDate.getFormattedDate("dd/MM/yyyy") &mdash; $content.Title.text</a></h3>
', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (4, 'BND', 'Complete - default', '<h2>$content.Title.text<br />
$content.StartDate.getFormattedDate("dd/MM/yyyy") &mdash; $content.EndDate.getFormattedDate("dd/MM/yyyy")</h2>
#if ($content.Abstract.text != "")
$content.Abstract.text
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h3 class="clear">$i18n.getLabel(''ATTACHES'')</h3>
	<ul>
		#foreach ($attach in $content.Documents)
		<li><a href="$attach.attachPath">$attach.text</a></li>
		#end	
	</ul>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (1, 'CNG', 'Complete - default', '<h2>$content.Title.text</h2>
#if ( $content.TextBody.text != "" )
$content.TextBody.getTextBeforeImage(0)
#if ( $content.Image_1.imagePath("2") != "" )
<a href="$content.Image_1.imagePath("0")"><img src="$content.Image_1.imagePath("2")" alt="$content.Image_1.text" class="right" /></a>
#end 
$content.TextBody.getTextByRange(0,60)
#if ( $content.Image_2.imagePath("3") != "" )
<a href="$content.Image_2.imagePath("0")"><img src="$content.Image_2.imagePath("3")" alt="$content.Image_2.text" class="left" /></a>
#end
$content.TextBody.getTextAfterImage(60)
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h3 class="clear">$i18n.getLabel(''ATTACHES'')</h3>
	<ul>
		#foreach ($attach in $content.Documents)
		<li><a href="$attach.attachPath">$attach.text</a></li>
		#end	
	</ul>
#end
#if ($content.Links && $content.Links.size() > 0)
<h3 class="clear">$i18n.getLabel(''LINKS'')</h3>
	<ul>
		#foreach ($link in $content.Links)
		<li><a href="$link.destination">$link.text</a></li>
		#end	
	</ul>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (31, 'DLB', 'for List', '<h3><a href="$content.contentLink">$content.Number.value &mdash; $content.Date.getFormattedDate("dd/MM/yyyy")</a></h3>
<p>$content.Title.text</p>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (12, 'CNG', 'in evidence', '<div class="inEvidenza">
<h2 class="title"><a href="$content.contentLink">$content.Title.text</a></h2>
#if ($content.Abstract.text != "")
<p>#if ( $content.Image_1.imagePath("2") != "" )
<a href="$content.Image_1.imagePath("0")"><img src="$content.Image_1.imagePath("2")" alt="$content.Image_1.text" class="left" /></a>
#end 
$content.Abstract.text</p>
#end
</div>', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (32, 'DLB', 'for Mobile - for List', '<h3><a href="mobile_contentview.wp?contentId=$content.id&amp;modelId=3">$content.Numero.value &mdash; $content.Date.getFormattedDate("dd/MM/yyyy")</a></h3>
#if ($content.Title.text != "")
<p>$content.Title.text</p>
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (51, 'SDL', 'for List', '<h3><a href="$content.contentLink">$content.Title.text</a></h3>
$content.ShortDescr.text', NULL);


--
-- PostgreSQL database dump complete
--

