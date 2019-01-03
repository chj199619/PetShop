package org.lanqiao.dao;

import org.lanqiao.domain.Car;

import java.sql.SQLException;
import java.util.List;

public interface CarDao {
    public List<Car> findAll() throws SQLException;
    //增加
    public void addCar(Car car) throws SQLException;
    //删除
    public void deleteCar(String name) throws SQLException;
    //id
    public Car car(String name) throws SQLException;
    //数量修改
    public void update(Car car) throws SQLException;
    //总价格
    public double totalCaes(String name) throws SQLException;
}
