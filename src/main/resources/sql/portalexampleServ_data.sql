INSERT INTO authgroups (groupname, descr) VALUES ('administrators', 'Administrators');
INSERT INTO authgroups (groupname, descr) VALUES ('free', 'Free Access');


INSERT INTO authpermissions (permissionname, descr) VALUES ('superuser', 'All functions');
INSERT INTO authpermissions (permissionname, descr) VALUES ('validateContents', 'Supervision of contents');
INSERT INTO authpermissions (permissionname, descr) VALUES ('manageResources', 'Operations on Resources');
INSERT INTO authpermissions (permissionname, descr) VALUES ('managePages', 'Operations on Pages');
INSERT INTO authpermissions (permissionname, descr) VALUES ('enterBackend', 'Access to Administration Area');
INSERT INTO authpermissions (permissionname, descr) VALUES ('manageCategories', 'Operations on Categories');
INSERT INTO authpermissions (permissionname, descr) VALUES ('editContents', 'Content Editing');


INSERT INTO authroles (rolename, descr) VALUES ('admin', 'Administrator');


INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('admin', 'superuser');


INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('admin', 'adminadmin', '2008-10-10 00:00:00', '2013-03-14 00:00:00', NULL, 1);


INSERT INTO authusergroups (username, groupname) VALUES ('admin', 'administrators');


INSERT INTO authuserroles (username, rolename) VALUES ('admin', 'admin');


INSERT INTO authusershortcuts (username, config) VALUES ('admin', '<?xml version="1.0" encoding="UTF-8"?>
<shortcuts>
	<box pos="0">core.component.user.list</box>
	<box pos="1">core.component.labels.list</box>
	<box pos="2">core.tools.setting</box>
	<box pos="3">core.tools.entities</box>
	<box pos="4">jacms.content.new</box>
	<box pos="5">jacms.content.list</box>
	<box pos="6">jacms.contentType</box>
	<box pos="7">core.portal.pageTree</box>
	<box pos="8">core.portal.widgetType</box>
</shortcuts>

');


INSERT INTO portalexample_cards (id, holder, description, date, note) VALUES (2, 'Rossi Carla', 'Fair', '2012-12-20 00:00:00', NULL);
INSERT INTO portalexample_cards (id, holder, description, date, note) VALUES (3, 'Verdi Nicola', 'Fair', '2011-01-25 00:00:00', 'Lorem ipsum.');
INSERT INTO portalexample_cards (id, holder, description, date, note) VALUES (4, 'Verdi Anna', 'Old Town', '2010-11-05 00:00:00', 'Lorem ipsum.');
INSERT INTO portalexample_cards (id, holder, description, date, note) VALUES (1, 'Bianchi Marco', 'Old Town', '2010-10-20 00:00:00', 'Lorem ipsum.');
