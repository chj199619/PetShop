package org.lanqiao.utils;

import javax.sql.DataSource;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;


public class Util {
    private static  String driver ;
    private static  String url ;
    private static  String username ;
    private static  String password ;
    private static DataSource ds=null;
    static {

        try {
//            Properties prop = new Properties();
//            prop.load(new FileInputStream("jdbc.properties"));
//            driver = prop.getProperty("driver");
//            url = prop.getProperty("url");
//            username=prop.getProperty("username");
//            password=prop.getProperty("password");
//            Class.forName(driver);
            driver = "com.mysql.cj.jdbc.Driver";
            url = "jdbc:mysql://localhost:3306/shop?useUnicode=true&characterEncoding=utf8&useSSL=false&serverTimezone = GMT";
            username="root";
            password="root";
            Class.forName(driver);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public static Connection getConnection()  {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url,username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;

    }
    public static void close(Connection  conn , Statement stat , ResultSet re){
        if (re!=null){
            try {
                re.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            finally {
                if (stat!=null){
                    try {
                        stat.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }finally {
                        if (conn!=null){
                            try {
                                conn.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
    }

    public static byte[] encode2bytes(String source) {
        byte[] result = null;
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.reset();
            md.update(source.getBytes("UTF-8"));
            result = md.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        return result;
    }
    public static String encode2hex(String source) {
        byte[] data = encode2bytes(source);
        StringBuffer hexString = new StringBuffer();
        for (int i = 0; i < data.length; i++) {
            String hex = Integer.toHexString(0xff & data[i]);
            if (hex.length() == 1) {
                hexString.append('0');
            }
            hexString.append(hex);
        }
        return hexString.toString();
    }
}
