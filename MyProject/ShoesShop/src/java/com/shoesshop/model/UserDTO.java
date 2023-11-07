package com.shoesshop.model;

import com.shoesshop.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDTO {

//    -------login----
    public boolean login(UserDAO udao) {

        Connection con = GetConnection.getConnection();
        String query = "select * from userinfo where username = ? AND password = ?";

        System.out.println(query);

        boolean b = false;

        if (con != null) {
            try {

                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1, udao.getUserName());
                ps.setString(2, udao.getPassword());

                System.out.println("---------------------------------");
                System.out.println("usename   page = " + udao.getUserName());
                System.out.println("userpassword   page = " + udao.getPassword());
                System.out.println("---------------------------------");

                ResultSet rs = ps.executeQuery();

                System.out.println("---------------------------------");
                if (rs.next()) {
                    System.out.println("++++++++++++");
                    System.out.println(rs.getString(3));
                    System.out.println("++++++++++++");
                    System.out.println(rs.getInt(1));
                    b = true;
                }

            } catch (SQLException ex) {

                System.out.println("some Exception");
                System.out.println(ex);
                b = false;
            }
        }
        return b;
    }
    //-----------Registration or inserdata--------------

    public boolean insert(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "insert into userinfo (name,username, email,mobile,gender, password,address) values(?,?,?,?,?,?,?)";
        boolean result = false;

        if (con != null) {
            try {

                PreparedStatement ps = con.prepareStatement(query);

                System.out.println(udao.getName());

                ps.setString(1, udao.getName());
                ps.setString(2, udao.getUserName());
                ps.setString(3, udao.getEmail());
                ps.setString(4, udao.getMobile());

                ps.setString(5, udao.getGender());
                ps.setString(6, udao.getPassword());
                ps.setString(7, udao.getAddress());

                System.out.println(udao.getAddress());

                if (ps.executeUpdate() > 0) {

                    result = true;
                }

            } catch (SQLException e) {

                System.out.println(e);
                result = false;
            }

        }
        return result;

    }

    public boolean updateName(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET name = ? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getName());
            ps.setInt(2, udao.getId());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean updateUserName(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET username = ? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getUserName());
            ps.setInt(2, udao.getId());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean updateEmail(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET email = ? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getEmail());
            ps.setInt(2, udao.getId());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean updatePassword(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET password = ? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getPassword());
            ps.setInt(2, udao.getId());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean updateGender(UserDAO udao) {

        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET gender = ? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getGender());
            ps.setInt(2, udao.getId());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean updateMobile(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET mobile = ? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getMobile());
            ps.setInt(2, udao.getId());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean updateAddress(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET address = ? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getAddress());
            ps.setInt(2, udao.getId());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean updateAll(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET name =?,username =?, email = ?,mobile =?,gender=? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getName());
            ps.setString(2, udao.getUserName());
            ps.setString(3, udao.getEmail());
            ps.setString(4, udao.getMobile());
            ps.setString(5, udao.getGender());
            ps.setInt(6, udao.getId());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }
        return result;
    }

    //        --------------update end------------------  
    public boolean searchByName(UserDAO udao) {

        Connection con = GetConnection.getConnection();
        String query = "SELECT * FROM userinfo WHERE name = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getName());

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean searchByEmail(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "SELECT * FROM userinfo WHERE email = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getEmail());

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean searchByUserName(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "SELECT * FROM userinfo WHERE username = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getUserName());

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

    public boolean searchByMobile(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "SELECT * FROM userinfo WHERE mobile = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getMobile());

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            result = false;
        }

        return result;
    }

//    -----------------------------------------
    public ResultSet getInfo(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "SELECT * FROM userinfo WHERE username = ?";

        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getUserName());
            
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                return rs;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            return null;

        }

        return null;
    }

}
