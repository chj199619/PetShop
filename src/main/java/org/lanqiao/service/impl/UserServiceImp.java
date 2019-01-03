package org.lanqiao.service.impl;

import org.lanqiao.dao.impl.UserDaoImp;
import org.lanqiao.dao.UserDao;
import org.lanqiao.domain.User;
import org.lanqiao.service.UserService;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImp implements UserService {
    private UserDao dao;

    public UserServiceImp() {
        dao = new UserDaoImp();
    }

    @Override
    public List<User> findAll() {
        List<User> userList = null;
        try {
            userList = dao.getAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public void removeUser(int userid) throws SQLException {
        dao.deleteUser(userid);
    }

    @Override
    public void modifyEmp(User user) throws SQLException {
       dao.updateUser(user);
    }


    @Override
    public List<User> findUserByNo(String username) throws SQLException {
       return dao.selectUserByNo(username);

    }

    @Override
    public User findUserByNo(int userid) throws SQLException {
        return dao.selectUserById(userid);
    }


}