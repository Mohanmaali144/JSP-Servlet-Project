package com.shoesshop.model;

import static com.shoesshop.model.UserDTO.decrypt;
import static com.shoesshop.model.UserDTO.encrypt;
import com.shoesshop.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeDTO {

    public boolean loginEmployee(EmployeeDAO edao) {

        Connection con = GetConnection.getConnection();
        String query = "select * from Employeeinfo where email = ?";

        System.out.println(query);

        boolean b = false;

        if (con != null) {
            try {

                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1, edao.getEmail());

                ResultSet rs = ps.executeQuery();

                System.out.println("---------------------------------");
                if (rs.next()) {
                    String encryptedPasswordFromDB = rs.getString("password"); // Get the encrypted password from the database
                    String decryptedPassword = decrypt(encryptedPasswordFromDB); // Decrypt the password from the database
                    if (decryptedPassword.equals(edao.getPassword())) { // Compare the decrypted password with the input password
                        b = true;

                        edao.setId(rs.getInt("id"));
                        edao.setName(rs.getString("name"));
                        edao.setEmail(rs.getString("email"));
                        edao.setMobile(rs.getString("mobile"));
                        edao.setGender(rs.getString("gender"));
                        edao.setPassword(decryptedPassword);
                    }
                }
            } catch (SQLException ex) {

                System.out.println("some Exception");
                System.out.println(ex);
                b = false;
            }
        }
        return b;
    }

    public boolean insertEmployee(EmployeeDAO edao) {
        Connection con = GetConnection.getConnection();
        String query = "insert into Employeeinfo (name,email,mobile,gender, password) values(?,?,?,?,?)";
        boolean result = false;

        if (con != null) {
            try {

                String encryptPassword = encrypt(edao.getPassword());

                PreparedStatement ps = con.prepareStatement(query);

                ps.setString(1, edao.getName());
                ps.setString(2, edao.getEmail());
                ps.setString(3, edao.getMobile());
                ps.setString(4, edao.getGender());
                ps.setString(5, encryptPassword);

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

//    -------------------------------
    public boolean updateEmployee(EmployeeDAO edao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE Employeeinfo SET name =?,email = ?,mobile =? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, edao.getName());
            ps.setString(2, edao.getEmail());
            ps.setString(3, edao.getMobile());
            ps.setInt(4, edao.getId());

            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            System.out.println(e);
            result = false;
        }
        return result;
    }

//    -----------------------
    public boolean EmpUpdatePassword(EmployeeDAO edao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE Employeeinfo SET password = ? WHERE email = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);

            String encryptPassword = encrypt(edao.getPassword());
            ps.setString(1, encryptPassword);
            ps.setString(2, edao.getEmail());
            System.out.println("email   ===   " + edao.getEmail());
            if (ps.executeUpdate() > 0) {

                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            System.out.println(" " + e);
            result = false;
        }

        return result;
    }
}
