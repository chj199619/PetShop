package org.lanqiao.service;

import org.lanqiao.domain.User;

import java.sql.SQLException;
import java.util.List;

public interface UserService {
    public  List<User> findAll();
    public void removeUser(int userid) throws SQLException;
    public void modifyEmp(User user) throws SQLException;
    public List<User> findUserByNo(String username) throws SQLException;
    public User findUserByNo(int userid) throws SQLException;

}
