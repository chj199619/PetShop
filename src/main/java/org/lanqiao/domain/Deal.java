package org.lanqiao.domain;

import java.util.Date;

public class Deal {
    private int id;
    private String name;
    private double total;
    private Date time;
    private String conditions;

    public Deal() {
    }

    public Deal(int id, String conditions) {
        this.id = id;
        this.conditions = conditions;
    }

    public Deal(int id, String name, double total, Date time, String conditions) {
        this.id = id;
        this.name = name;
        this.total = total;
        this.time = time;
        this.conditions = conditions;
    }

    public Deal(String name, double total, Date time, String conditions) {
        this.name = name;
        this.total = total;
        this.time = time;
        this.conditions = conditions;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getConditions() {
        return conditions;
    }

    public void setConditions(String conditions) {
        this.conditions = conditions;
    }

    @Override
    public String toString() {
        return "Deal{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", total=" + total +
                ", time=" + time +
                ", conditions='" + conditions + '\'' +
                '}';
    }
}
