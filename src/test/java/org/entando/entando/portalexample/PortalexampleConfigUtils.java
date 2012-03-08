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
package org.entando.entando.portalexample;

import com.agiletec.ConfigTestUtils;

/**
 * @author E.Santoboni
 */
public class PortalexampleConfigUtils extends ConfigTestUtils {
    
    @Override
    protected String[] getSpringConfigFilePaths() {
    	String[] filePaths = new String[7];
        filePaths[0] = "classpath:spring/systemConfig.xml";
        filePaths[1] = "classpath*:spring/aps/managers/**/**.xml";
        filePaths[2] = "classpath*:spring/apsadmin/**/**.xml";
        filePaths[3] = "classpath:spring/plugins/**/aps/**/**.xml";
        filePaths[4] = "classpath:spring/plugins/**/apsadmin/**/**.xml";
        filePaths[5] = "classpath:spring/portalexample/aps/**/**.xml";
	filePaths[6] = "classpath:spring/portalexample/apsadmin/**/**.xml";
        return filePaths;
    }
    
}
