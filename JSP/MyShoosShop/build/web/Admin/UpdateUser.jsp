<%-- 
    Document   : UpdateUser
    Created on : 30-Oct-2023, 11:20:49 AM
    Author     : admin
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement,java.sql.*" %>
<%@page import = " java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link rel="stylesheet" href="./Admincss/RegistrationStyle.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>

    <jsp:include page="AdminNav.jsp" />


    <body>


        <!------ Include the above in your HEAD tag ---------->


        <!------------------------------------------------------>
        <%
              int userId=0;
            if(request.getParameter("userId")!=null){
               
                userId = Integer.parseInt(request.getParameter("userId"));
            }
        if(userId!=0){
     
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
          
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject", "root", "root");

       
            String update = "select * from user_details where userId=?";
            PreparedStatement ps = con.prepareStatement(update);
            ps.setInt(1,  userId);
               
               ResultSet rs = ps.executeQuery();
          
               if(rs.next())
              {
         
        %>


        <!------------------------------------------------->


        <div class="container register">
            <div class="row">
                <div class="col-md-3 register-left">
                    <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
                    <h3>Welcome</h3>
                    <p>Wlcome to my shoose shop</p>


                </div>
                <div class="col-md-9 register-right">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <h3 class="register-heading">Update</h3>
                            <form action="" onsubmit="return ValidateForm()">
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input onkeyup="validateUserName()" name="username2" type="text" class="form-control"
                                                   placeholder="UserName *" value="<%=rs.getString("userName")%>" />
                                            <span style="color: rgb(255, 95, 95);" id="erroUserName">&nbsp;</span>
                                        </div>
                                        <div class="form-group">
                                            <input onkeyup="validateEmail()" name="email" type="text" class="form-control"
                                                   placeholder="Email Address *" value="<%=rs.getString("email")%>" />
                                            <span style="color: rgb(255, 95, 95);" id="erroEmail">&nbsp;</span>
                                        </div>


                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline">
                                                    <input name="gender" type="radio" name="gender" value="male" checked>
                                                    <span> Male </span>
                                                </label>
                                                <label class="radio inline">
                                                    <input name="gender" type="radio" name="gender" value="female">
                                                    <span>Female </span>
                                                </label>
                                                <label class="radio inline">
                                                    <input name="gender" type="radio" name="gender" value="other">
                                                    <span> Other </span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input onkeyup="validateName()" name="name" type="text" class="form-control" placeholder="Full Name *"
                                                   value="<%=rs.getString("fullname")%>" />
                                            <span style="color: rgb(255, 95, 95);" id="erroName">&nbsp;</span>
                                        </div>
                                        <div class="form-group">
                                            <input onkeyup="validateMobile()" type="text" minlength="10" maxlength="10" name="mobile"
                                                   class="form-control" placeholder="Your Phone *" value="<%=rs.getString("mobile")%>" />
                                            <span style="color: rgb(255, 95, 95);" id="erroUserMobile">&nbsp;</span>
                                        </div>
                                        <div class="form-group">
                                            <textarea onkeyup="validateAddress()" class="form-control" name="address" id="address" cols="30" rows="10"
                                                      placeholder="Address*"><%=rs.getString("address")%></textarea>
                                            <span style="color: rgb(255, 95, 95);" id="erroUserAddress">&nbsp;</span>
                                        </div>

                                        <input type="submit" class="btnRegister" value="Register" />
                                        <span style="color: rgb(255, 95, 95);" id="mainError">&nbsp;</span>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!----------------------java script ------->
        <script>
            function validateUserName() {
                const usernameInput = document.getElementsByName("username")[0];
                const errorUsername = document.getElementById("erroUserName");
                const usernameValue = usernameInput.value.trim();
                const usernamePattern = /^[a-zA-Z0-9_]{5,}$/; // Allows at least 5 alphanumeric characters or underscores

                if (usernameValue === '') {
                    errorUsername.style.color = "red";
                    errorUsername.textContent = 'Username is required';
                    return false;
                } else if (!usernamePattern.test(usernameValue)) {
                    errorUsername.style.color = "red";
                    errorUsername.textContent = 'Username at least 5 alphanumeric ';
                    return false;
                } else {
                    errorUsername.style.color = "green";
                    errorUsername.textContent = '\u2713';
                    return true;
                }
            }

            function validateEmail() {
                const emailInput = document.getElementsByName("email")[0];
                const errorEmail = document.getElementById("erroEmail");
                const emailValue = emailInput.value.trim();
                const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

                if (emailValue === '') {
                    errorEmail.style.color = "red";
                    errorEmail.textContent = 'Email is required';
                    return false;
                } else if (!emailPattern.test(emailValue)) {
                    errorEmail.style.color = "red";
                    errorEmail.textContent = 'Invalid email format';
                    return false;
                } else {
                    errorEmail.style.color = "green";
                    errorEmail.textContent = '\u2713';
                    return true;
                }
            }

            function validatePassword() {
                const passwordInput = document.getElementsByName("password")[0];
                const errorPassword = document.getElementById("erroUserPassword");
                const passwordValue = passwordInput.value;

                if (passwordValue.length < 8) {
                    errorPassword.style.color = 'red';
                    errorPassword.textContent = '  at least 8 characters';
                    return false;
                } else {
                    errorPassword.style.color = 'green';
                    errorPassword.textContent = '\u2713';

                    return true;
                }
            }

            function validateCPassord() {
                const passwordInput = document.getElementsByName("password")[0];
                const cpasswordInput = document.getElementsByName("cpassword")[0];
                const errorCPassord = document.getElementById("erroUsercpassword");
                const passwordValue = passwordInput.value;
                const cpasswordValue = cpasswordInput.value;

                if (cpasswordValue !== passwordValue) {
                    errorPassword.style.color = 'red';
                    errorCPassord.textContent = 'Passwords do not match';
                    return false;
                } else {
                    errorCPassord.textContent = '\u2713';
                    return true;
                }
            }

            function validateName() {
                const nameInput = document.getElementsByName("name")[0];
                const errorName = document.getElementById("erroName");
                const nameValue = nameInput.value.trim();
                const namePattern = /^[A-Za-z\s]+$/; // Only allows alphabetic characters and spaces

                if (nameValue === '') {
                    errorName.style.color = 'red';
                    errorName.textContent = 'Name is required';
                    return false;
                } else if (!namePattern.test(nameValue)) {
                    errorName.style.color = 'red';
                    errorName.textContent = 'Nameonly alphabetic characters';
                    return false;
                } else {
                    errorName.style.color = 'green';
                    errorName.textContent = '\u2713';
                    return true;
                }
            }

            function validateMobile() {
                const mobileInput = document.getElementsByName("mobile")[0];
                const errorMobile = document.getElementById("erroUserMobile");
                const mobileValue = mobileInput.value.trim();
                const mobilePattern = /^\d{10}$/; // Allows only 10 digits

                if (mobileValue === '') {

                    errorMobile.style.color = 'red';
                    errorMobile.textContent = 'Mobile number is required';
                    return false;
                } else if (!mobilePattern.test(mobileValue)) {
                    errorMobile.style.color = 'red';
                    errorMobile.textContent = ' should be 10 digits';
                    return false;
                } else {
                    errorMobile.style.color = 'green';
                    errorMobile.textContent = "\u2713";
                    return true;
                }
            }

            function validateAddress() {
                const addressInput = document.getElementsByName("address")[0];
                const errorAddress = document.getElementById("erroUserAddress");
                const addressValue = addressInput.value.trim();

                if (addressValue === '') {
                    errorAddress.style.color = 'red';
                    errorAddress.textContent = 'Address is required';

                    return false;
                } else {
                    errorAddress.style.color = 'green';
                    errorAddress.textContent = '\u2713';
                    return true;
                }
            }

            function ValidateForm() {
                // You can implement overall form validation here
                // Return true if all fields are valid, otherwise return false
                return (
                        validateUserName() &&
                        validateEmail() &&
                        validatePassword() &&
                        validateCPassord() &&
                        validateName() &&
                        validateMobile() &&
                        validateAddress()
                        );
            }
        </script>
        <%
                           }

                           if(request.getParameter("email")!=null){
                       //  String username = request.getParameter("username");
                          String uname = request.getParameter("username");
                    
                          String uuser = request.getParameter("name");
                          String uemail = request.getParameter("email");
                          String uphone = request.getParameter("mobile");

       
                             String sql = "update user_details set username=?, fullname=?, email=?, mobile=? where userId = ?";
                              PreparedStatement preparedStatement = con.prepareStatement(sql);
                              preparedStatement.setString(1, uname);
                              preparedStatement.setString(2, uuser);
                              preparedStatement.setString(3, uemail);
                              preparedStatement.setString(4, uphone);
                               preparedStatement.setInt(5, userId);
                               preparedStatement.executeUpdate();
                              response.sendRedirect("UserInfo.jsp");
                        }
                    }  catch (Exception ex) {
                       //      out.print(ex);
                          } finally {
                              if (con != null) {
                                  con.close();
                              }
                          }
       }

        %>

    </body>
</html>