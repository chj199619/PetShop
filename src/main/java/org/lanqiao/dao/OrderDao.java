package org.lanqiao.dao;

import org.lanqiao.domain.Order;

import java.sql.SQLException;
import java.util.List;

public interface OrderDao {
    public List<Order> getAll() throws SQLException;
    public int gettotalNum() throws SQLException;
    public List<Order> getPage(int startIndex, int pageSize) throws SQLException;
}
