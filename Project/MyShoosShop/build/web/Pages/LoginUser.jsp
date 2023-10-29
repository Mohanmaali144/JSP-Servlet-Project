<%-- 
    Document   : LoginUser
    Created on : 28-Oct-2023, 10:12:04 pm
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
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./css/UserLoginStyle.css">

    </head>
    <jsp:include page="Navvar.jsp" />
    <body>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <div class="container login-container">
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h3> Log-in Your Account</h3>
                    <form action="" onsubmit="return formValide()">
                        <div class="form-group">
                            <input onkeyup="validateUserName()" id="username" name="username" type="text" class="form-control" placeholder="Your Email *"
                                   value="" />
                            <span id="errorUsername">&nbsp;</span>
                        </div>
                        <div class="form-group">
                            <input  onkeyup="validateUserpassoword()" id="password" name="password" type="password" class="form-control"
                                    placeholder="Your Password *" value="" />
                            <span id="errorPassword">&nbsp;</span>
                            <span id="errorMain">&nbsp;</span>
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btnSubmit" value="Login" />

                        </div>
                        <div class="form-group">
                            <button class="btnSubmit"><a style="color: rgb(255, 255, 255);" href="Registration.jsp">SignUp</a></button>
                        </div>
                        <div class="form-group">
                            <a href="#" class="ForgetPwd">&nbsp;&nbsp;Forget Password?</a>
                        </div>
                    </form>
                </div>
                <div class="col-md-6 login-form-2">

                    <div id="imgdiv" class="form-group">
                        <img src="../img/product2/2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </body>

    <!-----------------------js----------------->
    <script>
        function validateUserName() {
            const usernameInput = document.getElementById('username');
            const errorUsername = document.getElementById('errorUsername');
            const usernameValue = usernameInput.value.trim();

            if (usernameValue === '') {
                errorUsername.textContent = 'Username is required';
                errorUsername.style.color = 'red'; // Set the error message color to red
                return false;
            } else {
                errorUsername.textContent = '\u2713'; // Display a green checkmark (unicode character)
                errorUsername.style.color = 'green'; // Set the success message color to green
                return true;
            }
        }

        function validateUserPassword() {
            const passwordInput = document.getElementById('password');
            const errorPassword = document.getElementById('errorPassword');
            const passwordValue = passwordInput.value.trim();

            if (passwordValue === '') {
                errorPassword.textContent = 'Password is required';
                errorPassword.style.color = 'red'; // Set the error message color to red
                return false;
            } else {
                errorPassword.textContent = '\u2713'; // Display a green checkmark (unicode character)
                errorPassword.style.color = 'green'; // Set the success message color to green
                return true;
            }
        }

        function formValide() {
            return validateUserName() && validateUserPassword();
        }
    </script>

    <!------------------------js---------->

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

                String sql = "select * from user_details where userName=? and password=?";

                String username = request.getParameter("username");
                String password = request.getParameter("password");

               
                PreparedStatement ps = con.prepareStatement(sql);

                ps.setString(1, username);
                ps.setString(2, password);

                ResultSet rs = ps.executeQuery();
                if (rs.next()) {

                     session.setAttribute("rs", rs);
                     response.sendRedirect("EditeProfile.jsp");

                } else {

%>
<script>
    let errorMain = document.getElementById("errorMain");
    errorMain.style.color = "red";
    errorMain.innerHTML = "Input Details not matched";
</script>


<%
//                    response.sendRedirect("LogInPage");
                }
            } catch (Exception e) {

                response.sendRedirect("Login.jsp");

            }
    }
%>