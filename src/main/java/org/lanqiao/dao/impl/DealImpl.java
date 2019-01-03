package org.lanqiao.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.lanqiao.dao.DealDao;
import org.lanqiao.domain.Deal;
import org.lanqiao.utils.jdbcUtils;

import java.sql.SQLException;
import java.util.List;

public class DealImpl implements DealDao {
    QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
    @Override
    public List<Deal> findAll() throws SQLException {
        String sql = "select * from deal";
        List<Deal> deals = qr.query(sql,new BeanListHandler<>(Deal.class));
        return deals;
    }

    @Override
    public Deal findById(String name) throws SQLException {
        String sql = "select * from deal where name=?";
        return qr.query(sql,new BeanHandler<>(Deal.class),name);
    }

    @Override
    public void delete(int id) throws SQLException {
        String sql = "delete from deal where id = ?";
        qr.update(sql,id);
    }

    @Override
    public void update(Deal deal) throws SQLException {
        String sql = "update deal set conditions=? where id=?";
        qr.update(sql,deal.getConditions(),deal.getId());
    }

    @Override
    public List<Deal> findByLike(String name) throws SQLException {
        String sql = "select * from deal where name like ?";
        List<Deal> dealList = qr.query(sql,new BeanListHandler<>(Deal.class), "%" + name + "%");
        return dealList;
    }

    @Override
    public void insertDeal(Deal deal) throws SQLException {
        String sql = "insert into deal (name,total,time,conditions)values(?,?,?,?)";
        qr.update(sql,deal.getName(),deal.getTotal(),deal.getTime(),deal.getConditions());
    }
}
