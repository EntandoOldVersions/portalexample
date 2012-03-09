/*
*
* Copyright 2012 Entando S.r.l. (http://www.entando.com) All rights reserved.
*
* This file is part of Entando software.
* Entando is a free software; 
* you can redistribute it and/or modify it
* under the terms of the GNU General Public License (GPL) as published by the Free Software Foundation; version 2.
* 
* See the file License for the specific language governing permissions   
* and limitations under the License
* 
* 
* 
* Copyright 2012 Entando S.r.l. (http://www.entando.com) All rights reserved.
*
*/
package org.entando.entando.portalexample.aps.system.services.card.api;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.entando.entando.aps.system.services.api.model.AbstractApiResponse;
import org.entando.entando.aps.system.services.api.model.AbstractApiResponseResult;
import org.entando.entando.aps.system.services.api.model.ListResponse;
import org.entando.entando.portalexample.aps.system.services.card.Card;

/**
 * @author E.Santoboni
 */
@XmlRootElement(name = "response")
public class CardResponse extends AbstractApiResponse {
    
    public void setResult(Object result, String html) {
        CardResponseResult responseResult = new CardResponseResult();
        responseResult.setMainResult(result);
        responseResult.setHtml(html);
        this._result = responseResult;
    }
    
    @XmlElement(name = "result", required = true)
    private CardResponseResult _result;
    
    public static class CardResponseResult extends AbstractApiResponseResult {
        
        @XmlElement(name = "item", required = false)
        public Card getResult() {
            if (this.getMainResult() instanceof Card) {
                return (Card) this.getMainResult();
            }
            return null;
        }
        
        public ListResponse<Card> getResults() {
            return null;
        }
        
    }
    
}