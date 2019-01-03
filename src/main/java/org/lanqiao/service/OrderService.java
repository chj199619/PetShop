package org.lanqiao.service;

import org.lanqiao.domain.Order;

import java.util.List;

public interface OrderService {
    public List<Order> findAll();
    public int getTotalPage();
    public List<Order> findPage(int startIndex, int pageSize);
}
