package com.shoesshop.model;

import com.shoesshop.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

public class ProductDTO {

    public boolean insertProduct(ProductDAO pdao) {

        Connection con = GetConnection.getConnection();
        String query = "INSERT INTO shoes (name, brand, model, category, color, price, discount,description,gender,size) values(?,?,?,?,?,?,?,?,?,?)";
        boolean flag = false;

        if (con != null) {
            try {

                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1, pdao.getName());
                ps.setString(2, pdao.getBrand());
                ps.setString(3, pdao.getModel());
                ps.setString(4, pdao.getCategory());
                ps.setString(5, pdao.getColor());
                ps.setDouble(6, pdao.getPrice());
                ps.setDouble(7, pdao.getDiscount());
                ps.setString(8, pdao.getDescription());
                ps.setString(9, pdao.getGender());
                ps.setString(10, pdao.getSize());
//                System.out.println(pdao.getDescription());

                if (ps.executeUpdate() > 0) {
                    flag = true;
                }

            } catch (SQLException e) {

                System.out.println(e);
                flag = false;
            }

        }
        System.out.println(con);
        return flag;
    }

    public boolean deliteProduct(ProductDAO pdao) {

        Connection con = GetConnection.getConnection();
        String query = "DELETE FROM shoes WHERE ProductId = ?";
        boolean flag = false;

        if (con != null) {
            try {

                PreparedStatement ps = con.prepareStatement(query);
                ps.setInt(1, pdao.getId());

                if (ps.executeUpdate() > 0) {
                    flag = true;
                }

            } catch (SQLException e) {

                System.out.println(e);
                flag = false;
            }

        }
        System.out.println(con);
        return flag;
    }

// ------------------get DATA-----------
    public ProductDAO[] getProduct() {

        ProductDAO prodao[] = new ProductDAO[100];
        Connection con = GetConnection.getConnection();

        String query = "SELECT * FROM shoes";

        if (con != null) {

            System.out.print("con -4 ");

            try {

                PreparedStatement ps = con.prepareStatement(query);
                ResultSet rs = ps.executeQuery();
                int i = 0;

                System.out.print("dto -5 ");

                while (rs.next()) {
                    prodao[i] = new ProductDAO();

                    prodao[i].setId(rs.getInt("ProductID"));
                    prodao[i].setName(rs.getString("Name"));
                    prodao[i].setBrand(rs.getString("Brand"));
                    prodao[i].setModel(rs.getString("Model"));
                    prodao[i].setCategory(rs.getString("Category"));
                    prodao[i].setColor(rs.getString("Color"));
                    prodao[i].setPrice(rs.getDouble("Price"));
                    prodao[i].setDiscount(rs.getDouble("Discount"));
                    prodao[i].setDescription(rs.getString("Description"));
                    prodao[i].setGender(rs.getString("gender"));
                    prodao[i].setSize(rs.getString("size"));
                    i++;
                    System.out.println(9);
                }
                System.out.print("dto -7 ");

            } catch (SQLException e) {

                System.out.println(e);
                

            }

        }
        System.out.println(con);
        return prodao;
    }

    
}
