package org.lanqiao.dao;

import org.lanqiao.domain.Manager;

import java.sql.SQLException;
import java.util.List;

public interface ManagerDao {
    public Manager selectManager(String username) throws SQLException;
    public void addUser(String username, String password, String email, String tel, String address, String registtime) throws SQLException;
    public List<Manager> getAll() throws SQLException;
}
