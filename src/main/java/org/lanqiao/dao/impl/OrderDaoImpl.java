package org.lanqiao.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import org.lanqiao.dao.OrderDao;
import org.lanqiao.domain.Order;
import org.lanqiao.utils.jdbcUtils;

import java.sql.SQLException;
import java.util.List;

public class OrderDaoImpl implements OrderDao {
    @Override
    public List<Order> getAll() throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "select * from orders";
        List<Order> orderList = qr.query(sql,new BeanListHandler<>(Order.class));
        return orderList;
    }

    @Override
    public int gettotalNum() throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "select count(*) from orders";
        Long num = qr.query(sql,new ScalarHandler<>(1));
        return num.intValue();
    }

    @Override
    public List<Order> getPage(int startIndex, int pageSize) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "select * from orders limit ?,?";
        return qr.query(sql,new BeanListHandler<>(Order.class),startIndex,pageSize);
    }
}
