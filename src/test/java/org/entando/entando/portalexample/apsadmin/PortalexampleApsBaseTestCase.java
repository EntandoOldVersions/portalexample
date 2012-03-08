/*
*
* Copyright 2005 AgileTec s.r.l. (http://www.agiletec.it) All rights reserved.
*
* This file is part of jAPS software.
* jAPS is a free software; 
* you can redistribute it and/or modify it
* under the terms of the GNU General Public License (GPL) as published by the Free Software Foundation; version 2.
* 
* See the file License for the specific language governing permissions   
* and limitations under the License
* 
* 
* 
* Copyright 2005 AgileTec s.r.l. (http://www.agiletec.it) All rights reserved.
*
*/
package org.entando.entando.portalexample.apsadmin;

import com.agiletec.ConfigTestUtils;
import com.agiletec.apsadmin.ApsAdminBaseTestCase;
import java.util.Properties;
import org.entando.entando.portalexample.PortalexampleConfigUtils;

/**
 * @author E.Santoboni
 */
public class PortalexampleApsBaseTestCase extends ApsAdminBaseTestCase {
    
    @Override
    protected ConfigTestUtils getConfigUtils() {
        return new PortalexampleConfigUtils();
    }
    
    @Override
    protected void setInitParameters(Properties params) {
        params.setProperty("config", 
            "struts-default.xml," +
            "struts-plugin.xml," +
            "struts.xml," +
            "japs-struts-plugin.xml," +
            "portalexample-struts-plugin.xml");
    }
    
}
