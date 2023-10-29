<%-- 
    Document   : EditeProfile
    Created on : 29-Oct-2023, 12:48:17 am
    Author     : Mohan_Maali
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page import = " java.sql.ResultSet"%>
<!DOCTYPE html>
<html>

    <head>
        <title>User Information Change</title>
        <!-- Add Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Add custom CSS -->
        <style>
            /*            body {
                            background-color: #ffffff;
                            font-family: Arial, sans-serif;
                        }*/

            .container {

                margin-top: 60px;
                background-color: #f7f5f5;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                width: 40%;

            }



        </style>
    </head>

    <body>

        <% 
            ResultSet rs = (ResultSet)session.getAttribute("rs");
        %>



        <jsp:include page="Navvar.jsp" />

        <div class="container">
            <h2>User Information</h2>
            <form action="" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input value="<%=rs.getString("fullName")%>" name="name" onkeyup="validateName()" type="text" class="form-control" id="name"
                           placeholder="Enter your new name">
                    <span id="nameError" style="color: red;">&nbsp;</span>
                </div>
                <div class="form-group">
                    <label for="userName">UserName:</label>
                    <input value="<%=rs.getString("username")%>"  name="username" onkeyup=" validateUserName()" type="text" class="form-control" id="userName"
                           placeholder="Enter your User name">
                    <span id="userError">&nbsp;</span>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input value="<%=rs.getString("email")%>" name="email" onkeyup="validateEmail()" type="email" class="form-control" id="email"
                           placeholder="Enter your email">
                    <span id="emailError">&nbsp;</span>
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile:</label>
                    <input value="<%=rs.getString("mobile")%>" name="mobile" onkeyup="validateMobile()" type="tel" class="form-control" id="mobile"
                           placeholder="Enter your mobile number">
                    <span id="mobileError">&nbsp;</span>
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <select name="gender" class="form-control" id="gender">
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Update Information</button>
                <span id="Error">&nbsp;</span>
            </form>

        </div>


        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>

    <!--------------js------------------------>
    <script>
                        function validateUserName() {
                            const usernameInput = document.getElementsByName("username")[0];
                            const userError = document.getElementById("userError");
                            const usernameValue = usernameInput.value.trim();
                            const usernamePattern = /^[a-zA-Z0-9_]{5,}$/; // Allows at least 5 alphanumeric characters or underscores

                            if (usernameValue === '') {
                                userError.style.color = "red";
                                userError.textContent = 'Username is required';
                                return false;
                            } else if (!usernamePattern.test(usernameValue)) {
                                userError.style.color = "red";
                                userError.textContent = 'Username should have at least 5 alphanumeric characters or underscores';
                                return false;
                            } else {
                                userError.style.color = 'green';
                                userError.textContent = '\u2713';
                                return true;
                            }
                        }

                        function validateEmail() {
                            const emailInput = document.getElementsByName("email")[0];
                            const emailError = document.getElementById("emailError");
                            const emailValue = emailInput.value.trim();
                            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

                            if (emailValue === '') {
                                emailError.style.color = "red";
                                emailError.textContent = 'Email is required';
                                return false;
                            } else if (!emailPattern.test(emailValue)) {
                                emailError.style.color = "red";
                                emailError.textContent = 'Invalid email format';
                                return false;
                            } else {
                                emailError.style.color = 'green';
                                emailError.textContent = '\u2713';
                                return true;
                            }
                        }

                        function validateName() {
                            const nameInput = document.getElementsByName("name")[0];
                            const nameError = document.getElementById("nameError");
                            const nameValue = nameInput.value.trim();
                            const namePattern = /^[A-Za-z\s]+$/; // Only allows alphabetic characters and spaces

                            if (nameValue === '') {
                                nameError.style.color = "red";
                                nameError.textContent = 'Name is required';
                                return false;
                            } else if (!namePattern.test(nameValue)) {
                                nameError.style.color = "red";
                                nameError.textContent = 'Name only allows alphabetic characters';
                                return false;
                            } else {
                                nameError.style.color = 'green';
                                nameError.textContent = '\u2713';
                                return true;
                            }
                        }

                        function validateMobile() {
                            const mobileInput = document.getElementsByName("mobile")[0];
                            const mobileError = document.getElementById("mobileError");
                            const mobileValue = mobileInput.value.trim();
                            const mobilePattern = /^\d{10}$/; // Allows only 10 digits

                            if (mobileValue === '') {
                                mobileError.style.color = "red";
                                mobileError.textContent = 'Mobile number is required';
                                return false;
                            } else if (!mobilePattern.test(mobileValue)) {
                                mobileError.style.color = "red";
                                mobileError.textContent = 'Mobile number should be 10 digits';
                                return false;
                            } else {
                                mobileError.style.color = 'green';
                                mobileError.textContent = '\u2713';
                                return true;
                            }
                        }

                        function ValidateForm() {
                            const isUserNameValid = validateUserName();
                            const isEmailValid = validateEmail();
                            const isNameValid = validateName();
                            const isMobileValid = validateMobile();

                            // You can implement overall form validation here
                            // Return true if all fields are valid, otherwise return false
                            if (isUserNameValid && isEmailValid && isNameValid && isMobileValid) {
                                return true;
                            } else {
                                return false;
                            }
                        }
    </script>

    <!-------------js-------->
</html>


<%
        
   int userid = rs.getInt(1);
if(request.getParameter("name")!=null)
{ 

        String userName = request.getParameter("username");
          String name = request.getParameter("name");
            String email = request.getParameter("email");
              String mobile = request.getParameter("mobile");
                String gender = request.getParameter("gender");

%>

<sql:setDataSource
    var="dataSource"
    driver="com.mysql.cj.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/Myproject"
    user="root"
    password="root"
    />

<sql:update dataSource="${dataSource}">
    Update user_details set userName = ?,fullName=?, email=?, mobile=?, gender =? where userId = ?
    <sql:param value="<%= userName %>" />
    <sql:param value="<%= name %>" />
    <sql:param value="<%= email %>" />
    <sql:param value="<%= mobile %>" />
    <sql:param value="<%= gender %>" />
    <sql:param value="<%= userid %>" />
</sql:update>


   <sql:query dataSource="${dataSource}" var="result">
    SELECT * FROM user_details WHERE userId=?
     <sql:param value="<%= userid %>"/>
</sql:query> 
   <c:set var="result" value="${sessionScope.rs}" /> 

<%

     response.sendRedirect("Profile.jsp");
                
 }
%>