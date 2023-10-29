<%-- 
    Document   : Registration
    Created on : 28-Oct-2023, 2:42:31 pm
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

</html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="UTF-8">
        <title>Registration Form</title>
        <link rel="stylesheet" href="./css/RegistrationStyle.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


    </head>

    <body>

        <%--<jsp:include page="Navvar.jsp"/>--%>

        <div id="RegDiv">
            <div id="RegDiv2">
                <div class="container">
                    <!--<div class="title">Registration</div>-->
                    <div class="content">
                        <form action="" onsubmit="return validateForm()" >
                            <div class="user-details">
                                <div class="input-box">
                                    <span class="details">Full Name</span>
                                    <input id="name" onkeyup="validateName()" name="name" type="text" placeholder="Enter your name"
                                           required>
                                    <span style="color: red;" id="errorName">*</span>
                                </div>
                                <div class="input-box">
                                    <span class="details">Father name</span>
                                    <input id="father" onkeyup="validateFName()" name="father" type="text"
                                           placeholder="Enter your Father Name" required>
                                    <span style="color: red;" id="errorFName">*</span>
                                </div>
                                <div class="input-box">
                                    <span class="details">Email</span>
                                    <input onkeyup="validateEmail()" id="email" name="email" type="text"
                                           placeholder="Enter your email" required>
                                    <span style="color: red;" id="errorEmail">*</span>
                                </div>
                                <div class="input-box">
                                    <span class="details">Phone Number</span>
                                    <input onkeyup="validateMobile()" id="mobile" name="mobile" type="text"
                                           placeholder="Enter your number" required>
                                    <span style="color: red;" id="errorMobile">*</span>
                                </div>
                                <div class="input-box">
                                    <span class="details">Password</span>
                                    <input onkeyup="validatePassword()" id="password" name="password" type="password"
                                           placeholder="Enter your password" required>
                                    <span style="color: red;" id="errorPassword">*</span>
                                </div>
                                <div class="input-box">
                                    <span class="details">Confirm Password</span>
                                    <input onkeyup="validateCPassword()"  id="cpassword" name="cpassword" type="password" placeholder="Confirm your password" required>
                                    <span style="color: red;" id="errorCPassword">*</span>
                                </div>
                            </div>
                            <div class="gender-details">
                                <input type="radio" name="gender" id="dot-1" value="male">
                                <input type="radio" name="gender" id="dot-2" value="female">
                                <input type="radio" name="gender" id="dot-3" value="other">
                                <span style="color: red;" id="errorgender">*</span>
                                <span class="gender-title">Gender</span>
                                <div class="category">
                                    <label for="dot-1">
                                        <span class="dot one"></span>
                                        <span class="gender">Male</span>
                                    </label>
                                    <label for="dot-2">
                                        <span class="dot two"></span>
                                        <span class="gender">Female</span>
                                    </label>
                                    <label for="dot-3">
                                        <span class="dot three"></span>
                                        <span class="gender">Other</span>
                                    </label>
                                </div>
                            </div>
                            <div class="button">
                                <input onsubmit="validatName" type="submit" value="Register">
                            </div>
                        </form>
                    </div>
                    <div  style="color: red; align-items: center;"><span id="error"></span></div>
                </div>
                <div>
                </div>

                <!--start java-Script(Validation) -->
                <script>
                    function validateName() {
                        const nameInput = document.getElementById('name');
                        const errorName = document.getElementById('errorName');
                        const nameValue = nameInput.value.trim();
                        const namePattern = /^[A-Za-z\s]+$/; // Only allows alphabetic characters and spaces

                        if (nameValue === '') {
                            errorName.textContent = 'Name is required';
                            return false;
                        } else if (!namePattern.test(nameValue)) {
                            errorName.textContent = 'Name  contain alphabetic characters';
                            return false;
                        } else {
                            errorName.textContent = '';
                            return true;
                        }
                    }

                    function validateFName() {
                        const fatherInput = document.getElementById('father');
                        const errorFName = document.getElementById('errorFName');
                        const fatherValue = fatherInput.value.trim();
                        const fNamePattern = /^[A-Za-z\s]+$/; // Only allows alphabetic characters and spaces

                        if (fatherValue === '') {
                            errorFName.textContent = "Father's Name is required";
                            return false;
                        } else if (!fNamePattern.test(fatherValue)) {
                            errorFName.textContent = "Father Name contain alphabetic characters ";
                            return false;
                        } else {
                            errorFName.textContent = '';
                            return true;
                        }
                    }

                    function validateEmail() {
                        const emailInput = document.getElementById('email');
                        const errorEmail = document.getElementById('errorEmail');
                        const emailValue = emailInput.value.trim();
                        const emailPattern = /^[A-Za-z0-9._-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;

                        if (emailValue === '') {
                            errorEmail.textContent = 'Email is required';
                            return false;
                        } else if (!emailPattern.test(emailValue)) {
                            errorEmail.textContent = 'Invalid email format';
                            return false;
                        } else {
                            errorEmail.textContent = '';
                            return true;
                        }
                    }

                    function validateMobile() {
                        const mobileInput = document.getElementById('mobile');
                        const errorMobile = document.getElementById('errorMobile');
                        const mobileValue = mobileInput.value.trim();
                        const mobilePattern = /^\d{10}$/; // Allows only 10 digits

                        if (mobileValue === '') {
                            errorMobile.textContent = 'Mobile number is required';
                            return false;
                        } else if (!mobilePattern.test(mobileValue)) {
                            errorMobile.textContent = 'Mobile number should be 10 digits';
                            return false;
                        } else {
                            errorMobile.textContent = '';
                            return true;
                        }
                    }

                    function validatePassword() {
                        const passwordInput = document.getElementById('password');
                        const cpasswordInput = document.getElementById('cpassword');
                        const errorPassword = document.getElementById('errorPassword');

                        const passwordValue = passwordInput.value;
                        const cpasswordValue = cpasswordInput.value;

                        if (passwordValue.length < 8) {
                            errorPassword.textContent = 'Password must be at least 8 characters';
                            return false;
                        } else if (passwordValue !== cpasswordValue) {
                            errorPassword.textContent = 'Passwords do not match';
                            return false;
                        } else {
                            errorPassword.textContent = '';
                            return true;
                        }
                    }

                    function validateForm() {
                        return (
                                validateName() &&
                                validateFName() &&
                                validateEmail() &&
                                validateMobile() &&
                                validatePassword()
                                );
                    }
                </script>

                </body>

                </html>


                <% 
       
                    String check = request.getParameter("name");  
                    if(check!=null){
                        Connection con = null;
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject", "root", "root");
                                System.out.println("Connection succes");

                                String sql = "select * from registrationdata where email=? OR mobile=?";

                                String name = request.getParameter("name");
                                String father = request.getParameter("father");
                                String email = request.getParameter("email");
                                String mobile = request.getParameter("mobile");
                                String password = request.getParameter("password");
                                String cpassword = request.getParameter("cpassword");

                                PreparedStatement ps = con.prepareStatement(sql);

                                ps.setString(1, email);
                                ps.setString(2, mobile);

                                ResultSet rs = ps.executeQuery();

                                if (rs.next()) {
                    
                %>                  
                <script>
                    let error = document.getElementById("error");

                    error.innerHTML = "Account Allready Ecxist";
                </script>
                <%
                //   response.sendRedirect("Registration.jsp");
                } else {

                    sql = "insert into registrationdata (name,father,email,password, mobile,gender) values(?,?,?,?,?,?)";

                    name = request.getParameter("name");
                    father = request.getParameter("father");
                    email = request.getParameter("email");
                    password = request.getParameter("password");

                    String gender = request.getParameter("gender");

                  

                    ps = con.prepareStatement(sql);

                    ps.setString(1, name);
                    ps.setString(2, father);
                    ps.setString(3, email);
                    ps.setString(4, password);
                    ps.setString(5, mobile);
                    ps.setString(6, gender);

                    int a = ps.executeUpdate();
                    if (a > 0) {
                        System.out.println("Inserted data");
                        response.sendRedirect("Login.jsp");
                    }
                }

                } catch (IOException | ClassNotFoundException | SQLException e) {

                  response.sendRedirect("Registration.jsp");

                } 
                }


                %>                