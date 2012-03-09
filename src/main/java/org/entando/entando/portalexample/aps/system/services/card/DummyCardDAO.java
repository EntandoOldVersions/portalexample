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

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.beanutils.BeanComparator;

import com.agiletec.aps.system.common.AbstractDAO;
import com.agiletec.aps.util.DateConverter;

/**
 * Classe DAO fasulla per simulare la presenza di un DB. 
 * Estende la classe AbstractDAO pur non eseguendo operazioni su DB ma operando esclusivamente su una List di Card popolata nel costruttore della classe.
 * @author E.Santoboni - E.Mezzano
 */
public class DummyCardDAO extends AbstractDAO implements ICardDAO {
	
    /**
     * Costruttore implementato per popolare una List iniziale di card per simulare un Database
     */
    public DummyCardDAO() {
        this._cards = new ArrayList<Card>();
        this._cards.add(this.createCard(1, "Bianchi Marco", "Old Town", "20/10/2010", null));
        this._cards.add(this.createCard(2, "Rossi Carla", "Fair", "20/12/2010", null));
        this._cards.add(this.createCard(3, "Verdi Nicola", "Fair", "25/01/2011", null));
        this._cards.add(this.createCard(4, "Verdi Anna", "Old Town", "05/11/2010", null));
    }

    /**
     * Metodo di utilità per la creazione di una scheda.
     * @param id L'identificativo della scheda.
     * @param holder Il titolare della scheda.
     * @param descr La descrizione della scheda.
     * @param date La data di rilascio della scheda.
     * @param note Le note della scheda.
     * @return Una nuova scheda popolata con i parametri.
     */
    private Card createCard(Integer id, String holder, String descr, String date, String note) {
        Card card = new Card();
        card.setId(id);
        card.setHolder(holder);
        card.setDescr(descr);
        card.setDate(DateConverter.parseDate(date, "dd/MM/yyyy"));
        card.setNote(note);
        return card;
    }

    public List<Card> loadCards() {
        return this.searchCards(null);
    }
    
    public List<Card> searchCards(String holder) {
        List<Card> foundCards = new ArrayList<Card>();
        if (holder == null || holder.length() == 0) {
            foundCards = this._cards;
        } else {
            Iterator<Card> cardsIter = this._cards.iterator();
            while (cardsIter.hasNext()) {
                Card card = (Card) cardsIter.next();
                String currentHolder = card.getHolder();
                if (currentHolder.toLowerCase().contains(holder.toLowerCase())) {
                    foundCards.add(card);
                }
            }
        }
        BeanComparator comparator = new BeanComparator("holder");
        Collections.sort(foundCards, comparator);
        return foundCards;
    }
    
    public Card loadCard(Integer id) {
        if (id == null) return null;
        Iterator<Card> cardsIter = this._cards.iterator();
        while (cardsIter.hasNext()) {
            Card card = (Card) cardsIter.next();
            if (id.equals(card.getId())) {
                return card;
            }
        }
        return null;
    }
    
    public void addCard(Card card) {
        if (null == card.getId() || card.getId() == 0 || null != this.loadCard(card.getId())) {
            int nextId = this.getNextId();
            card.setId(nextId);
        }
        this._cards.add(card);
    }
    
    public void updateCard(Card card) {
        if (null == card.getId()) return;
        Integer id = card.getId();
        for (int i = 0; i < this._cards.size(); i++) {
            Card currentCard = this._cards.get(i);
            if (id.equals(currentCard.getId())) {
                this._cards.remove(currentCard);
                this._cards.add(card);
                return;
            }
        }
    }
    
    public void deleteCard(Integer id) {
        if (id == null) return;
        for (int i = 0; i < this._cards.size(); i++) {
            Card currentCard = this._cards.get(i);
            if (id == currentCard.getId()) {
                this._cards.remove(currentCard);
                return;
            }
        }
    }

    /**
     * Metodo di utilità. Recupera il primo identificativo utile.
     * @return Il primo identificativo utile.
     */
    protected int getNextId() {
        int lastId = 0;
        for (int i = 0; i < this._cards.size(); i++) {
            Card currentCard = this._cards.get(i);
            int currentId = currentCard.getId();
            if (currentId > lastId) {
                lastId = currentId;
            }
        }
        return lastId + 1;
    }
    
    private List<Card> _cards;
    
}