///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package com.shashwat.userdao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//public class UserDao {
//
//    private Connection connection;
//
//    public UserDao(Connection connection) {
//        this.connection = connection;
//    }
//    
//    
//    private int user_id;
//    private String firstName ;
//    private String lastName ;
//    private String userName ;
//    private String userEmail ;
//    private String phoneNo ;
//    private String gender ;
//    private String dob ;
//    private String password ;
//    
//      public void addUser(UserOb user) {
//        String query = "INSERT INTO users (first_name, last_name, user_name, user_email, phone_no, gender, dob, password) " +
//                       "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
//        try (PreparedStatement statement = connection.prepareStatement(query)) {
//            statement.setString(1, user.getFirstName());
//            statement.setString(2, user.getLastName());
//            statement.setString(3, user.getUserName());
//            statement.setString(4, user.getUserEmail());
//            statement.setString(5, user.getPhoneNo());
//            statement.setString(6, user.getGender());
//            statement.setString(7, user.getDob());
//            statement.setString(8, user.getPassword());
//            statement.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//      
////      ------------------
//      
//       public boolean getUserById(int userId) {
//        String query = "SELECT * FROM users WHERE user_id = ?";
//        try (PreparedStatement statement = connection.prepareStatement(query)) {
//            statement.setInt(1, userId);
//            try (ResultSet resultSet = statement.executeQuery()) {
//                if (resultSet.next()) {
//                    return createUserFromResultSet(resultSet);
//                }
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return false;
//    }
//
//}
