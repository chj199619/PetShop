package org.lanqiao.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.lanqiao.dao.UserDao;
import org.lanqiao.domain.User;
import org.lanqiao.utils.jdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDaoImp implements UserDao {
    @Override
    //登陆
    public User selectUser(String username) throws SQLException {
        Connection conn = jdbcUtils.getConnection();
        String sql = "select * from user where username=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,username);
        ResultSet rs = pstmt.executeQuery();
        User user = null;
        while (rs.next()){
            user = new User();
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
        }
        System.out.println(user+"------");
//        jdbcUtils.close(conn,pstmt,null);
        jdbcUtils.releaseConnection(conn);
        return user;
    }

    @Override
    //注册
    public void addUser(String username,String password,String email,String tel,String address,String regittime) throws SQLException {
        Connection conn = jdbcUtils.getConnection();
        String sql = "insert INTO user(username,password,email,tel,regittime,address) VALUES(?,?,?,?,?,?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,username);
        pstmt.setString(2,password);
        pstmt.setString(3,email);
        pstmt.setString(4,tel);
        pstmt.setString(5,address);
        pstmt.setString(6,regittime);
        System.out.println("用户名---"+username+"-----"+"密码----"+password+"------"+"邮箱----"+email+"---"+"电话----"+tel+"---"+"地址"+"----"+address+"----"+regittime);
        pstmt.execute();
//        jdbcUtils.close(conn,pstmt,null);
        jdbcUtils.releaseConnection(conn);
    }

    @Override
    //会员列表
    public List<User> getAll() throws SQLException {
        QueryRunner qr=new QueryRunner(jdbcUtils.getDatasource());
        String sql="SELECT userid,username,password,email,tel,address,regittime FROM `user`";
        List<User> userList=qr.query(sql,new BeanListHandler<>(User.class));
        return  userList;
    }

    @Override
    public void addUser(User user) {

    }

    @Override
    public void deleteUser(int userid) throws SQLException {
        QueryRunner qr=new QueryRunner(jdbcUtils.getDatasource());
        String sql="delete from `user` where userid=?";
        qr.update(sql,userid);


    }
    @Override
    public void updateUser(User user) throws SQLException {
        String sql="update `user` set username=?,password=?,email=?,address=?,tel=?,regittime=? where userid=?";
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        qr.update(sql,user.getUsername(),user.getPassword(),user.getEmail(),user.getTel(),user.getAddress(),user.getRegittime(),user.getUserid());
    }

    @Override
    public User selectUserById(int userid) throws SQLException {
        String sql="select userid, username,password,email,tel,address,regittime from `user` where userid=?";
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        return qr.query(sql,new BeanHandler<>(User.class),userid);
    }

    @Override
    public  List<User> selectUserByNo(String username) throws SQLException {
        String sql = "select userid,username,email,tel,address,regittime from `user` where username like ?";
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        return qr.query(sql,new BeanListHandler<>(User.class), "%" + username + "%");


    }

}
