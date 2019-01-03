package org.lanqiao.service.impl;

import org.lanqiao.dao.DealDao;

import org.lanqiao.dao.impl.DealImpl;
import org.lanqiao.domain.Deal;
import org.lanqiao.service.DealServiceDao;

import java.sql.SQLException;
import java.util.List;

public class DealServiceImppl implements DealServiceDao {
    DealDao dao = new DealImpl();
    @Override
    public List<Deal> getAll() throws SQLException {
        return  dao.findAll();

    }

    @Override
    public Deal getById(String name) throws SQLException {
        return dao.findById(name);
    }

    @Override
    public void remove(int id) throws SQLException {
        dao.delete(id);
    }

    @Override
    public void updateDeal(Deal deal) throws SQLException {
        dao.update(deal);
    }

    @Override
    public List<Deal> findLikeName(String name) throws SQLException {
        return dao.findByLike(name);
    }

    @Override
    public void add(Deal deal) throws SQLException {
        dao.insertDeal(deal);
    }
}
