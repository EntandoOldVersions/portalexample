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
-- Data for Name: contents; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG15', 'CNG', 'Card Management', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG15" typecode="CNG" typedescr="Generic content"><descr>Card Management</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Esempio Servizio Applicativo</text><text lang="en">Application Service Example</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi di Entando&quot;) per la gestione dei &quot;<strong>Pass ZTL</strong>&quot;.</p>
<p>
	In front-end vengono presentate le funzioni di erogazione lista per i PASS attraverso l&#39;&#39;utilizzo di un custom tag (CardListTag) e il paginatore di sistema. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>
<p>
	Il servizio &egrave; fruibile anche attraverso l&#39;utilizzo della Showlet &quot;Internal Servlet&quot;, <a href="#!P;old_town_traffic_pass_int!#">accedi al servizio</a>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This is a simple example of a service application (written under the &quot;Entando Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot;.</p>
<p>
	The service is available through the use of &quot;<a href="#!P;old_town_traffic_pass_int!#">Internal Servlet</a>&quot; Showlet.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20090708175822</created><lastModified>20120405135124</lastModified></content>
', '20090708175822', '20120405135124', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG15" typecode="CNG" typedescr="Generic content"><descr>Card Management</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Esempio Servizio Applicativo</text><text lang="en">Application Service Example</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi di Entando&quot;) per la gestione dei &quot;<strong>Pass ZTL</strong>&quot;.</p>
<p>
	In front-end vengono presentate le funzioni di erogazione lista per i PASS attraverso l&#39;&#39;utilizzo di un custom tag (CardListTag) e il paginatore di sistema. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>
<p>
	Il servizio &egrave; fruibile anche attraverso l&#39;utilizzo della Showlet &quot;Internal Servlet&quot;, <a href="#!P;old_town_traffic_pass_int!#">accedi al servizio</a>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This is a simple example of a service application (written under the &quot;Entando Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot;.</p>
<p>
	The service is available through the use of &quot;<a href="#!P;old_town_traffic_pass_int!#">Internal Servlet</a>&quot; Showlet.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20090708175822</created><lastModified>20120405135124</lastModified></content>
', 'free', '5.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG20', 'CNG', 'Statute', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG20" typecode="CNG" typedescr="Generic content"><descr>Statute</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Statuto</text><text lang="pt">Statuto Portoghese</text><text lang="en">Statute</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Lo Statuto è il documento che definisce organi, compiti e modalità di funzionamento dell’Ente comunale.&#xD;
Se desideri saperne di più sulle funzioni svolte dall’Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentatività democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</text><text lang="en">The Statute is the document that defines the Municipality council, functions and mode of operation.&#xD;
&#xD;
If you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you''ll find lots of interesting information in the official status.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Lo <strong>Statuto</strong> &egrave; il documento che definisce <strong>organi</strong>, <strong>compiti</strong> e <strong>modalit&agrave;</strong> di funzionamento dell&rsquo;Ente comunale.</p>
<p>
	Se desideri saperne di pi&ugrave; sulle funzioni svolte dall&rsquo;Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentativit&agrave; democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</p>
<p>
	In questa sezione puoi trovare, nella sua interezza, il testo ufficiale dello Statuto del Comune di <strong>Villamarina</strong>.</p>
<p>
	Scarica in Pdf il testo dello Statuto del Comune di Villamarina.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The <strong>Statute</strong> is the document that defines the Municipality council, functions and mode of operation.</p>
<p>
	If you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you&#39;ll find lots of interesting information in the official status.</p>
<p>
	In this section you can find the official text of Villamarina Municipality Statute.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image"><resource resourcetype="Image" id="21" lang="it" /><resource resourcetype="Image" id="21" lang="en" /><text lang="it">Stemma</text><text lang="en">Statute</text></attribute><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="22" lang="it" /><resource resourcetype="Attach" id="22" lang="en" /><text lang="it">Statuto Villamarina</text><text lang="en">Statute</text></attribute></list></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721120929</created><lastModified>20120405140325</lastModified></content>
', '20090721120929', '20120405140325', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG20" typecode="CNG" typedescr="Generic content"><descr>Statute</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Statuto</text><text lang="pt">Statuto Portoghese</text><text lang="en">Statute</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Lo Statuto è il documento che definisce organi, compiti e modalità di funzionamento dell’Ente comunale.&#xD;
Se desideri saperne di più sulle funzioni svolte dall’Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentatività democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</text><text lang="en">The Statute is the document that defines the Municipality council, functions and mode of operation.&#xD;
&#xD;
If you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you''ll find lots of interesting information in the official status.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Lo <strong>Statuto</strong> &egrave; il documento che definisce <strong>organi</strong>, <strong>compiti</strong> e <strong>modalit&agrave;</strong> di funzionamento dell&rsquo;Ente comunale.</p>
<p>
	Se desideri saperne di pi&ugrave; sulle funzioni svolte dall&rsquo;Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentativit&agrave; democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</p>
<p>
	In questa sezione puoi trovare, nella sua interezza, il testo ufficiale dello Statuto del Comune di <strong>Villamarina</strong>.</p>
<p>
	Scarica in Pdf il testo dello Statuto del Comune di Villamarina.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The <strong>Statute</strong> is the document that defines the Municipality council, functions and mode of operation.</p>
<p>
	If you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you&#39;ll find lots of interesting information in the official status.</p>
<p>
	In this section you can find the official text of Villamarina Municipality Statute.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image"><resource resourcetype="Image" id="21" lang="it" /><resource resourcetype="Image" id="21" lang="en" /><text lang="it">Stemma</text><text lang="en">Statute</text></attribute><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="22" lang="it" /><resource resourcetype="Attach" id="22" lang="en" /><text lang="it">Statuto Villamarina</text><text lang="en">Statute</text></attribute></list></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721120929</created><lastModified>20120405140325</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('SDL46', 'SDL', 'Tax - Request ICI refund', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="SDL46" typecode="SDL" typedescr="Document"><descr>Tax - Request ICI refund</descr><groups mainGroup="free" /><categories><category id="moduli" /><category id="tributi" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Tributi - Richiesta rimborso ICI</text><text lang="en">Tax - Request ICI refund</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta del rimborso ICI</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for ICI refund.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta del del rimborso ICI per i cittadini residenti nel Comune di Villamarina.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	&nbsp;Request Form for ICI refund, for Villamarina citizens.</p>
]]></hypertext></attribute><attribute name="Image" attributetype="Image" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="45" lang="it" /><resource resourcetype="Attach" id="45" lang="en" /><text lang="it">Modulo richiesta rimborso ICI</text><text lang="en">Request Form</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090722143535</created><lastModified>20120405140419</lastModified></content>
', '20090722143535', '20120405140419', '<?xml version="1.0" encoding="UTF-8"?>
<content id="SDL46" typecode="SDL" typedescr="Document"><descr>Tax - Request ICI refund</descr><groups mainGroup="free" /><categories><category id="moduli" /><category id="tributi" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Tributi - Richiesta rimborso ICI</text><text lang="en">Tax - Request ICI refund</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta del rimborso ICI</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for ICI refund.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta del del rimborso ICI per i cittadini residenti nel Comune di Villamarina.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	&nbsp;Request Form for ICI refund, for Villamarina citizens.</p>
]]></hypertext></attribute><attribute name="Image" attributetype="Image" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="45" lang="it" /><resource resourcetype="Attach" id="45" lang="en" /><text lang="it">Modulo richiesta rimborso ICI</text><text lang="en">Request Form</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090722143535</created><lastModified>20120405140419</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG19', 'CNG', 'Consiglio Comunale', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG19" typecode="CNG" typedescr="Generic content"><descr>Consiglio Comunale</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Consiglio Comunale</text><text lang="en">Municipal Council</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Il Consiglio Comunale, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull''ordinamento degli enti locali) è l''assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall''art. 114 della Costituzione della Repubblica Italiana.</text><text lang="en">A Municipal Council is the local government of Villamarina municipality.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Consiglio Comunale</strong>, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull&#39;ordinamento degli enti locali) &egrave; l&#39;assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall&#39;art. 114 della <strong>Costituzione della Repubblica Italiana</strong>.</p>
<p>
	Il Consiglio Comunale &egrave; composto dal Sindaco e da un numero variabile di consiglieri, in funzione del numero di abitanti del Comune.</p>
<p>
	Il Consiglio comunale viene eletto direttamente dai <strong>cittadini</strong>, contestualmente all&rsquo;elezione del Sindaco, e resta in carica <strong>cinque anni</strong>.</p>
<p>
	Il Consiglio Comunale &egrave; organo di indirizzo e di controllo <strong>politico-amministrativo</strong> del comune. La sua competenza si limita ad atti fondamentali indicati dalla legge: Statuto dell&#39;ente e delle aziende speciali, programmi, piani finanziari, bilanci, conti consuntivi, convenzioni tra enti locali, costituzione di forme associative, etc.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Municipal Council</strong> is the local government of Villamarina municipality. Specifically the term can refer to the institutions of various countries that can be translated by this term.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721120259</created><lastModified>20120405140602</lastModified></content>
', '20090721120259', '20120405140602', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG19" typecode="CNG" typedescr="Generic content"><descr>Consiglio Comunale</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Consiglio Comunale</text><text lang="en">Municipal Council</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Il Consiglio Comunale, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull''ordinamento degli enti locali) è l''assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall''art. 114 della Costituzione della Repubblica Italiana.</text><text lang="en">A Municipal Council is the local government of Villamarina municipality.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Consiglio Comunale</strong>, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull&#39;ordinamento degli enti locali) &egrave; l&#39;assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall&#39;art. 114 della <strong>Costituzione della Repubblica Italiana</strong>.</p>
<p>
	Il Consiglio Comunale &egrave; composto dal Sindaco e da un numero variabile di consiglieri, in funzione del numero di abitanti del Comune.</p>
<p>
	Il Consiglio comunale viene eletto direttamente dai <strong>cittadini</strong>, contestualmente all&rsquo;elezione del Sindaco, e resta in carica <strong>cinque anni</strong>.</p>
<p>
	Il Consiglio Comunale &egrave; organo di indirizzo e di controllo <strong>politico-amministrativo</strong> del comune. La sua competenza si limita ad atti fondamentali indicati dalla legge: Statuto dell&#39;ente e delle aziende speciali, programmi, piani finanziari, bilanci, conti consuntivi, convenzioni tra enti locali, costituzione di forme associative, etc.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Municipal Council</strong> is the local government of Villamarina municipality. Specifically the term can refer to the institutions of various countries that can be translated by this term.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721120259</created><lastModified>20120405140602</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('SDL7', 'SDL', 'Residence Self-certification Form', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="SDL7" typecode="SDL" typedescr="Document"><descr>Residence Self-certification Form</descr><groups mainGroup="free" /><categories><category id="autocertificazioni" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Modulo Autocertificazione Residenza</text><text lang="en">Residence Self-certification Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione di residenza messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Residence Self-certification form.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione di residenza&nbsp;messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Residence Self-certification form.</p>
]]></hypertext></attribute><attribute name="Image" attributetype="Image" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="40" lang="it" /><resource resourcetype="Attach" id="40" lang="en" /><text lang="it">Certificato di residenza</text><text lang="en">Residence Self-certification form</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090219165640</created><lastModified>20120405140617</lastModified></content>
', '20090219165640', '20120405140617', '<?xml version="1.0" encoding="UTF-8"?>
<content id="SDL7" typecode="SDL" typedescr="Document"><descr>Residence Self-certification Form</descr><groups mainGroup="free" /><categories><category id="autocertificazioni" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Modulo Autocertificazione Residenza</text><text lang="en">Residence Self-certification Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione di residenza messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Residence Self-certification form.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione di residenza&nbsp;messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Residence Self-certification form.</p>
]]></hypertext></attribute><attribute name="Image" attributetype="Image" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="40" lang="it" /><resource resourcetype="Attach" id="40" lang="en" /><text lang="it">Certificato di residenza</text><text lang="en">Residence Self-certification form</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090219165640</created><lastModified>20120405140617</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('SDL44', 'SDL', 'Civil Status Self Certification Form', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="SDL44" typecode="SDL" typedescr="Document"><descr>Civil Status Self Certification Form</descr><groups mainGroup="free" /><categories><category id="autocertificazioni" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Modulo Autocertificazione Stato Civile</text><text lang="en">Civil Status Self Certification Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione dello stato civile messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Civil Status Self Certification Form</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione&nbsp;dello stato civile messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Civil Status Self Certification Form</p>
]]></hypertext></attribute><attribute name="Image" attributetype="Image" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="43" lang="it" /><resource resourcetype="Attach" id="43" lang="en" /><text lang="it">Modulo Certificato Stato Civile</text><text lang="en">Civil Status Self Certification Form</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090722143125</created><lastModified>20120405140724</lastModified></content>
', '20090722143125', '20120405140724', '<?xml version="1.0" encoding="UTF-8"?>
<content id="SDL44" typecode="SDL" typedescr="Document"><descr>Civil Status Self Certification Form</descr><groups mainGroup="free" /><categories><category id="autocertificazioni" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Modulo Autocertificazione Stato Civile</text><text lang="en">Civil Status Self Certification Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione dello stato civile messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Civil Status Self Certification Form</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione&nbsp;dello stato civile messo a disposizione dal Comune di Villamarina, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Civil Status Self Certification Form</p>
]]></hypertext></attribute><attribute name="Image" attributetype="Image" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="43" lang="it" /><resource resourcetype="Attach" id="43" lang="en" /><text lang="it">Modulo Certificato Stato Civile</text><text lang="en">Civil Status Self Certification Form</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090722143125</created><lastModified>20120405140724</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW23', 'NEW', 'Ground Rent Contribution', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW23" typecode="NEW" typedescr="News"><descr>Ground Rent Contribution</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20111021</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Contributo canone di locazione 2011</text><text lang="en">Ground Rent Contribution</text></attribute><attribute name="ShortText" attributetype="Longtext"><text lang="it">E'' stato pubblicato l''avviso pubblico per l’attribuzione del contributo ad integrazione dei canoni di locazione 2011.</text><text lang="en">It has been published the public notice for the allocation of Ground Rent Contribution 2011.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	E&#39; stato pubblicato l&#39;avviso pubblico per<strong> </strong>la presentazione delle domande per l&rsquo;<strong>attribuzione del contributo ad integrazione dei canoni di locazione</strong> relativo all&rsquo;annualit&agrave; 2011, di cui all&rsquo;art. 11 L. 431/98 per chi sia residente nel Comune di Villamarina.&nbsp;</p>
<p>
	E&#39; possibile scaricare i moduli per la domanda, e il relativo Bando in questa sezione o ritirarli presso gli uffici del Comune di Villamarina.</p>
<p>
	Le relative domande per accedere al bando devono essere presentate o spedite all&#39;Ufficio Protocollo entro il<strong> giorno 11.12.2011</strong>.&nbsp;</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been published the public notice for the allocation of <strong>Ground Rent Contribution 2011</strong>.</p>
<p>
	You can download the application forms and the notice in this section.</p>
<p>
	The applications to access the notice must be submitted to Protocol Office until <strong>11/12/2011</strong>.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="24" lang="it" /><resource resourcetype="Attach" id="24" lang="en" /><text lang="it">Bando Locazione 2011</text><text lang="en">Notice</text></attribute><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="25" lang="it" /><resource resourcetype="Attach" id="25" lang="en" /><text lang="it">Modulo domanda Locazione 2011</text><text lang="en">Application Form</text></attribute></list></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20090721185336</created><lastModified>20120405140819</lastModified></content>
', '20090721185336', '20120405140819', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW23" typecode="NEW" typedescr="News"><descr>Ground Rent Contribution</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20111021</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Contributo canone di locazione 2011</text><text lang="en">Ground Rent Contribution</text></attribute><attribute name="ShortText" attributetype="Longtext"><text lang="it">E'' stato pubblicato l''avviso pubblico per l’attribuzione del contributo ad integrazione dei canoni di locazione 2011.</text><text lang="en">It has been published the public notice for the allocation of Ground Rent Contribution 2011.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	E&#39; stato pubblicato l&#39;avviso pubblico per<strong> </strong>la presentazione delle domande per l&rsquo;<strong>attribuzione del contributo ad integrazione dei canoni di locazione</strong> relativo all&rsquo;annualit&agrave; 2011, di cui all&rsquo;art. 11 L. 431/98 per chi sia residente nel Comune di Villamarina.&nbsp;</p>
<p>
	E&#39; possibile scaricare i moduli per la domanda, e il relativo Bando in questa sezione o ritirarli presso gli uffici del Comune di Villamarina.</p>
<p>
	Le relative domande per accedere al bando devono essere presentate o spedite all&#39;Ufficio Protocollo entro il<strong> giorno 11.12.2011</strong>.&nbsp;</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been published the public notice for the allocation of <strong>Ground Rent Contribution 2011</strong>.</p>
<p>
	You can download the application forms and the notice in this section.</p>
<p>
	The applications to access the notice must be submitted to Protocol Office until <strong>11/12/2011</strong>.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="24" lang="it" /><resource resourcetype="Attach" id="24" lang="en" /><text lang="it">Bando Locazione 2011</text><text lang="en">Notice</text></attribute><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="25" lang="it" /><resource resourcetype="Attach" id="25" lang="en" /><text lang="it">Modulo domanda Locazione 2011</text><text lang="en">Application Form</text></attribute></list></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20090721185336</created><lastModified>20120405140819</lastModified></content>
', 'free', '7.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG29', 'CNG', 'Intro delibere di Consiglio', 'DRAFT', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG29" typecode="CNG" typedescr="Contenuto generico"><descr>Intro delibere di Consiglio</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Elenco delle Delibere di Consiglio presenti nel portale del Comune</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext" /><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>DRAFT</status></content>
', '20090721192226', '20090721192226', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG29" typecode="CNG" typedescr="Contenuto generico"><descr>Intro delibere di Consiglio</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Elenco delle Delibere di Consiglio presenti nel portale del Comune</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext" /><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>DRAFT</status></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG55', 'CNG', 'Intro Mobile Announcements', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG55" typecode="CNG" typedescr="Generic content"><descr>Intro Mobile Announcements</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Bandi</text><text lang="en">Announcements</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione puoi trovare la lista dei Bandi.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Here you can find the announcements list.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20091015102100</created><lastModified>20120405141419</lastModified></content>
', '20091015102100', '20120405141419', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG55" typecode="CNG" typedescr="Generic content"><descr>Intro Mobile Announcements</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Bandi</text><text lang="en">Announcements</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione puoi trovare la lista dei Bandi.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Here you can find the announcements list.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20091015102100</created><lastModified>20120405141419</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG14', 'CNG', 'Intro Download', 'READY', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG14" typecode="CNG" typedescr="Contenuto generico"><descr>Intro Download</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Archivio Modulistica</text><text lang="en">Documents Archive</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">In questa sono disponibili per il download i moduli predisposti per i diversi aspetti del rapporto tra il Cittadino ed il Comune.</text><text lang="en">In this section are available for download the documents provided for the relationship between Citizens and Municipality.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>In questa sono disponibili per il download i moduli predisposti per i diversi aspetti del rapporto tra il Cittadino ed il Comune.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>In this section are available for download the documents provided for the relationship between Citizens and Municipality.</p>]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>READY</status><versionId>1.0</versionId></content>
', '20090703113633', '20100104125122', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG14" typecode="CNG" typedescr="Contenuto generico"><descr>Intro Download</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Archivio Modulistica</text><text lang="en">Documents Archive</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">In questa sono disponibili per il download i moduli predisposti per i diversi aspetti del rapporto tra il Cittadino ed il Comune.</text><text lang="en">In this section are available for download the documents provided for the relationship between Citizens and Municipality.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>In questa sono disponibili per il download i moduli predisposti per i diversi aspetti del rapporto tra il Cittadino ed il Comune.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>In this section are available for download the documents provided for the relationship between Citizens and Municipality.</p>]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>READY</status><versionId>1.0</versionId></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG17', 'CNG', 'Mayor', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG17" typecode="CNG" typedescr="Generic content"><descr>Mayor</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Sindaco</text><text lang="en">Mayor</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Il Sindaco è eletto direttamente dai cittadini ed è membro del Consiglio Comunale. È capo dell’amministrazione, ha la rappresentanza legale dell’ente ed è, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</text><text lang="en">Mayor is a modern title used in many countries for the highest ranking officer in a municipal government.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Sindaco</strong> &egrave; eletto direttamente dai cittadini ed &egrave; membro del <strong>Consiglio Comunale</strong>. &Egrave; capo dell&rsquo;amministrazione, ha la rappresentanza legale dell&rsquo;ente ed &egrave;, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</p>
<p>
	Nomina gli <strong>Assessori</strong>, convoca e presiede la <strong>Giunta comunale</strong>, assicurandone unit&agrave; di indirizzo; sovrintende al funzionamento degli uffici e dei servizi.</p>
<p>
	Al Sindaco competono la nomina del segretario generale, del direttore generale e dei direttori di settore.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	<strong>Mayor</strong> is a modern title used in many countries for the highest ranking officer in a municipal government.</p>
<p>
	The mayor is an elected politician who serves as chief executive officer and/or ceremonial official of Villamarina municipalities.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721112111</created><lastModified>20120405141952</lastModified></content>
', '20090721112111', '20120405141952', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG17" typecode="CNG" typedescr="Generic content"><descr>Mayor</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Sindaco</text><text lang="en">Mayor</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Il Sindaco è eletto direttamente dai cittadini ed è membro del Consiglio Comunale. È capo dell’amministrazione, ha la rappresentanza legale dell’ente ed è, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</text><text lang="en">Mayor is a modern title used in many countries for the highest ranking officer in a municipal government.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Sindaco</strong> &egrave; eletto direttamente dai cittadini ed &egrave; membro del <strong>Consiglio Comunale</strong>. &Egrave; capo dell&rsquo;amministrazione, ha la rappresentanza legale dell&rsquo;ente ed &egrave;, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</p>
<p>
	Nomina gli <strong>Assessori</strong>, convoca e presiede la <strong>Giunta comunale</strong>, assicurandone unit&agrave; di indirizzo; sovrintende al funzionamento degli uffici e dei servizi.</p>
<p>
	Al Sindaco competono la nomina del segretario generale, del direttore generale e dei direttori di settore.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	<strong>Mayor</strong> is a modern title used in many countries for the highest ranking officer in a municipal government.</p>
<p>
	The mayor is an elected politician who serves as chief executive officer and/or ceremonial official of Villamarina municipalities.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721112111</created><lastModified>20120405141952</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG49', 'CNG', 'Public Relations Office', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG49" typecode="CNG" typedescr="Generic content"><descr>Public Relations Office</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">URP - Ufficio Relazioni con il Pubblico</text><text lang="en">Public Relations Office</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	<strong>Sede</strong>: Palazzo Municipale - Via Villamarina, 1, Villamarina</p>
<p>
	<strong>Telefono</strong> 000.000.000 (numero verde)</p>
<p>
	<strong>Fax</strong> 00.0000.000</p>
<p>
	<strong>E-mail</strong> urp@villamarina.it<br />
	&nbsp;</p>
<p>
	<strong>Orario di ricevimento</strong></p>
<p>
	dal luned&igrave; al venerd&igrave;: dalle 9.00 alle 12.30<br />
	marted&igrave; e mercoled&igrave;: dalle 16.00 alle 17.00</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	<strong>Location</strong>: Palazzo Municipale - Via Villamarina, 1, Villamarina</p>
<p>
	<strong>Phone</strong>: 000.000.000</p>
<p>
	<strong>Fax:</strong> 00.0000.000</p>
<p>
	<strong>E-mail</strong> urp@villamarina.it</p>
<p>
	<strong>Opening hours</strong></p>
<p>
	From Monday to Friday: from 9.00 a.m. to 12.30 a.m.<br />
	From Tuesday to Wednesday: from 16.00 p.m. to 17.00 p.m.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090722171212</created><lastModified>20120405142027</lastModified></content>
', '20090722171212', '20120405142027', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG49" typecode="CNG" typedescr="Generic content"><descr>Public Relations Office</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">URP - Ufficio Relazioni con il Pubblico</text><text lang="en">Public Relations Office</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	<strong>Sede</strong>: Palazzo Municipale - Via Villamarina, 1, Villamarina</p>
<p>
	<strong>Telefono</strong> 000.000.000 (numero verde)</p>
<p>
	<strong>Fax</strong> 00.0000.000</p>
<p>
	<strong>E-mail</strong> urp@villamarina.it<br />
	&nbsp;</p>
<p>
	<strong>Orario di ricevimento</strong></p>
<p>
	dal luned&igrave; al venerd&igrave;: dalle 9.00 alle 12.30<br />
	marted&igrave; e mercoled&igrave;: dalle 16.00 alle 17.00</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	<strong>Location</strong>: Palazzo Municipale - Via Villamarina, 1, Villamarina</p>
<p>
	<strong>Phone</strong>: 000.000.000</p>
<p>
	<strong>Fax:</strong> 00.0000.000</p>
<p>
	<strong>E-mail</strong> urp@villamarina.it</p>
<p>
	<strong>Opening hours</strong></p>
<p>
	From Monday to Friday: from 9.00 a.m. to 12.30 a.m.<br />
	From Tuesday to Wednesday: from 16.00 p.m. to 17.00 p.m.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090722171212</created><lastModified>20120405142027</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG11', 'CNG', 'Intro Announcements', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG11" typecode="CNG" typedescr="Generic content"><descr>Intro Announcements</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Archivio Bandi</text><text lang="en">Announcements Archive</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">In questa sezione sono pubblicati i bandi, ordinati in base alla data di scadenza.</text><text lang="en">In this section are available Announcements of Villamarina Municipality, sorted by date.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione sono pubblicati i bandi del Comune di Villamarina, ordinati in base alla data di scadenza.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In this section are available<strong> Announcements</strong> of Villamarina Municipality, sorted by expiry date.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090703112842</created><lastModified>20120405142232</lastModified></content>
', '20090703112842', '20120405142232', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG11" typecode="CNG" typedescr="Generic content"><descr>Intro Announcements</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Archivio Bandi</text><text lang="en">Announcements Archive</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">In questa sezione sono pubblicati i bandi, ordinati in base alla data di scadenza.</text><text lang="en">In this section are available Announcements of Villamarina Municipality, sorted by date.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione sono pubblicati i bandi del Comune di Villamarina, ordinati in base alla data di scadenza.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In this section are available<strong> Announcements</strong> of Villamarina Municipality, sorted by expiry date.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090703112842</created><lastModified>20120405142232</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG13', 'CNG', 'Intro Decisions', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG13" typecode="CNG" typedescr="Generic content"><descr>Intro Decisions</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Archivio Delibere</text><text lang="en">Decisions Archive</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">In questa sezione sono pubblicate le delibere di Giunta e di Consiglio, ordinate in base alla data di pubblicazione.</text><text lang="en">In this section are available the Council decisions, sorted by publication date.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione sono pubblicate le delibere di Giunta e di Consiglio, ordinate in base alla data di pubblicazione.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In this section are available the <strong>Council decisions</strong>, sorted by publication date.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090703113229</created><lastModified>20120405142330</lastModified></content>
', '20090703113229', '20120405142330', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG13" typecode="CNG" typedescr="Generic content"><descr>Intro Decisions</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Archivio Delibere</text><text lang="en">Decisions Archive</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">In questa sezione sono pubblicate le delibere di Giunta e di Consiglio, ordinate in base alla data di pubblicazione.</text><text lang="en">In this section are available the Council decisions, sorted by publication date.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione sono pubblicate le delibere di Giunta e di Consiglio, ordinate in base alla data di pubblicazione.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In this section are available the <strong>Council decisions</strong>, sorted by publication date.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090703113229</created><lastModified>20120405142330</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('SDL42', 'SDL', 'Registry - Request Identity Card valid for foreign travel', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="SDL42" typecode="SDL" typedescr="Document"><descr>Registry - Request Identity Card valid for foreign travel</descr><groups mainGroup="free" /><categories><category id="moduli" /><category id="anagrafe" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Anagrafe - Richiesta Carta Identità valida per espatrio</text><text lang="en">Registry - Request Identity Card valid for foreign travel</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta della carta identit&agrave; valida per espatrio.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for identity card valid for foreign travel.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta della carta identit&agrave; valida per espatrio, per i cittadini residenti nel Comune di Villamarina.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for identity card valid for foreign travel, for Villamarina citizens.</p>
]]></hypertext></attribute><attribute name="Image" attributetype="Image" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="41" lang="it" /><resource resourcetype="Attach" id="41" lang="en" /><text lang="it">Modulo richiesta Carta Identità valida per espatrio</text><text lang="en">Identity Card Request Form</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090722134145</created><lastModified>20120405143216</lastModified></content>
', '20090722134145', '20120405143216', '<?xml version="1.0" encoding="UTF-8"?>
<content id="SDL42" typecode="SDL" typedescr="Document"><descr>Registry - Request Identity Card valid for foreign travel</descr><groups mainGroup="free" /><categories><category id="moduli" /><category id="anagrafe" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Anagrafe - Richiesta Carta Identità valida per espatrio</text><text lang="en">Registry - Request Identity Card valid for foreign travel</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta della carta identit&agrave; valida per espatrio.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for identity card valid for foreign travel.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta della carta identit&agrave; valida per espatrio, per i cittadini residenti nel Comune di Villamarina.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for identity card valid for foreign travel, for Villamarina citizens.</p>
]]></hypertext></attribute><attribute name="Image" attributetype="Image" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="41" lang="it" /><resource resourcetype="Attach" id="41" lang="en" /><text lang="it">Modulo richiesta Carta Identità valida per espatrio</text><text lang="en">Identity Card Request Form</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090722134145</created><lastModified>20120405143216</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('BND5', 'BND', 'Announcement for special maintenance Nautical Institute', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="BND5" typecode="BND" typedescr="Announcement"><descr>Announcement for special maintenance Nautical Institute</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per l''esecuzione dei Lavori per la manutenzione dell''Istituto Nautico</text><text lang="en">Announcement for special maintenance Nautical Institute.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130303</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131114</date></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara per l&#39;esecuzione dei &quot;Lavori per la manutenzione straordinaria dell&#39;Istituto Nautico, per la realizzazione di laboratorio informatico&quot;.</p>
<p>
	Appalto n. 3 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcement for special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="37" lang="it" /><resource resourcetype="Attach" id="37" lang="en" /><text lang="it">Bando</text><text lang="en">Announcement for maintenance Nautical Institute</text></attribute></list></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20090219165221</created><lastModified>20120405143643</lastModified></content>
', '20090219165221', '20120405143643', '<?xml version="1.0" encoding="UTF-8"?>
<content id="BND5" typecode="BND" typedescr="Announcement"><descr>Announcement for special maintenance Nautical Institute</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per l''esecuzione dei Lavori per la manutenzione dell''Istituto Nautico</text><text lang="en">Announcement for special maintenance Nautical Institute.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130303</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131114</date></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara per l&#39;esecuzione dei &quot;Lavori per la manutenzione straordinaria dell&#39;Istituto Nautico, per la realizzazione di laboratorio informatico&quot;.</p>
<p>
	Appalto n. 3 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcement for special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="37" lang="it" /><resource resourcetype="Attach" id="37" lang="en" /><text lang="it">Bando</text><text lang="en">Announcement for maintenance Nautical Institute</text></attribute></list></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20090219165221</created><lastModified>20120405143643</lastModified></content>
', 'free', '4.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DLB30', 'DLB', 'Decision 20', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLB30" typecode="DLB" typedescr="Decision"><descr>Decision 20</descr><groups mainGroup="free" /><categories><category id="delibere_di_consiglio" /></categories><attributes><attribute name="Number" attributetype="Number"><number>20</number></attribute><attribute name="Date" attributetype="Date"><date>20111004</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Esame ed approvazione del Conto Consuntivo 2011</text><text lang="en">Examination and approval of Villamarina Balance Sheet 2011</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Esame ed approvazione del Conto Consuntivo 2011</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Examination and approval of Villamarina Balance Sheet 2011</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="34" lang="it" /><resource resourcetype="Attach" id="34" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 20 del 13 Luglio 2011</text><text lang="en">Decision 20</text></attribute></list></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20090721192612</created><lastModified>20120405143811</lastModified></content>
', '20090721192612', '20120405143811', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLB30" typecode="DLB" typedescr="Decision"><descr>Decision 20</descr><groups mainGroup="free" /><categories><category id="delibere_di_consiglio" /></categories><attributes><attribute name="Number" attributetype="Number"><number>20</number></attribute><attribute name="Date" attributetype="Date"><date>20111004</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Esame ed approvazione del Conto Consuntivo 2011</text><text lang="en">Examination and approval of Villamarina Balance Sheet 2011</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Esame ed approvazione del Conto Consuntivo 2011</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Examination and approval of Villamarina Balance Sheet 2011</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="34" lang="it" /><resource resourcetype="Attach" id="34" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 20 del 13 Luglio 2011</text><text lang="en">Decision 20</text></attribute></list></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20090721192612</created><lastModified>20120405143811</lastModified></content>
', 'free', '5.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DLB32', 'DLB', 'Decision 120', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLB32" typecode="DLB" typedescr="Decision"><descr>Decision 120</descr><groups mainGroup="free" /><categories><category id="delibere_di_giunta" /><category id="moduli" /></categories><attributes><attribute name="Number" attributetype="Number"><number>120</number></attribute><attribute name="Date" attributetype="Date"><date>20110701</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Organizzazione della manifestazione "Festival della canzone popolare” III Edizione.</text><text lang="en">Organization of the event "Folk Music Festival" III Edition.</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Organizzazione della manifestazione &quot;Festival della canzone popolare&rdquo; III Edizione che si terr&agrave; a Villamarina&nbsp; nei mesi di Agosto e Settembre 2011.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Organization of the event &quot;<strong>Folk Music Festival</strong>&quot; III edition to be held in Villamarina in the months of August and September 2011.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="33" lang="it" /><resource resourcetype="Attach" id="33" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 120 dell'' 8 Luglio 2011</text><text lang="en">Decision 120</text></attribute></list></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20090722101353</created><lastModified>20120405143834</lastModified></content>
', '20090722101353', '20120405143834', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLB32" typecode="DLB" typedescr="Decision"><descr>Decision 120</descr><groups mainGroup="free" /><categories><category id="delibere_di_giunta" /><category id="moduli" /></categories><attributes><attribute name="Number" attributetype="Number"><number>120</number></attribute><attribute name="Date" attributetype="Date"><date>20110701</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Organizzazione della manifestazione "Festival della canzone popolare” III Edizione.</text><text lang="en">Organization of the event "Folk Music Festival" III Edition.</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Organizzazione della manifestazione &quot;Festival della canzone popolare&rdquo; III Edizione che si terr&agrave; a Villamarina&nbsp; nei mesi di Agosto e Settembre 2011.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Organization of the event &quot;<strong>Folk Music Festival</strong>&quot; III edition to be held in Villamarina in the months of August and September 2011.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="33" lang="it" /><resource resourcetype="Attach" id="33" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 120 dell'' 8 Luglio 2011</text><text lang="en">Decision 120</text></attribute></list></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20090722101353</created><lastModified>20120405143834</lastModified></content>
', 'free', '5.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DLB36', 'DLB', 'Decision 15', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLB36" typecode="DLB" typedescr="Decision"><descr>Decision 15</descr><groups mainGroup="free" /><categories><category id="delibere_di_consiglio" /><category id="delibere" /></categories><attributes><attribute name="Number" attributetype="Number"><number>15</number></attribute><attribute name="Date" attributetype="Date"><date>20110716</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Approvazione programma di incarichi di consulenza autonoma nel settore turistico</text><text lang="en">Approval for charge of consultant program in tourism sector for 2011.</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Approvazione programma di&nbsp; incarichi di consulenza autonoma nel settore turistico &ndash; lavori pubblici &ndash; servizi tecnologici, per l&#39;anno 2011.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Approval for charge of consultant program in tourism sector for 2011.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="35" lang="it" /><resource resourcetype="Attach" id="35" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 15 del 09 Luglio 2011</text><text lang="en">Decision 15</text></attribute></list></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20090722104739</created><lastModified>20120405143908</lastModified></content>
', '20090722104739', '20120405143908', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLB36" typecode="DLB" typedescr="Decision"><descr>Decision 15</descr><groups mainGroup="free" /><categories><category id="delibere_di_consiglio" /><category id="delibere" /></categories><attributes><attribute name="Number" attributetype="Number"><number>15</number></attribute><attribute name="Date" attributetype="Date"><date>20110716</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Approvazione programma di incarichi di consulenza autonoma nel settore turistico</text><text lang="en">Approval for charge of consultant program in tourism sector for 2011.</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Approvazione programma di&nbsp; incarichi di consulenza autonoma nel settore turistico &ndash; lavori pubblici &ndash; servizi tecnologici, per l&#39;anno 2011.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Approval for charge of consultant program in tourism sector for 2011.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="35" lang="it" /><resource resourcetype="Attach" id="35" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 15 del 09 Luglio 2011</text><text lang="en">Decision 15</text></attribute></list></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20090722104739</created><lastModified>20120405143908</lastModified></content>
', 'free', '5.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG256', 'CNG', 'Intro Home - How to sign in', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG256" typecode="CNG" typedescr="Generic content"><descr>Intro Home - How to sign in</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Come loggarsi</text><text lang="en">How to sign in</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Cosa aspetti? Prova l''Area di Amministrazione!&#xD;
Scegli il link "Avanzata" e scopri la nuova veste grafica.&#xD;
Scopri quante cose puoi personalizzare, crea un nuovo contenuto, una nuova pagina o magari il tuo utente personale.&#xD;
Entra con Username: admin e Password: adminadmin e poi fai quello che vuoi tu.</text><text lang="en">What are you waiting for? Try the Administration Area!&#xD;
Choose the "Advanced" link and enjoy the new design.&#xD;
Find out how many things you can customize, create new content, a new page or even your own user.&#xD;
Sign in with Username: admin and Password: adminadmin and then do what you want.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Cosa aspetti? Prova l&#39;Area di Amministrazione!</p>
<p>
	Scegli il link &quot;Avanzata&quot; e scopri la nuova veste grafica.</p>
<p>
	Scopri quante cose puoi personalizzare, crea un nuovo contenuto, una nuova pagina o magari il tuo utente personale.</p>
<p>
	Entra con Username: <strong>admin</strong> e Password: <strong>adminadmin</strong> e poi fai quello che vuoi tu.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	What are you waiting for? Try the Administration Area!</p>
<p>
	Choose the &quot;Advanced&quot; link and enjoy the new design.</p>
<p>
	Find out how many things you can customize, create new content, a new page or even your own user.</p>
<p>
	Sign in with Username: <strong>admin</strong> and Password: <strong>adminadmin</strong> and then do what you want.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20110415124748</created><lastModified>20120405144031</lastModified></content>
', '20110415124748', '20120405144031', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG256" typecode="CNG" typedescr="Generic content"><descr>Intro Home - How to sign in</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Come loggarsi</text><text lang="en">How to sign in</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Cosa aspetti? Prova l''Area di Amministrazione!&#xD;
Scegli il link "Avanzata" e scopri la nuova veste grafica.&#xD;
Scopri quante cose puoi personalizzare, crea un nuovo contenuto, una nuova pagina o magari il tuo utente personale.&#xD;
Entra con Username: admin e Password: adminadmin e poi fai quello che vuoi tu.</text><text lang="en">What are you waiting for? Try the Administration Area!&#xD;
Choose the "Advanced" link and enjoy the new design.&#xD;
Find out how many things you can customize, create new content, a new page or even your own user.&#xD;
Sign in with Username: admin and Password: adminadmin and then do what you want.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Cosa aspetti? Prova l&#39;Area di Amministrazione!</p>
<p>
	Scegli il link &quot;Avanzata&quot; e scopri la nuova veste grafica.</p>
<p>
	Scopri quante cose puoi personalizzare, crea un nuovo contenuto, una nuova pagina o magari il tuo utente personale.</p>
<p>
	Entra con Username: <strong>admin</strong> e Password: <strong>adminadmin</strong> e poi fai quello che vuoi tu.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	What are you waiting for? Try the Administration Area!</p>
<p>
	Choose the &quot;Advanced&quot; link and enjoy the new design.</p>
<p>
	Find out how many things you can customize, create new content, a new page or even your own user.</p>
<p>
	Sign in with Username: <strong>admin</strong> and Password: <strong>adminadmin</strong> and then do what you want.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20110415124748</created><lastModified>20120405144031</lastModified></content>
', 'free', '4.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG16', 'CNG', 'Card Management Internal Servlet', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG16" typecode="CNG" typedescr="Generic content"><descr>Card Management Internal Servlet</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Internal Servlet</text><text lang="en">Internal Servlet</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi di Entando&quot;) per la gestione dei &quot;Pass ZTL&quot; con l&#39;utilizzo della Showlet &quot;Internal Servlet&quot;.</p>
<p>
	Tramite la showlet Internal Servlet &egrave; possibile utilizzare il motore del servizio utilizzato per il back-office (le operazioni CRUD realizzate tramite le Action CardAction e CardFinderAction) integrando delle jsp apposite.</p>
<p>
	In questo esempio, nel front-end vengono presentate le funzioni di ricerca PASS e visione dati singolo PASS. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This is a simple example of a service application (written under the &quot;Entando Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot; with the use of &quot;Internal Servlet&quot; Showlet.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20090708180436</created><lastModified>20120405131853</lastModified></content>
', '20090708180436', '20120405131853', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG16" typecode="CNG" typedescr="Generic content"><descr>Card Management Internal Servlet</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Internal Servlet</text><text lang="en">Internal Servlet</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi di Entando&quot;) per la gestione dei &quot;Pass ZTL&quot; con l&#39;utilizzo della Showlet &quot;Internal Servlet&quot;.</p>
<p>
	Tramite la showlet Internal Servlet &egrave; possibile utilizzare il motore del servizio utilizzato per il back-office (le operazioni CRUD realizzate tramite le Action CardAction e CardFinderAction) integrando delle jsp apposite.</p>
<p>
	In questo esempio, nel front-end vengono presentate le funzioni di ricerca PASS e visione dati singolo PASS. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This is a simple example of a service application (written under the &quot;Entando Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot; with the use of &quot;Internal Servlet&quot; Showlet.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20090708180436</created><lastModified>20120405131853</lastModified></content>
', 'free', '4.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW27', 'NEW', 'Folk Music Festival', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW27" typecode="NEW" typedescr="News"><descr>Folk Music Festival</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20110720</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Festival della canzone popolare</text><text lang="en">Folk Music Festival</text></attribute><attribute name="ShortText" attributetype="Longtext"><text lang="it">Si inaugura la III edizione del "Festival della canzone popolare"</text><text lang="en">It has been inaugurated the third edition of the "Folk Music Festival" to be held on July and August in the amphitheater of Villamarina.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Si inaugura la III edizione del &quot;Festival della <strong>canzone popolare&quot;</strong> che si svolger&agrave; durante i mesi di febbraio ed marzo nell&#39;anfiteatro del lungo mare di Villamarina.</p>
<p>
	Al centro della manifestazione &egrave; la canzone popolare. L&#39;evento coinvolge <strong>artisti di fama nazionale</strong> e prevede un calendario ricco di incontri.</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been inaugurated the third edition of the &quot;<strong>Folk Music Festival</strong>&quot; to be held on July and August in the amphitheater of Villamarina.</p>
<p>
	At the center of the event is the folk song. The event involves artists and provides a calendar full of meetings.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>9.0</version><lastEditor>admin</lastEditor><created>20090721191155</created><lastModified>20120405144200</lastModified></content>
', '20090721191155', '20120405144200', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW27" typecode="NEW" typedescr="News"><descr>Folk Music Festival</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20110720</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Festival della canzone popolare</text><text lang="en">Folk Music Festival</text></attribute><attribute name="ShortText" attributetype="Longtext"><text lang="it">Si inaugura la III edizione del "Festival della canzone popolare"</text><text lang="en">It has been inaugurated the third edition of the "Folk Music Festival" to be held on July and August in the amphitheater of Villamarina.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Si inaugura la III edizione del &quot;Festival della <strong>canzone popolare&quot;</strong> che si svolger&agrave; durante i mesi di febbraio ed marzo nell&#39;anfiteatro del lungo mare di Villamarina.</p>
<p>
	Al centro della manifestazione &egrave; la canzone popolare. L&#39;evento coinvolge <strong>artisti di fama nazionale</strong> e prevede un calendario ricco di incontri.</p>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been inaugurated the third edition of the &quot;<strong>Folk Music Festival</strong>&quot; to be held on July and August in the amphitheater of Villamarina.</p>
<p>
	At the center of the event is the folk song. The event involves artists and provides a calendar full of meetings.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>9.0</version><lastEditor>admin</lastEditor><created>20090721191155</created><lastModified>20120405144200</lastModified></content>
', 'free', '9.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW177', 'NEW', 'Online the Mobile Portal', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW177" typecode="NEW" typedescr="News"><descr>Online the Mobile Portal</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20110615</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Online il Portale Mobile</text><text lang="en">Online the Mobile Portal</text></attribute><attribute name="ShortText" attributetype="Longtext"><text lang="it">Online il Portale del Comune di Villamarina realizzato con la piattaforma Entando.</text><text lang="en">Online the Mobile Portal of Villamarina Municipality.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online<strong> il Portale del Comune di Villamarina, </strong>realizzato con la <strong>piattaforma Entando.</strong></p>
<p>
	Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>
<p>
	Il nuovo portale &egrave; stato realizzato per dare una risposta all&#39;altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull&#39;amministrazione comunale.</p>
<p>
	Il sito si presenta con una veste <strong>grafica minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Mobile Portal of Villamarina Municipality, built with <strong>Entando Platform.</strong></p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="content"><contentdest>CNG51</contentdest></link><text lang="it">Scopri i dettagli</text><text lang="en">Discover More</text></attribute></list><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20110118183107</created><lastModified>20120405144313</lastModified></content>
', '20110118183107', '20120405144313', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW177" typecode="NEW" typedescr="News"><descr>Online the Mobile Portal</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20110615</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Online il Portale Mobile</text><text lang="en">Online the Mobile Portal</text></attribute><attribute name="ShortText" attributetype="Longtext"><text lang="it">Online il Portale del Comune di Villamarina realizzato con la piattaforma Entando.</text><text lang="en">Online the Mobile Portal of Villamarina Municipality.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online<strong> il Portale del Comune di Villamarina, </strong>realizzato con la <strong>piattaforma Entando.</strong></p>
<p>
	Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>
<p>
	Il nuovo portale &egrave; stato realizzato per dare una risposta all&#39;altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull&#39;amministrazione comunale.</p>
<p>
	Il sito si presenta con una veste <strong>grafica minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Mobile Portal of Villamarina Municipality, built with <strong>Entando Platform.</strong></p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="content"><contentdest>CNG51</contentdest></link><text lang="it">Scopri i dettagli</text><text lang="en">Discover More</text></attribute></list><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20110118183107</created><lastModified>20120405144313</lastModified></content>
', 'free', '7.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW3', 'NEW', 'Online the Portal of Villamarina Municipality', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW3" typecode="NEW" typedescr="News"><descr>Online the Portal of Villamarina Municipality</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20111121</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Online il Portale del Comune di Villamarina</text><text lang="en">Online the Portal of Villamarina Municipality</text></attribute><attribute name="ShortText" attributetype="Longtext"><text lang="it">Online il Portale del Comune di Villamarina realizzato con la piattaforma Entando.</text><text lang="en">Online the Portal of Villamarina Municipality, built with the Entando Platform.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online<strong> il Portale del Comune di Villamarina, </strong>realizzato con la <strong>piattaforma Entando</strong>.</p>
<p>
	Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>
<p>
	Il nuovo portale &egrave; stato realizzato per dare una risposta all&#39;altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull&#39;amministrazione comunale.</p>
<p>
	Il sito si presenta con una veste <strong>grafica minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Portal of Villamarina Municipality, built with the Entando Platform.</p>
<p>
	In the institutional portal you can find all the information relating to the municipality and its activities: the offices, decisions and results.</p>
<p>
	The new portal is designed to respond to the expectations of citizens who every day are connected to find news and updated information.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image"><resource resourcetype="Image" id="26" lang="it" /><resource resourcetype="Image" id="26" lang="en" /><text lang="it">Spiaggia</text><text lang="en">Villamarina</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>8.0</version><lastEditor>admin</lastEditor><created>20090219163456</created><lastModified>20120405135335</lastModified></content>
', '20090219163456', '20120405135335', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW3" typecode="NEW" typedescr="News"><descr>Online the Portal of Villamarina Municipality</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20111121</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Online il Portale del Comune di Villamarina</text><text lang="en">Online the Portal of Villamarina Municipality</text></attribute><attribute name="ShortText" attributetype="Longtext"><text lang="it">Online il Portale del Comune di Villamarina realizzato con la piattaforma Entando.</text><text lang="en">Online the Portal of Villamarina Municipality, built with the Entando Platform.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online<strong> il Portale del Comune di Villamarina, </strong>realizzato con la <strong>piattaforma Entando</strong>.</p>
<p>
	Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>
<p>
	Il nuovo portale &egrave; stato realizzato per dare una risposta all&#39;altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull&#39;amministrazione comunale.</p>
<p>
	Il sito si presenta con una veste <strong>grafica minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Portal of Villamarina Municipality, built with the Entando Platform.</p>
<p>
	In the institutional portal you can find all the information relating to the municipality and its activities: the offices, decisions and results.</p>
<p>
	The new portal is designed to respond to the expectations of citizens who every day are connected to find news and updated information.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image"><resource resourcetype="Image" id="26" lang="it" /><resource resourcetype="Image" id="26" lang="en" /><text lang="it">Spiaggia</text><text lang="en">Villamarina</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>8.0</version><lastEditor>admin</lastEditor><created>20090219163456</created><lastModified>20120405135335</lastModified></content>
', 'free', '8.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG51', 'CNG', 'Intro Mobile', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG51" typecode="CNG" typedescr="Generic content"><descr>Intro Mobile</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Area Mobile</text><text lang="en">Mobile Area</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Online la versione MOBILE del portale di Villamarina disegnata con una nuova interfaccia grafica, adatta alla navigazione su schermi di dimensioni ridotte. Il Portale Mobile è stato realizzato con la piattaforma Entando.&#xD;
&#xD;
Il Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in movimento.&#xD;
&#xD;
Il Portale Mobile è disponibile in modalità multilingua: italiano, inglese.&#xD;
&#xD;
Il Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in movimento.</text><text lang="en">The MOBILE portal version of Villamarina is OnLine. The Mobile Portal is designed with a new graphical interface, suitable for "browsing" on small screens. The mobile portal is built on the Entando Platform.&#xD;
&#xD;
The Mobile Portal is multi-languages: Italian, English.&#xD;
&#xD;
The Mobile Portal makes available the information most useful to users who surf the web being in the movement.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online la versione <a href="#!P;mobile_home!#">MOBILE</a> del portale di Villamarina disegnata con una nuova interfaccia grafica, adatta alla &ldquo;navigazione&rdquo; su schermi di dimensioni ridotte. Il Portale Mobile &egrave; stato realizzato con la piattaforma Entando.</p>
<p>
	Il Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in &ldquo;movimento&rdquo;.</p>
<p>
	Il Portale Mobile &egrave; disponibile in modalit&agrave; multilingua: italiano, inglese.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The <a href="#!P;mobile_home!#">MOBILE</a> portal version of Villamarina is OnLine. The Mobile Portal is designed with a new graphical interface, suitable for &quot;browsing&quot; on small screens. The mobile portal is built on the Entando Platform.</p>
<p>
	The Mobile Portal is multi-languages: Italian, English.</p>
<p>
	The Mobile Portal makes available the information most useful to users who surf the web being in the movement.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image"><resource resourcetype="Image" id="143" lang="en" /><text lang="it">Mobile</text><text lang="en">Mobile</text></attribute><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>9.0</version><lastEditor>admin</lastEditor><created>20091014175142</created><lastModified>20120405135855</lastModified></content>
', '20091014175142', '20120405135855', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG51" typecode="CNG" typedescr="Generic content"><descr>Intro Mobile</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Area Mobile</text><text lang="en">Mobile Area</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Online la versione MOBILE del portale di Villamarina disegnata con una nuova interfaccia grafica, adatta alla navigazione su schermi di dimensioni ridotte. Il Portale Mobile è stato realizzato con la piattaforma Entando.&#xD;
&#xD;
Il Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in movimento.&#xD;
&#xD;
Il Portale Mobile è disponibile in modalità multilingua: italiano, inglese.&#xD;
&#xD;
Il Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in movimento.</text><text lang="en">The MOBILE portal version of Villamarina is OnLine. The Mobile Portal is designed with a new graphical interface, suitable for "browsing" on small screens. The mobile portal is built on the Entando Platform.&#xD;
&#xD;
The Mobile Portal is multi-languages: Italian, English.&#xD;
&#xD;
The Mobile Portal makes available the information most useful to users who surf the web being in the movement.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online la versione <a href="#!P;mobile_home!#">MOBILE</a> del portale di Villamarina disegnata con una nuova interfaccia grafica, adatta alla &ldquo;navigazione&rdquo; su schermi di dimensioni ridotte. Il Portale Mobile &egrave; stato realizzato con la piattaforma Entando.</p>
<p>
	Il Portale Mobile rende disponibile le informazioni che risultano maggiormente utili a chi naviga sul web stando in &ldquo;movimento&rdquo;.</p>
<p>
	Il Portale Mobile &egrave; disponibile in modalit&agrave; multilingua: italiano, inglese.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The <a href="#!P;mobile_home!#">MOBILE</a> portal version of Villamarina is OnLine. The Mobile Portal is designed with a new graphical interface, suitable for &quot;browsing&quot; on small screens. The mobile portal is built on the Entando Platform.</p>
<p>
	The Mobile Portal is multi-languages: Italian, English.</p>
<p>
	The Mobile Portal makes available the information most useful to users who surf the web being in the movement.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image"><resource resourcetype="Image" id="143" lang="en" /><text lang="it">Mobile</text><text lang="en">Mobile</text></attribute><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>9.0</version><lastEditor>admin</lastEditor><created>20091014175142</created><lastModified>20120405135855</lastModified></content>
', 'free', '9.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG54', 'CNG', 'Intro Mobile Decisions', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG54" typecode="CNG" typedescr="Generic content"><descr>Intro Mobile Decisions</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Delibere</text><text lang="en">Decisions</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione puoi trovare la lista delle delibere.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In this section you can find the list of Decisions.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20091015101844</created><lastModified>20120405141201</lastModified></content>
', '20091015101844', '20120405141201', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG54" typecode="CNG" typedescr="Generic content"><descr>Intro Mobile Decisions</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Delibere</text><text lang="en">Decisions</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione puoi trovare la lista delle delibere.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In this section you can find the list of Decisions.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20091015101844</created><lastModified>20120405141201</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG53', 'CNG', 'Intro Mobile News', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG53" typecode="CNG" typedescr="Generic content"><descr>Intro Mobile News</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Notizie</text><text lang="en">News</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione puoi trovare la lista delle notizie.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Here you can find the news list.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20091015101654</created><lastModified>20120405141651</lastModified></content>
', '20091015101654', '20120405141651', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG53" typecode="CNG" typedescr="Generic content"><descr>Intro Mobile News</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Notizie</text><text lang="en">News</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione puoi trovare la lista delle notizie.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Here you can find the news list.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20091015101654</created><lastModified>20120405141651</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG28', 'CNG', 'Intro Municipal Decisions', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG28" typecode="CNG" typedescr="Generic content"><descr>Intro Municipal Decisions</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Elenco delle Delibere di Giunta presenti nel portale del Comune</text><text lang="en">Municipal Decisions available in the portal</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext" /><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721191954</created><lastModified>20120405141915</lastModified></content>
', '20090721191954', '20120405141915', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG28" typecode="CNG" typedescr="Generic content"><descr>Intro Municipal Decisions</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Elenco delle Delibere di Giunta presenti nel portale del Comune</text><text lang="en">Municipal Decisions available in the portal</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="TextBody" attributetype="Hypertext" /><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721191954</created><lastModified>20120405141915</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG12', 'CNG', 'Intro News', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG12" typecode="CNG" typedescr="Generic content"><descr>Intro News</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Archivio Notizie</text><text lang="en">News Archive</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">In questa sezione sono pubblicate le notizie sul Comune di Villamarina, ordinate in base alla data di pubblicazione.</text><text lang="en">In this section are available News about Villamarina Municipality, sorted by publication date.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione&nbsp; sono pubblicate le notizie del <strong>Comune di Villamarina</strong>, ordinate in base alla data di pubblicazione.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In this section are&nbsp;available <strong>News</strong> about Villamarina Municipality, sorted by publication date.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090703113055</created><lastModified>20120405142311</lastModified></content>
', '20090703113055', '20120405142311', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG12" typecode="CNG" typedescr="Generic content"><descr>Intro News</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Archivio Notizie</text><text lang="en">News Archive</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">In questa sezione sono pubblicate le notizie sul Comune di Villamarina, ordinate in base alla data di pubblicazione.</text><text lang="en">In this section are available News about Villamarina Municipality, sorted by publication date.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	In questa sezione&nbsp; sono pubblicate le notizie del <strong>Comune di Villamarina</strong>, ordinate in base alla data di pubblicazione.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In this section are&nbsp;available <strong>News</strong> about Villamarina Municipality, sorted by publication date.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090703113055</created><lastModified>20120405142311</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('BND39', 'BND', 'Announcement for participation in Civil Service', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="BND39" typecode="BND" typedescr="Announcement"><descr>Announcement for participation in Civil Service</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per la partecipazione al Servizio Civile</text><text lang="en">Announcement for participation in Civil Service</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120501</date></attribute><attribute name="EndDate" attributetype="Date"><date>20121130</date></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara&nbsp;per la selezione di 10 volontari da impiegare in progetti di servizio civile nel Comune di Villamarina.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcement for the selection of 10 volunteers for civil service projects.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="38" lang="it" /><resource resourcetype="Attach" id="38" lang="en" /><text lang="it">Scarica il bando</text><text lang="en">Civil Service Announcement</text></attribute></list></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20090722125552</created><lastModified>20120405143517</lastModified></content>
', '20090722125552', '20120405143517', '<?xml version="1.0" encoding="UTF-8"?>
<content id="BND39" typecode="BND" typedescr="Announcement"><descr>Announcement for participation in Civil Service</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per la partecipazione al Servizio Civile</text><text lang="en">Announcement for participation in Civil Service</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120501</date></attribute><attribute name="EndDate" attributetype="Date"><date>20121130</date></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara&nbsp;per la selezione di 10 volontari da impiegare in progetti di servizio civile nel Comune di Villamarina.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcement for the selection of 10 volunteers for civil service projects.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="38" lang="it" /><resource resourcetype="Attach" id="38" lang="en" /><text lang="it">Scarica il bando</text><text lang="en">Civil Service Announcement</text></attribute></list></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20090722125552</created><lastModified>20120405143517</lastModified></content>
', 'free', '7.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('BND48', 'BND', 'Announcement for supply of stationery and accessories', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="BND48" typecode="BND" typedescr="Announcement"><descr>Announcement for supply of stationery and accessories</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per affidamento fornitura di cancelleria e accessori</text><text lang="en">Announcement for supply of stationery and accessories</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130228</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131027</date></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Affidamento della fornitura di cancelleria e accessori per stampanti, fotocopiatori e fax ad uso degli uffici e servizi comunali.</p>
<p>
	Appalto n. 4 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcements for the supply of stationery and accessories for printers, copiers and fax machines to use in Villamarina offices and services.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="47" lang="it" /><resource resourcetype="Attach" id="47" lang="en" /><text lang="it">Scarica il bando</text><text lang="en">Announcements for stationery supply</text></attribute></list></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20090722163604</created><lastModified>20120405143603</lastModified></content>
', '20090722163604', '20120405143603', '<?xml version="1.0" encoding="UTF-8"?>
<content id="BND48" typecode="BND" typedescr="Announcement"><descr>Announcement for supply of stationery and accessories</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per affidamento fornitura di cancelleria e accessori</text><text lang="en">Announcement for supply of stationery and accessories</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130228</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131027</date></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Affidamento della fornitura di cancelleria e accessori per stampanti, fotocopiatori e fax ad uso degli uffici e servizi comunali.</p>
<p>
	Appalto n. 4 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcements for the supply of stationery and accessories for printers, copiers and fax machines to use in Villamarina offices and services.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="47" lang="it" /><resource resourcetype="Attach" id="47" lang="en" /><text lang="it">Scarica il bando</text><text lang="en">Announcements for stationery supply</text></attribute></list></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20090722163604</created><lastModified>20120405143603</lastModified></content>
', 'free', '4.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DLB4', 'DLB', 'Decision 133', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLB4" typecode="DLB" typedescr="Decision"><descr>Decision 133</descr><groups mainGroup="free" /><categories><category id="delibere_di_giunta" /></categories><attributes><attribute name="Number" attributetype="Number"><number>133</number></attribute><attribute name="Date" attributetype="Date"><date>20110920</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Manutenzione straordinaria Istituto Nautico - Lavori per la realizzazione di laboratorio informatico.</text><text lang="en">Special maintenance of Nautical Institute.</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Manutenzione straordinaria Istituto Nautico. Lavori per la realizzazione di un laboratorio informatico nel primo piano dell&#39;istituto.</p>
<p>
	Approvazione progetto definitivo - esecutivo.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>
<p>
	Approval of final project.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="31" lang="it" /><resource resourcetype="Attach" id="31" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 133 del 20 Luglio 2011</text><text lang="en">Decision 133</text></attribute></list></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20090219164216</created><lastModified>20120405143718</lastModified></content>
', '20090219164216', '20120405143718', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLB4" typecode="DLB" typedescr="Decision"><descr>Decision 133</descr><groups mainGroup="free" /><categories><category id="delibere_di_giunta" /></categories><attributes><attribute name="Number" attributetype="Number"><number>133</number></attribute><attribute name="Date" attributetype="Date"><date>20110920</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Manutenzione straordinaria Istituto Nautico - Lavori per la realizzazione di laboratorio informatico.</text><text lang="en">Special maintenance of Nautical Institute.</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Manutenzione straordinaria Istituto Nautico. Lavori per la realizzazione di un laboratorio informatico nel primo piano dell&#39;istituto.</p>
<p>
	Approvazione progetto definitivo - esecutivo.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>
<p>
	Approval of final project.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="31" lang="it" /><resource resourcetype="Attach" id="31" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 133 del 20 Luglio 2011</text><text lang="en">Decision 133</text></attribute></list></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20090219164216</created><lastModified>20120405143718</lastModified></content>
', 'free', '7.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG18', 'CNG', 'Council', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG18" typecode="CNG" typedescr="Generic content"><descr>Council</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Giunta Comunale</text><text lang="en">Council</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">La Giunta del Comune è l''organo esecutivo composto dal Sindaco, che ne è anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</text><text lang="en">A Council is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	La <strong>Giunta comunale</strong> &egrave; l&#39;organo esecutivo composto dal Sindaco, che ne &egrave; anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</p>
<p>
	La Giunta comunale &egrave; responsabile dell&rsquo;<strong>attuazione delle linee programmatiche e degli indirizzi generali</strong> definiti nel piano di mandato, ossia nel documento con cui il Sindaco, all&rsquo;inizio del suo incarico quinquennale, presenta al Consiglio le linee programmatiche relative alle azioni e ai progetti da realizzare.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Council</strong> is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</p>
<p>
	A municipality is often referred to as simply the Council without any further attempt by the speaker at making a size or scale designation, as in Council house. It is assumed the listener will already know the specific meaning of the word without further guidance.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721113802</created><lastModified>20120405144110</lastModified></content>
', '20090721113802', '20120405144110', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG18" typecode="CNG" typedescr="Generic content"><descr>Council</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Giunta Comunale</text><text lang="en">Council</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">La Giunta del Comune è l''organo esecutivo composto dal Sindaco, che ne è anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</text><text lang="en">A Council is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	La <strong>Giunta comunale</strong> &egrave; l&#39;organo esecutivo composto dal Sindaco, che ne &egrave; anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</p>
<p>
	La Giunta comunale &egrave; responsabile dell&rsquo;<strong>attuazione delle linee programmatiche e degli indirizzi generali</strong> definiti nel piano di mandato, ossia nel documento con cui il Sindaco, all&rsquo;inizio del suo incarico quinquennale, presenta al Consiglio le linee programmatiche relative alle azioni e ai progetti da realizzare.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Council</strong> is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</p>
<p>
	A municipality is often referred to as simply the Council without any further attempt by the speaker at making a size or scale designation, as in Council house. It is assumed the listener will already know the specific meaning of the word without further guidance.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20090721113802</created><lastModified>20120405144110</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG173', 'CNG', 'Web Accessibility', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG173" typecode="CNG" typedescr="Generic content"><descr>Web Accessibility</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Accessibilità</text><text lang="en">Web Accessibility</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">eAccessibility indica la capacità di sistemi, servizi e applicazioni ICT di essere accessibili in maniera semplice da utenti con disabilità.&#xD;
&#xD;
In particolare, per accessibilità web si indica la capacità di un sito web di essere acceduto efficacemente in termini di navigazione, fruizione dei contenuti e dei servizi da tutti gli utenti senza nessuna esclusione.&#xD;
A tali linee guida, ma soprattutto al principio democratico dell''eParticipation e eAccessibility, si è ispirato il portale.</text><text lang="en">eAccessibility is the ease use by people with disabilities of information and communication technologies.&#xD;
&#xD;
More specifically, Web accessibility means that people with disabilities can perceive, understand, navigate, and interact with the Web, and that they can contribute to the Web. Web accessibility also benefits others, including older people with changing abilities due to aging.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	<strong>eAccessibility</strong> indica la capacit&agrave; di sistemi, servizi e applicazioni ICT di essere accessibili in maniera semplice da utenti con disabilit&agrave;.</p>
<p>
	In particolare, per accessibilit&agrave; web si indica la capacit&agrave; di un sito web di essere acceduto efficacemente in termini di navigazione, fruizione dei contenuti e dei servizi da tutti gli utenti senza nessuna esclusione.</p>
<p>
	Rendere un sito web accessibile significa permettere l&#39;accesso all&#39;informazione contenuta nel sito anche a persone con disabilit&agrave; di diverso tipo, anziani ma non solo : significa anche consentire a tutti di poter partecipare, gestire, condividere le proprie informazioni. A tal proposito il concetto di accessibilit&agrave; &egrave; legato fortemente a quello di usabilit&agrave;: &egrave; fondamentale che un utente sia capace di accedere ad un&#39;informazione in maniera semplice, efficace ed efficiente.</p>
<p>
	A tali linee guida, ma soprattutto al principio democratico dell&#39;<strong>eParticipation e eAccessibility</strong>, si &egrave; ispirato il portale.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	<strong>eAccessibility</strong> is the ease use by people with disabilities of information and communication technologies.</p>
<p>
	More specifically<strong>, Web accessibility </strong>means that people with disabilities can perceive, understand, navigate, and interact with the Web, and that they can contribute to the Web. Web accessibility also benefits others, including older people with changing abilities due to aging.</p>
<p>
	The Portal is compatible with <strong>accessibility international standards</strong> like WCAG 2.0 and specific governments laws allowing <strong>citizen eParticipation</strong>.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image"><resource resourcetype="Image" id="174" lang="en" /><text lang="it">Portale Villamarina</text><text lang="en">Villamarina Portal</text></attribute><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>8.0</version><lastEditor>admin</lastEditor><created>20110118173705</created><lastModified>20120405144230</lastModified></content>
', '20110118173705', '20120405144230', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG173" typecode="CNG" typedescr="Generic content"><descr>Web Accessibility</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Accessibilità</text><text lang="en">Web Accessibility</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">eAccessibility indica la capacità di sistemi, servizi e applicazioni ICT di essere accessibili in maniera semplice da utenti con disabilità.&#xD;
&#xD;
In particolare, per accessibilità web si indica la capacità di un sito web di essere acceduto efficacemente in termini di navigazione, fruizione dei contenuti e dei servizi da tutti gli utenti senza nessuna esclusione.&#xD;
A tali linee guida, ma soprattutto al principio democratico dell''eParticipation e eAccessibility, si è ispirato il portale.</text><text lang="en">eAccessibility is the ease use by people with disabilities of information and communication technologies.&#xD;
&#xD;
More specifically, Web accessibility means that people with disabilities can perceive, understand, navigate, and interact with the Web, and that they can contribute to the Web. Web accessibility also benefits others, including older people with changing abilities due to aging.</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	<strong>eAccessibility</strong> indica la capacit&agrave; di sistemi, servizi e applicazioni ICT di essere accessibili in maniera semplice da utenti con disabilit&agrave;.</p>
<p>
	In particolare, per accessibilit&agrave; web si indica la capacit&agrave; di un sito web di essere acceduto efficacemente in termini di navigazione, fruizione dei contenuti e dei servizi da tutti gli utenti senza nessuna esclusione.</p>
<p>
	Rendere un sito web accessibile significa permettere l&#39;accesso all&#39;informazione contenuta nel sito anche a persone con disabilit&agrave; di diverso tipo, anziani ma non solo : significa anche consentire a tutti di poter partecipare, gestire, condividere le proprie informazioni. A tal proposito il concetto di accessibilit&agrave; &egrave; legato fortemente a quello di usabilit&agrave;: &egrave; fondamentale che un utente sia capace di accedere ad un&#39;informazione in maniera semplice, efficace ed efficiente.</p>
<p>
	A tali linee guida, ma soprattutto al principio democratico dell&#39;<strong>eParticipation e eAccessibility</strong>, si &egrave; ispirato il portale.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	<strong>eAccessibility</strong> is the ease use by people with disabilities of information and communication technologies.</p>
<p>
	More specifically<strong>, Web accessibility </strong>means that people with disabilities can perceive, understand, navigate, and interact with the Web, and that they can contribute to the Web. Web accessibility also benefits others, including older people with changing abilities due to aging.</p>
<p>
	The Portal is compatible with <strong>accessibility international standards</strong> like WCAG 2.0 and specific governments laws allowing <strong>citizen eParticipation</strong>.</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image"><resource resourcetype="Image" id="174" lang="en" /><text lang="it">Portale Villamarina</text><text lang="en">Villamarina Portal</text></attribute><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>8.0</version><lastEditor>admin</lastEditor><created>20110118173705</created><lastModified>20120405144230</lastModified></content>
', 'free', '8.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG146', 'CNG', 'ePartecipation', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG146" typecode="CNG" typedescr="Generic content"><descr>ePartecipation</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">ePartecipation</text><text lang="en">ePartecipation</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Il paradigma del Web 2.0 introduce le basi per una nuova modalità di partecipazione alla vita pubblica e di collaborazione tra gli utenti del web.&#xD;
&#xD;
Gli strumenti di e-Participation e e-Collaboration diventano il mezzo attraverso cui rafforzare il grado di coinvolgimento dei cittadini e di interazione tra gli utenti anche nelle fasi che concorrono a determinare i processi decisionali della vita sociale.</text><text lang="en">Participation has become a highly political issue over the last few years, and that eParticipation is seen as a major factor in this development.&#xD;
&#xD;
eParticipation is about reconnecting ordinary people with politics and policy-making and making the decision-making processes easier to understand and follow through the use of new Information and Communication Technologies (ICTs).</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il paradigma del Web 2.0 introduce le basi per una nuova modalit&agrave; di partecipazione alla vita pubblica e di collaborazione tra gli utenti del web.</p>
<p>
	Gli strumenti di e-Participation e e-Collaboration diventano il mezzo attraverso cui rafforzare il grado di coinvolgimento dei cittadini e di interazione tra gli utenti anche nelle fasi che concorrono a determinare i processi decisionali della vita sociale.</p>
<p>
	Il portale implementa il paradigma di partecipazione e collaborazione alla conoscenza e alla condivisione delle informazioni attraverso strumenti fortemente interattivi e accessibili. La piattaforma Entando &nbsp;consente inoltre di erogare i servizi secondo una logica multicanale e multi-dispositivo e facilitare l&rsquo;accesso ai dati e alle informazioni.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Participation has become a highly political issue over the last few years, and that eParticipation is seen as a major factor in this development.</p>
<p>
	eParticipation is about reconnecting ordinary people with politics and policy-making and making the decision-making processes easier to understand and follow through the use of new Information and Communication Technologies (ICTs).</p>
<p>
	The portal implements the paradigm of participation and collaboration to knowledge and information sharing through highly interactive and accessible services.</p>
<p>
	&nbsp;</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20110119121846</created><lastModified>20120405165554</lastModified></content>
', '20110119121846', '20120405165554', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG146" typecode="CNG" typedescr="Generic content"><descr>ePartecipation</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">ePartecipation</text><text lang="en">ePartecipation</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Il paradigma del Web 2.0 introduce le basi per una nuova modalità di partecipazione alla vita pubblica e di collaborazione tra gli utenti del web.&#xD;
&#xD;
Gli strumenti di e-Participation e e-Collaboration diventano il mezzo attraverso cui rafforzare il grado di coinvolgimento dei cittadini e di interazione tra gli utenti anche nelle fasi che concorrono a determinare i processi decisionali della vita sociale.</text><text lang="en">Participation has become a highly political issue over the last few years, and that eParticipation is seen as a major factor in this development.&#xD;
&#xD;
eParticipation is about reconnecting ordinary people with politics and policy-making and making the decision-making processes easier to understand and follow through the use of new Information and Communication Technologies (ICTs).</text></attribute><attribute name="TextBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il paradigma del Web 2.0 introduce le basi per una nuova modalit&agrave; di partecipazione alla vita pubblica e di collaborazione tra gli utenti del web.</p>
<p>
	Gli strumenti di e-Participation e e-Collaboration diventano il mezzo attraverso cui rafforzare il grado di coinvolgimento dei cittadini e di interazione tra gli utenti anche nelle fasi che concorrono a determinare i processi decisionali della vita sociale.</p>
<p>
	Il portale implementa il paradigma di partecipazione e collaborazione alla conoscenza e alla condivisione delle informazioni attraverso strumenti fortemente interattivi e accessibili. La piattaforma Entando &nbsp;consente inoltre di erogare i servizi secondo una logica multicanale e multi-dispositivo e facilitare l&rsquo;accesso ai dati e alle informazioni.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Participation has become a highly political issue over the last few years, and that eParticipation is seen as a major factor in this development.</p>
<p>
	eParticipation is about reconnecting ordinary people with politics and policy-making and making the decision-making processes easier to understand and follow through the use of new Information and Communication Technologies (ICTs).</p>
<p>
	The portal implements the paradigm of participation and collaboration to knowledge and information sharing through highly interactive and accessible services.</p>
<p>
	&nbsp;</p>
]]></hypertext></attribute><attribute name="Image_1" attributetype="Image" /><attribute name="Image_2" attributetype="Image" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>admin</lastEditor><created>20110119121846</created><lastModified>20120405165554</lastModified></content>
', 'free', '4.0', 'admin');


--
-- PostgreSQL database dump complete
--

