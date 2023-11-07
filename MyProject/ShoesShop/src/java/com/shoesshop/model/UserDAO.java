package com.shoesshop.model;

import java.io.Serializable;

//------user Dao start-----
public class UserDAO implements Serializable {

    private int id;

    private String name, userName, email, mobile, gender, password, address;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public UserDAO() {
    }

    public UserDAO(String name, String userName, String email, String mobile, String gender, String password, String address) {
        this.name = name;
        this.userName = userName;
        this.email = email;
        this.mobile = mobile;
        this.gender = gender;
        this.password = password;
        this.address = address;
        System.out.print(this.name);
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

//-------------Dao end  -----------

