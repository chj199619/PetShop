package org.lanqiao.domain;

public class Car {
    private int orderid;
    private String petName;
    private double price;
    private int num;
    private double totalMoney;
    private double total;
    private String img;

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Car(String petName, double price, int num, double total, String img) {
        this.petName = petName;
        this.price = price;
        this.num = num;
        this.total = total;
        this.img = img;
    }

    public Car(int orderid, String petName, double price, int num, double total, String img) {
        this.orderid = orderid;
        this.petName = petName;
        this.price = price;
        this.num = num;
        this.total = total;
        this.img = img;
    }

    public double getTotal() {
        return total;
    }


    public void setTotal(double total) {
        this.total = total;
    }

    public Car() {
    }

    public Car(String petName, double price) {
        this.petName = petName;
        this.price = price;
    }

    public Car(String petName, double price, int num) {
        this.petName = petName;
        this.price = price;
        this.num = num;
    }

    public Car(String petName, int num) {
        this.petName = petName;
        this.num = num;
    }


    public Car(String petName, double price, int num, double total) {
        this.petName = petName;
        this.price = price;
        this.num = num;
        this.total = total;
    }



    public Car(String petName, int num, double totalMoney) {
        this.petName = petName;
        this.num = num;
        this.totalMoney = totalMoney;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "Car{" +
                "orderid=" + orderid +
                ", petName='" + petName + '\'' +
                ", price=" + price +
                ", num=" + num +
                ", totalMoney=" + totalMoney +
                ", total=" + total +
                '}';
    }
}
