package org.lanqiao.service.impl;

import org.lanqiao.dao.impl.OrderDaoImpl;
import org.lanqiao.dao.OrderDao;
import org.lanqiao.domain.Order;
import org.lanqiao.service.OrderService;

import java.sql.SQLException;
import java.util.List;

public class OrderServiceImpl implements OrderService {
    OrderDao dao = new OrderDaoImpl();
    @Override
    public List<Order> findAll() {
        List<Order> orderList = null;
        try {
            orderList =  dao.getAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderList;
    }

    @Override
    public int getTotalPage() {
        int total =0;
        try {
            total = dao.gettotalNum();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }

    @Override
    public List<Order> findPage(int startIndex, int pageSize) {
        List<Order> pagelist=null;
        try {
            pagelist = dao.getPage(startIndex,pageSize);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pagelist;
    }
}
