package com.shoesshop.model;

import com.shoesshop.service.GetConnection;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.Arrays;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class UserDTO {

    private static SecretKeySpec secretKey;
    private static byte[] key;

//    -------login----
    public boolean login(UserDAO udao) {

        Connection con = GetConnection.getConnection();
        String query = "select * from userinfo where username = ?";

        System.out.println(query);

        boolean b = false;

        if (con != null) {
            try {

                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1, udao.getUserName());

                ResultSet rs = ps.executeQuery();

                System.out.println("---------------------------------");
                if (rs.next()) {
                    String encryptedPasswordFromDB = rs.getString("password"); // Get the encrypted password from the database
                    String decryptedPassword = decrypt(encryptedPasswordFromDB); // Decrypt the password from the database
                    if (decryptedPassword.equals(udao.getPassword())) { // Compare the decrypted password with the input password
                        b = true;

                        udao.setId(rs.getInt("id"));
                        udao.setName(rs.getString("name"));
                        udao.setUserName(rs.getString("userName"));
                        udao.setEmail(rs.getString("email"));
                        udao.setMobile(rs.getString("mobile"));
                        udao.setGender(rs.getString("gender"));
                        udao.setAddress(rs.getString("address"));
                        udao.setPassword(decryptedPassword);

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
    //-----------Registration or inserdata--------------

    public boolean insert(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "insert into userinfo (name,username, email,mobile,gender, password,address) values(?,?,?,?,?,?,?)";
        boolean result = false;

        if (con != null) {
            try {

                String encryptPassword = encrypt(udao.getPassword());

                PreparedStatement ps = con.prepareStatement(query);

                System.out.println(udao.getName());

                ps.setString(1, udao.getName());
                ps.setString(2, udao.getUserName());
                ps.setString(3, udao.getEmail());
                ps.setString(4, udao.getMobile());

                ps.setString(5, udao.getGender());
                ps.setString(6, encryptPassword);
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
            System.out.println(e);
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
            System.out.println(e);
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
            System.out.println(e);
            result = false;
        }

        return result;
    }

    public boolean updatePassword(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET password = ? WHERE email = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);

            String encryptPassword = encrypt(udao.getPassword());
            ps.setString(1, encryptPassword);
            ps.setString(2, udao.getEmail());
            System.out.println("email   ===   " + udao.getEmail());
            if (ps.executeUpdate() > 0) {

                System.out.println("email   ===   " + udao.getEmail());
                result = true;
            }

        } catch (SQLException e) {

            System.out.println("some Exception");
            System.out.println(" " + e);
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
            System.out.println(e);
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
            System.out.println(e);
            result = false;
        }

        return result;
    }

    public boolean updateAll(UserDAO udao) {
        Connection con = GetConnection.getConnection();
        String query = "UPDATE userinfo SET name =?,username =?, email = ?,mobile =?,address =? WHERE id = ?";
        boolean result = false;
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, udao.getName());
            ps.setString(2, udao.getUserName());
            ps.setString(3, udao.getEmail());
            ps.setString(4, udao.getMobile());
            ps.setString(5, udao.getAddress());
            ps.setInt(6, udao.getId());

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

//    -----------------------
    public UserDAO[] getAllUser() {
        Connection con = GetConnection.getConnection();
        String query = "SELECT * FROM userinfo";
        UserDAO usdao[] = new UserDAO[100];
        try {

            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            int i = 0;
            while(rs.next()) {
                usdao[i] = new UserDAO();
                
                usdao[i].setId(rs.getInt("id"));
                usdao[i].setName(rs.getString("name"));
                usdao[i].setUserName(rs.getString("username"));
                usdao[i].setEmail(rs.getString("email"));
                usdao[i].setMobile(rs.getString("mobile"));
                usdao[i].setGender(rs.getString("gender"));
                usdao[i].setAddress(rs.getString("address"));
                i++;
            }
//            return usdao;
        } catch (SQLException e) {

            System.out.println("some Exception");
            return null;

        }

        return usdao;
    }

//    -----------------password encrypt-----------------
    public static void setKey(String myKey) {
        try {
            key = myKey.getBytes("UTF-8");
            MessageDigest sha = MessageDigest.getInstance("SHA-1");
            key = sha.digest(key);
            key = Arrays.copyOf(key, 16); // use only first 128 bit
            secretKey = new SecretKeySpec(key, "AES");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String encrypt(String strToEncrypt) {
        try {
            setKey("encryptionKey"); // You can modify the encryption key here
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            return Base64.getEncoder().encodeToString(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));
        } catch (Exception e) {
            System.out.println("Error while encrypting: " + e.toString());
        }
        return null;
    }

    public static String decrypt(String strToDecrypt) {
        try {
            setKey("encryptionKey"); // You can modify the encryption key here
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
//            System.out.println("Input length: " + strToDecrypt.length()); // Log the length of the input string
            return new String(cipher.doFinal(Base64.getDecoder().decode(strToDecrypt)));
        } catch (Exception e) {
            System.out.println("Error while decrypting: " + e.toString());
        }

        return null;
    }

//    --------------------
}
