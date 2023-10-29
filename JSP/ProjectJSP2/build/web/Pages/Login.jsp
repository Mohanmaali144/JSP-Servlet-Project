<%-- 
    Document   : Login
    Created on : 27-Oct-2023, 9:04:37 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import = "java.io.IOException"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = " java.sql.PreparedStatement"%>
<%@page import = " java.sql.SQLException"%>
<%@page import = " java.sql.ResultSet"%>


<!Doctype html>

<html lang="en">

    <head>

        <meta charset="UTF-8">

        <title>Login</title>

        <link rel="stylesheet" href="LoginStyle.css">

    </head>

    <body> 

        <jsp:include page="Navvar.jsp" />

        <!--<section>-->

        <div class="signin">

            <div class="content">

                <h2>Sign In</h2>

                <div class="form">

                    <form action="">
                        <div class="inputBox">
                            <!--<input  type="text" required name="email">-->
                            <input type="text" name="email"> <i>Email</i>
                        </div>

                        <div class="inputBox">
                            <input  type="password" required name="password"> <i>Password</i>
                        </div>

                        <div class="links"> <a href="#">Forgot Password</a> <a href="#">Signup</a>

                        </div>

                        <div class="inputBox">

                            <input type="submit" value="Login">
                            <!--<div style="text-align: center; padding-bottom: 20px; color: red;"><span id="error"></span></div>-->
                        </div>
                    </form>
                </div>

            </div>

        </div>

        <!--</section>  partial--> 

    </body>

</html>

<%
    String check = request.getParameter("password");
    out.print(request.getParameter("email"));
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
                     response.sendRedirect("Home.jsp");

                } else {

%>
<!--<script>
    let error = document.getElementById("error");
    error.innerHTML = "Input Details not matched";
</script>
-->

<%
//                    response.sendRedirect("LogInPage");
                }
            } catch (Exception e) {

                response.sendRedirect("Login.jsp");

            }
    }
%>