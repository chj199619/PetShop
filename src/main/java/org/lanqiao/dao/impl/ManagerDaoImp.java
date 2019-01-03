package org.lanqiao.dao.impl;


import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.lanqiao.dao.ManagerDao;
import org.lanqiao.domain.Manager;
import org.lanqiao.utils.jdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ManagerDaoImp implements ManagerDao {

    @Override
    public Manager selectManager(String username) throws SQLException {
        Connection conn = jdbcUtils.getConnection();
        String sql = "select * from manager where managername=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,username);
        ResultSet rs = pstmt.executeQuery();
       Manager manager=null;
        while (rs.next()){
            manager = new Manager();
            manager.setManagername(rs.getString("managername"));
            manager.setManagerpassword(rs.getString("managerpassword"));
        }
        System.out.println(manager+"------");
//        jdbcUtils.close(conn,pstmt,null);
        jdbcUtils.releaseConnection(conn);
        return manager;
    }

    @Override
    public void addUser(String username, String password, String email, String tel, String address, String registtime) throws SQLException {


        Connection conn = jdbcUtils.getConnection();
        String sql=null;
         sql = "insert INTO user(username,password,email,tel,regittime,address) VALUES(?,?,?,?,?,?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,username);
        pstmt.setString(2,password);
        pstmt.setString(3,email);
        pstmt.setString(4,tel);
        pstmt.setString(5,address);
        pstmt.setString(6,registtime);
        System.out.println("用户名---"+username+"-----"+"密码----"+password+"------"+"邮箱----"+email+"---"+"电话----"+tel+"---"+"地址"+"----"+address+"----"+registtime);

//        jdbcUtils.close(conn,pstmt,null);
        pstmt.execute();
        jdbcUtils.releaseConnection(conn);
    }

    @Override
    public List<Manager> getAll() throws SQLException {
        QueryRunner qr=new QueryRunner(jdbcUtils.getDatasource());
        String sql="SELECT mid, managername,managerpassword from manager";
        List<Manager> managerList=qr.query(sql,new BeanListHandler<>(Manager.class));
        return  managerList;
    }
}
