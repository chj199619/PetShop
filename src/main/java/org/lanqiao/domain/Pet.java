package org.lanqiao.domain;

public class Pet {
    private String Petname;
    private String Petage;
    private double Petprice;
    private String Pettype;
    private String image;

    public Pet() {
    }

    public Pet(String petname, String petage, double petprice, String pettype) {
        Petname = petname;
        Petage = petage;
        Petprice = petprice;
        Pettype = pettype;
    }


    public Pet(String petname, String petage, double petprice, String pettype, String image) {
        Petname = petname;
        Petage = petage;
        Petprice = petprice;
        Pettype = pettype;
        this.image = image;
    }

    public String getPetname() {
        return Petname;
    }

    public void setPetname(String petname) {
        Petname = petname;
    }

    public String getPetage() {
        return Petage;
    }

    public void setPetage(String petage) {
        Petage = petage;
    }

    public double getPetprice() {
        return Petprice;
    }

    public void setPetprice(double petprice) {
        Petprice = petprice;
    }

    public String getPettype() {
        return Pettype;
    }

    public void setPettype(String pettype) {
        Pettype = pettype;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
