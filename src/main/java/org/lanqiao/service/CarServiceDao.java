package org.lanqiao.service;

import org.lanqiao.domain.Car;

import java.sql.SQLException;
import java.util.List;

public interface CarServiceDao {
    public List<Car> getAll() throws SQLException;
    public void insertCar(Car car) throws SQLException;
    public void updateNum(Car car) throws SQLException;
    public Car findByName(String name) throws SQLException;
    public void  deletePet(String name) throws SQLException;
    public double totalPrice(String name) throws SQLException;
}
