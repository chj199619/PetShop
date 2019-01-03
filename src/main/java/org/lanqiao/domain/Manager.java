package org.lanqiao.domain;

public class Manager {
    private int mid;
    private String managername;
    private String managerpassword;

    public Manager() {
    }

    public Manager(int mid) {
        this.mid = mid;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public Manager(String managername, String managerpassword) {
        this.managername = managername;
        this.managerpassword = managerpassword;
    }


    public String getManagername() {
        return managername;
    }

    public void setManagername(String managername) {
        this.managername = managername;
    }

    public String getManagerpassword() {
        return managerpassword;
    }

    public void setManagerpassword(String managerpassword) {
        this.managerpassword = managerpassword;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "mid=" + mid +
                ", managername='" + managername + '\'' +
                ", managerpassword='" + managerpassword + '\'' +
                '}';
    }
}
