package org.lanqiao.domain;

public class Cat {
    private String cimg;
    private String cName;
    private double cPrice;

    public Cat() {
    }

    public Cat(String cName, double cPrice) {
        this.cName = cName;
        this.cPrice = cPrice;
    }

    public Cat(String cimg, String cName, double cPrice) {
        this.cimg = cimg;
        this.cName = cName;
        this.cPrice = cPrice;
    }

    public String getCimg() {
        return cimg;
    }

    public void setCimg(String cimg) {
        this.cimg = cimg;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public double getcPrice() {
        return cPrice;
    }

    public void setcPrice(double cPrice) {
        this.cPrice = cPrice;
    }
}
