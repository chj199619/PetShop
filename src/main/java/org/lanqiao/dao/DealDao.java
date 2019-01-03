package org.lanqiao.dao;

import org.lanqiao.domain.Deal;

import java.sql.SQLException;
import java.util.List;

public interface DealDao {
    public List<Deal> findAll() throws SQLException;
    public Deal findById(String name) throws SQLException;
    public void delete(int id) throws SQLException;
    public void update(Deal deal) throws SQLException;
    public List<Deal> findByLike(String name) throws SQLException;
    public void insertDeal(Deal deal) throws SQLException;
}
