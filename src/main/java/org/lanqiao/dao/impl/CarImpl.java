package org.lanqiao.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.lanqiao.dao.CarDao;
import org.lanqiao.domain.Car;
import org.lanqiao.utils.jdbcUtils;

import java.sql.SQLException;
import java.util.List;

public class CarImpl implements CarDao {
    @Override
    public List<Car> findAll() throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "select * from orders";
        return qr.query(sql,new BeanListHandler<>(Car.class));
    }

    @Override
    public void addCar(Car car) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "insert into orders (petName,price,num,total,img) values(?,?,?,?,?)";
        qr.update(sql,car.getPetName(),car.getPrice(),car.getNum(),car.getTotal(),car.getImg());
    }

    @Override
    public void deleteCar(String name) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "delete from orders where petName=?";
        qr.update(sql,name);
    }

    @Override
    public Car car(String name) throws SQLException {
        String sql = "select * from orders where petName=?";
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        return qr.query(sql,new BeanHandler<>(Car.class),name);

    }

    @Override
    public void update(Car car) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "update orders  set num =?,total=? where petName = ?";
        qr.update(sql,car.getNum(),car.getTotalMoney(),car.getPetName());
    }

    @Override
    public double totalCaes(String name) throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "select total from orders where petName = ?";
        Car car =qr.query(sql,new BeanHandler<>(Car.class),name);
        return car.getTotalMoney();

    }
}
