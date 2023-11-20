package com.shoesshop.model;

import java.io.Serializable;

public class ProductDAO implements Serializable {

    private int id;
    private String name, brand, model, category, color, description, gender, size;

    ProductDAO prodao[] = new ProductDAO[100];

    public ProductDAO(String name, String brand, String model, String category, String color, String description, String gender, String size, double price, double discount) {
        this.name = name;
        this.brand = brand;
        this.model = model;
        this.category = category;
        this.color = color;
        this.description = description;
        this.gender = gender;
        this.size = size;
        this.price = price;
        this.discount = discount;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }
    private double price, discount;

    public ProductDAO() {
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

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

}
