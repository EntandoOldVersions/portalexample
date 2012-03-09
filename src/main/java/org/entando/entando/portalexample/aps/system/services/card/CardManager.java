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
package org.entando.entando.portalexample.aps.system.services.card;

import java.util.List;
import java.util.Properties;

import org.entando.entando.aps.system.services.api.IApiErrorCodes;
import org.entando.entando.aps.system.services.api.model.ApiException;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.aps.system.common.AbstractService;
import com.agiletec.aps.system.exception.ApsSystemException;

/**
 * Servizio gestore delle schede.
 * @author E.Mezzano - E.Santoboni
 */
public class CardManager extends AbstractService implements ICardManager {
    
    public void init() throws Exception {
        ApsSystemUtils.getLogger().config(this.getClass().getName() + ": initialized ");
    }
    
    public List<Card> getCardsForApi(Properties properties) throws Throwable {
        String holder = properties.getProperty("holder");
        return this.searchCards(holder);
    }
    
    public Card getCardForApi(Properties properties) throws Throwable {
        String idString = properties.getProperty("id");
        int id = 0;
        try {
            id = Integer.parseInt(idString);
        } catch (NumberFormatException e) {
            throw new ApiException(IApiErrorCodes.API_PARAMETER_VALIDATION_ERROR, "Invalid number format for 'id' parameter - '" + idString + "'");
        }
        Card card = this.getCard(id);
        if (null == card) {
            throw new ApiException(IApiErrorCodes.API_VALIDATION_ERROR, "Card with id '" + idString + "' does not exist");
        }
        return card;
    }
    
    public List<Card> getCards() throws ApsSystemException {
        List<Card> cards = null;
        try {
            cards = this.getCardDAO().loadCards();
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "getCards");
            throw new ApsSystemException("Error loading cards", t);
        }
        return cards;
    }

    public List<Card> searchCards(String holder) throws ApsSystemException {
        List<Card> cards = null;
        try {
            cards = this.getCardDAO().searchCards(holder);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "searchCards");
            throw new ApsSystemException("Error searching cards", t);
        }
        return cards;
    }

    public Card getCard(Integer id) throws ApsSystemException {
        Card card = null;
        try {
            card = this.getCardDAO().loadCard(id);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "getCard");
            throw new ApsSystemException("Error searching card by id " + id, t);
        }
        return card;
    }
    
    public void addCardForApi(Card card) throws ApiException, ApsSystemException {
        if (null != this.getCard(card.getId())) {
            throw new ApiException(IApiErrorCodes.API_VALIDATION_ERROR, "Card with id " + card.getId() + " already exists");
        }
        this.addCard(card);
    }
    
    public void addCard(Card card) throws ApsSystemException {
        try {
            this.getCardDAO().addCard(card);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "addCard");
            throw new ApsSystemException("Error adding card", t);
        }
    }
    
    public void updateCardForApi(Card card) throws ApiException, ApsSystemException {
        if (null == this.getCard(card.getId())) {
            throw new ApiException(IApiErrorCodes.API_VALIDATION_ERROR, "Card with id " + card.getId() + " does not exist");
        }
        this.updateCard(card);
    }
    
    public void updateCard(Card card) throws ApsSystemException {
        try {
            this.getCardDAO().updateCard(card);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "updateCard");
            throw new ApsSystemException("Error updating card", t);
        }
    }
    
    public void deleteCardForApi(Properties properties) throws Throwable {
        String id = properties.getProperty("id");
        int idInteger = 0;
        try {
            idInteger = Integer.parseInt(id);
        } catch (NumberFormatException e) {
            throw new ApiException(IApiErrorCodes.API_PARAMETER_VALIDATION_ERROR, "Invalid number format for 'id' parameter - '" + id + "'");
        }
        this.deleteCard(idInteger);
    }
    
    public void deleteCard(Integer id) throws ApsSystemException {
        try {
            this.getCardDAO().deleteCard(id);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "deleteCard");
            throw new ApsSystemException("Error deleting card by id " + id, t);
        }
    }
    
    /**
     * Restituisce il dao delle schede.
     * @return Il dao delle schede.
     */
    protected ICardDAO getCardDAO() {
        return _cardDAO;
    }

    /**
     * Imposta il dao delle schede.
     * @param cardDAO Il dao delle schede.
     */
    public void setCardDAO(ICardDAO cardDAO) {
        this._cardDAO = cardDAO;
    }
    
    private ICardDAO _cardDAO;
	
}