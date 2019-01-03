package org.lanqiao.service.impl;

import org.lanqiao.dao.CarDao;

import org.lanqiao.dao.impl.CarImpl;
import org.lanqiao.domain.Car;
import org.lanqiao.service.CarServiceDao;

import java.sql.SQLException;
import java.util.List;

public class CarServiceImpl implements CarServiceDao {
    CarDao dao = null;
    public CarServiceImpl(){
         dao = new CarImpl();
    }

    @Override
    public List<Car> getAll() throws SQLException {
        return dao.findAll();
    }

    @Override
    public void insertCar(Car car) throws SQLException {
        dao.addCar(car);
    }

    @Override
    public void updateNum(Car car) throws SQLException {
        dao.update(car);
    }

    @Override
    public Car findByName(String name) throws SQLException {

        return dao.car(name);
    }

    @Override
    public void deletePet(String name) throws SQLException {
        dao.deleteCar(name);
    }

    @Override
    public double totalPrice(String name) throws SQLException {
        return dao.totalCaes(name);
    }
}
