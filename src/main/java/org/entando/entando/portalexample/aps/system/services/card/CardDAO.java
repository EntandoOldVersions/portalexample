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

import com.agiletec.aps.system.common.AbstractSearcherDAO;
import com.agiletec.aps.system.common.FieldSearchFilter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

/**
 * @author E.Santoboni
 */
public class CardDAO extends AbstractSearcherDAO implements ICardDAO {
	
	@Override
	public List<Card> loadCards() {
		return this.searchCards(null);
	}
	
	@Override
	public List<Card> searchCards(String holder) {
		List<Card> cards = new ArrayList<Card>();
		FieldSearchFilter filter = new FieldSearchFilter("holder");
		if (null != holder && holder.trim().length() > 0) {
			filter = new FieldSearchFilter("holder", holder, true);
		}
		filter.setOrder(FieldSearchFilter.ASC_ORDER);
		FieldSearchFilter[] filters = {filter};
		List<String> ids = super.searchId(filters);
		for (int i = 0; i < ids.size(); i++) {
			String id = ids.get(i);
			Card card = this.loadCard(Integer.parseInt(id));
			cards.add(card);
		}
		return cards;
	}
	
	@Override
	public Card loadCard(Integer id) {
		Connection conn = null;
		Card card = null;
		PreparedStatement stat = null;
		ResultSet res = null;
		try {
			conn = this.getConnection();
			stat = conn.prepareStatement(SELECT);
			stat.setInt(1, id);
			res = stat.executeQuery();
			if (res.next()) {
				card = new Card();
				card.setId(id);
				//id, holder, description, date, note
				card.setHolder(res.getString(2));
				card.setDescr(res.getString(3));
				card.setDate(res.getDate(4));
				card.setNote(res.getString(5));
			}
		} catch (Throwable t) {
			processDaoException(t, "Error loading card by id " + id, "loadCard");
		} finally {
			closeDaoResources(res, stat, conn);
		}
		return card;
	}
	
	@Override
	public void addCard(Card card) {
		Connection conn = null;
		PreparedStatement stat = null;
		try {
			conn = this.getConnection();
			conn.setAutoCommit(false);
			stat = conn.prepareStatement(INSERT);
			//id, holder, description, date, note
			stat.setInt(1, card.getId());
			stat.setString(2, card.getHolder());
			stat.setString(3, card.getDescr());
			if (null != card.getDate()) {
				stat.setDate(4, new java.sql.Date(card.getDate().getTime()));
			} else {
				stat.setNull(4, Types.DATE);
			}
			stat.setString(5, card.getNote());
			stat.executeUpdate();
			conn.commit();
		} catch (Throwable t) {
			this.executeRollback(conn);
			processDaoException(t, "Error adding new card", "addCard");
		} finally {
			closeDaoResources(null, stat, conn);
		}
	}
	
	@Override
	public void updateCard(Card card) {
		Connection conn = null;
		PreparedStatement stat = null;
		try {
			conn = this.getConnection();
			conn.setAutoCommit(false);
			stat = conn.prepareStatement(UPDATE);
			//id, holder, description, date, note
			stat.setString(1, card.getHolder());
			stat.setString(2, card.getDescr());
			if (null != card.getDate()) {
				stat.setDate(3, new java.sql.Date(card.getDate().getTime()));
			} else {
				stat.setNull(3, Types.DATE);
			}
			stat.setString(4, card.getNote());
			stat.setInt(5, card.getId());
			stat.executeUpdate();
			conn.commit();
		} catch (Throwable t) {
			this.executeRollback(conn);
			processDaoException(t, "Error updating a card", "updateCard");
		} finally {
			closeDaoResources(null, stat, conn);
		}
	}
	
	@Override
	public void deleteCard(Integer id) {
		Connection conn = null;
		PreparedStatement stat = null;
		try {
			conn = this.getConnection();
			conn.setAutoCommit(false);
			stat = conn.prepareStatement(DELETE);
			stat.setInt(1, id);
			stat.executeUpdate();
			conn.commit();
		} catch (Throwable t) {
			this.executeRollback(conn);
			processDaoException(t, "Error deleting card", "deleteCard");
		} finally {
			closeDaoResources(null, stat, conn);
		}
	}
	
	@Override
	protected String getTableFieldName(String metadataFieldKey) {
		return metadataFieldKey;
	}
	
	@Override
	protected String getMasterTableName() {
		return "portalexample_cards";
	}
	
	@Override
	protected String getMasterTableIdFieldName() {
		return "id";
	}
	
	@Override
	protected boolean isForceCaseInsensitiveLikeSearch() {
		return true;
	}
	
	private static final String SELECT = 
			"SELECT id, holder, description, date, note FROM portalexample_cards  WHERE id = ?";
	
	private static final String INSERT = 
			"INSERT INTO portalexample_cards(id, holder, description, date, note) VALUES (?, ?, ?, ?, ?)";
	
	private static final String UPDATE = 
			"UPDATE portalexample_cards SET holder = ? , description = ? , date = ? , note = ? WHERE id = ?";
	
	private static final String DELETE = 
			"DELETE from portalexample_cards WHERE id = ?";
	
}