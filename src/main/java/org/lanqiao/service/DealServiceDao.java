package org.lanqiao.service;

import org.lanqiao.domain.Deal;

import java.sql.SQLException;
import java.util.List;

public interface DealServiceDao {
    public List<Deal> getAll() throws SQLException;
    public Deal getById(String name) throws SQLException;
    public void remove(int id) throws SQLException;
    public void updateDeal(Deal deal) throws SQLException;
    public List<Deal> findLikeName(String name) throws SQLException;
    public void add (Deal deal) throws SQLException;
}
