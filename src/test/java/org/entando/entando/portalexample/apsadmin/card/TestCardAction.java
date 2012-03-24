/*
*
* Copyright 2012 Entando s.r.l. (http://www.entando.com) All rights reserved.
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
* Copyright 2012 Entando s.r.l. (http://www.entando.com) All rights reserved.
*
*/
package org.entando.entando.portalexample.apsadmin.card;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.agiletec.aps.util.DateConverter;
import com.agiletec.apsadmin.system.ApsAdminSystemConstants;
import com.opensymphony.xwork2.Action;
import org.entando.entando.portalexample.aps.system.DemoSystemConstants;
import org.entando.entando.portalexample.aps.system.services.card.Card;
import org.entando.entando.portalexample.aps.system.services.card.ICardManager;
import org.entando.entando.portalexample.apsadmin.PortalexampleApsBaseTestCase;

/**
 * @author E.Santoboni
 */
public class TestCardAction extends PortalexampleApsBaseTestCase {
	
	public void testNewCard() throws Throwable {
		this.setUserOnSession("admin");
		this.initAction("/do/Card", "new");
		String result = this.executeAction();
		assertEquals(Action.SUCCESS, result);
		CardAction action = (CardAction) this.getAction();
		assertEquals(ApsAdminSystemConstants.ADD, action.getStrutsAction());
	}
	
	public void testEditCard() throws Throwable {
		this.setUserOnSession("admin");
		this.initAction("/do/Card", "edit");
		this.addParameter("id", "3");
		String result = this.executeAction();
		assertEquals(Action.SUCCESS, result);
		CardAction action = (CardAction) this.getAction();
		assertEquals(ApsAdminSystemConstants.EDIT, action.getStrutsAction());
		assertEquals("Verdi Nicola", action.getHolder());
		assertEquals("Fair", action.getDescr());
		assertNull(action.getNote());
		assertEquals("25/01/2011", DateConverter.getFormattedDate(action.getDate(), "dd/MM/yyyy"));
	}
	
	public void testFailureSaveCard() throws Throwable {
		this.setUserOnSession("admin");
		this.initAction("/do/Card", "save");
		this.addParameter("strutsAction", String.valueOf(ApsAdminSystemConstants.ADD));
		this.addParameter("holder", "Darth Vader");
		this.addParameter("descr", "");
		this.addParameter("note", "Darth Vader is the iconic American film villain of George Lucas' award-winning science fiction saga Star Wars");
		this.addParameter("date", "wrongFormat");
		String result = this.executeAction();
		assertEquals(Action.INPUT, result);
		Map<String, List<String>> fieldErrors = this.getAction().getFieldErrors();
		assertEquals(2, fieldErrors.size());
		assertEquals(1, fieldErrors.get("descr").size());
		assertEquals(1, fieldErrors.get("date").size());
	}
	
	public void testSuccessSaveCard() throws Throwable {
		this.setUserOnSession("admin");
		this.initAction("/do/Card", "save");
		this.addParameter("strutsAction", String.valueOf(ApsAdminSystemConstants.ADD));
		this.addParameter("holder", "Darth Vader");
		this.addParameter("descr", "Dark Lord of the Sith");
		this.addParameter("note", "Darth Vader is the iconic American film villain of George Lucas' award-winning science fiction saga Star Wars");
		this.addParameter("date", "25/04/1978");
		String result = this.executeAction();
		assertEquals(Action.SUCCESS, result);
		
		ICardManager cardManager = (ICardManager) this.getService(DemoSystemConstants.CARD_MANAGER);
		List<Card> cards = cardManager.searchCards("Darth Vader");
		assertEquals(1, cards.size());
		cardManager.deleteCard(cards.get(0).getId());
		
		cards = cardManager.searchCards("Darth Vader");
		assertEquals(0, cards.size());
	}
	
	public void testDeleteCard() throws Throwable {
		Card newCard = new Card();
		newCard.setHolder("Goofy Goof");
		newCard.setDescr("I'm Mickey Mouse's best friend");
		newCard.setDate(new Date());
		newCard.setNote("Annotations");
		ICardManager cardManager = (ICardManager) this.getService(DemoSystemConstants.CARD_MANAGER);
		try {
			cardManager.addCard(newCard);
			List<Card> cards = cardManager.searchCards("Goofy");
			assertEquals(1, cards.size());
			Card card = cards.get(0);
			assertEquals("Goofy Goof", card.getHolder());
			int id = card.getId();
			this.setUserOnSession("admin");
			this.initAction("/do/Card", "delete");
			this.addParameter("id", String.valueOf(id));
			String result = this.executeAction();
			assertEquals(Action.SUCCESS, result);
			cards = cardManager.searchCards("Goofy");
			assertEquals(0, cards.size());
		} catch (Throwable t) {
			List<Card> cards = cardManager.searchCards("Goofy");
			if (cards.size()==1) {
				Card card = cards.get(0);
				cardManager.deleteCard(card.getId());
				assertNull(cardManager.getCard(card.getId()));
			}
			throw t;
		}
	}
	
}
