<%-- 
    Document   : LogIn
    Created on : 25-Oct-2023, 4:36:04 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import = "java.io.IOException"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = " java.sql.PreparedStatement"%>
<%@page import = " java.sql.SQLException"%>
<%@page import = " java.sql.ResultSet"%>

<!DOCTYPE html>

<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Form</title>
        <link rel="stylesheet" href="LogInStyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />


    </head>

    <body>
        <div class="container">
            <div class="wrapper">
                <div class="title"><span>Login MyWEB</span></div>
                <form action="">
                    <div class="row">
                        <i class="fas fa-user"></i>
                        <input name="email" id="email" type="text" placeholder="Email or Phone" required>
                    </div>
                    <div class="row">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="password" id="password" placeholder="Password" required>
                    </div>
                    <div class="pass"><a href="#">Forgot password?</a></div>
                    <div class="row button">
                        <input type="submit" value="Login">
                    </div>
                    <div class="signup-link">Not a member? <a href="Registration.jsp">Signup now</a></div>
                </form>
                <div style="text-align: center; padding-bottom: 20px; color: red;"><span id="error"></span></div>

            </div>
        </div>

    </body>

</html>

<%
     String check = request.getParameter("email");
    
    if(check!=null){   
    Connection con = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject", "root", "root");
                System.out.println("Connection succes");

                String sql = "select * from registrationdata where email=? and password=?";

                String email = request.getParameter("email");
                String password = request.getParameter("password");

               
                PreparedStatement ps = con.prepareStatement(sql);

                ps.setString(1, email);
                ps.setString(2, password);

                ResultSet rs = ps.executeQuery();
                if (rs.next()) {

                    session.setAttribute("rs", rs);
//                    response.sendRedirect("EditeProfile.jsp");
                     response.sendRedirect("Home.jsp");

                } else {

%>
<script>
    let error = document.getElementById("error");
    error.innerHTML = "Input Details not matched";
</script>


<%
//                    response.sendRedirect("LogInPage");
                }
            } catch (Exception e) {

                response.sendRedirect("LogIn.jsp");

            }
    }
%>