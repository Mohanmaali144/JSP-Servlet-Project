

<% @page import java.io.IOException %>    

<% @page import java.io.PrintWriter %>
<% @page import java.sql.Connection %>
<% @page import java.sql.DriverManager %>
<% @page import java.sql.PreparedStatement %>
<% @page import java.sql.SQLException %>
    


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Connection con = null;
               try {
                   Class.forName("com.mysql.cj.jdbc.Driver");
                   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
                   System.out.println("Connection succes");
                   String sql = "insert into imagedata(image) values(?)";

                  
//                    sql = "insert into registrationdata (name,father,email,password, mobile,gender) values(?,?,?,?,?,?)";
                
                       ps = con.prepareStatement(sql);
                       
                       String image =  (String)request.getParameter("image");
                        
                       ps.setString(1, image);

                       int a = ps.executeUpdate();
                       if (a > 0) {
                           System.out.println("Inserted data");
                            
                           out.print("Imgage uploaded");
                       }                   
               } catch (IOException | ClassNotFoundException | SQLException e) {

                 out.print("falid");

               }
                
                
               finally {
                   try {
                       con.close();
                   } catch (SQLException ex) {

                   }
               }
            
                
        %>     
    </body>
</html>
