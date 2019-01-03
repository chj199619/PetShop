package org.lanqiao.domain;

public class Order {
    private int orderid;
//    private int petId;
    private String img;
    private String petName;
    private double price;
    private double total;
    private int num;

    public Order() {
    }

    public Order(int orderid, String img, String petName, double price, double total, int num) {
        this.orderid = orderid;
        this.img = img;
        this.petName = petName;
        this.price = price;
        this.total = total;
        this.num = num;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
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

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderid=" + orderid +
                ", img='" + img + '\'' +
                ", petName='" + petName + '\'' +
                ", price=" + price +
                ", total=" + total +
                ", num=" + num +
                '}';
    }
    //    public Order(int orderId, int petId, String petPicture, String petName, double price, int petNum) {
////        this.orderId = orderId;
////        this.petId = petId;
////        this.petPicture = petPicture;
////        this.petName = petName;
////        this.price = price;
////        this.petNum = petNum;
////    }
////
////    public int getOrderId() {
////        return orderId;
////    }
////
////    public void setOrderId(int orderId) {
////        this.orderId = orderId;
////    }
////
////    public int getPetId() {
////        return petId;
////    }
////
////    public void setPetId(int petId) {
////        this.petId = petId;
////    }
////
////    public String getPetPicture() {
////        return petPicture;
////    }
////
////    public void setPetPicture(String petPicture) {
////        this.petPicture = petPicture;
////    }
////
////    public String getPetName() {
////        return petName;
////    }
////
////    public void setPetName(String petName) {
////        this.petName = petName;
////    }
////
////    public double getPrice() {
////        return price;
////    }
////
////    public void setPrice(double price) {
////        this.price = price;
////    }
////
////    public int getPetNum() {
////        return petNum;
////    }
////
////    public void setPetNum(int petNum) {
////        this.petNum = petNum;
////    }
////
////    @Override
////    public String toString() {
////        return "Order{" +
////                "orderId=" + orderId +
////                ", petId=" + petId +
////                ", petPicture='" + petPicture + '\'' +
////                ", petName='" + petName + '\'' +
////                ", price=" + price +
////                ", petNum=" + petNum +
////                '}';
////    }
}
