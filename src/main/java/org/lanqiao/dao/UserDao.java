package org.lanqiao.dao;

import org.lanqiao.domain.User;

import java.sql.SQLException;
import java.util.List;

public interface UserDao {
    //登陆注册
    public User selectUser(String username) throws SQLException;
    public void addUser(String username, String password, String email, String tel, String address, String registtime) throws SQLException;
    //前端服务
    public List<User> getAll() throws SQLException;
    public  void addUser(User user);
    public void deleteUser(int userid) throws SQLException;
    public void updateUser(User user) throws SQLException;
    public User selectUserById(int userid) throws SQLException;
    public List<User> selectUserByNo(String username) throws SQLException;
}
