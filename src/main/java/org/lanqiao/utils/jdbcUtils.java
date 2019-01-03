package org.lanqiao.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class jdbcUtils {
    //    配置文件的默认配置！要求你必须给出c3p0-config.xml！！！
    private static DataSource ds=null;
    static{
        //数据源只能被创建一次
        ds=new ComboPooledDataSource("mvcdemo");
    }

    public static DataSource getDatasource(){
        return ds;
    }

    /**
     * 释放Connection链接
     * @param conn
     */
    public static void releaseConnection(Connection conn) {
        try {
            if(conn!=null){
                conn.close();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public static Connection getConnection() throws SQLException {

        return ds.getConnection();
    }



}