package org.lanqiao.domain;

import java.util.Date;

public class User {
    private int userid;
    private String username;
    private String password;
    private String email;
    private String tel;
    private String address;
    private String regittime;

    public User() {
    }

    public User(int userid, String username, String password, String email, String tel, String address, String regittime) {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.email = email;
        this.tel = tel;
        this.address = address;
        this.regittime = regittime;
    }

    public User(int userid, String username, String password, String email, String tel, String address) {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.email = email;
        this.tel = tel;
        this.address = address;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRegittime() {
        return regittime;
    }

    public void setRegittime(String regittime) {
        this.regittime = regittime;
    }

    @Override
    public String toString() {
        return "User{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", tel='" + tel + '\'' +
                ", address='" + address + '\'' +
                ", regittime='" + regittime + '\'' +
                '}';
    }
}