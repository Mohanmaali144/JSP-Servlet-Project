<%-- 
    Document   : Registration
    Created on : 25-Oct-2023, 1:54:30 pm
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
        <link rel="stylesheet" href="RegistrationStyle.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


    </head>

    <body>

        <div id="image-contener">
            <img src="./image/regisr.svg" alt="">
        </div>

        <div class="container">
            <div class="title">Registration</div>
            <div class="content">
                <form action="">
                    <div class="user-details">
                        <div class="input-box">
                            <span class="details">Full Name</span>
                            <input id="name" onkeyup="validatName()" name="name" type="text" placeholder="Enter your name"
                                   required>
                            <span style="color: red;" id="errorName">*</span>
                        </div>
                        <div class="input-box">
                            <span class="details">Father name</span>
                            <input id="father" onkeyup="validatFName()" name="father" type="text"
                                   placeholder="Enter your Father Name" required>
                            <span style="color: red;" id="errorFName">*</span>
                        </div>
                        <div class="input-box">
                            <span class="details">Email</span>
                            <input onkeyup="validatEmail()" id="email" name="email" type="text"
                                   placeholder="Enter your email" required>
                            <span style="color: red;" id="errorEmail">*</span>
                        </div>
                        <div class="input-box">
                            <span class="details">Phone Number</span>
                            <input onkeyup="validatMobile()" id="mobile" name="mobile" type="text"
                                   placeholder="Enter your number" required>
                            <span style="color: red;" id="errorMobile">*</span>
                        </div>
                        <div class="input-box">
                            <span class="details">Password</span>
                            <input onkeyup="validatPassword()" id="password" name="password" type="password"
                                   placeholder="Enter your password" required>
                            <span style="color: red;" id="errorPassword">*</span>
                        </div>
                        <div class="input-box">
                            <span class="details">Confirm Password</span>
                            <input onkeyup="validatCPassword()"  id="cpassword" name="cpassword" type="password" placeholder="Confirm your password" required>
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


        <!--start java-Script(Validation) -->
        <script>

            function validatName() {
                let name = document.getElementById("name");
                let errorName = document.getElementById("errorName");
                if (name.value.trim() == "") {

                    errorName.innerHTML = "Field requird";
                    errorName.style.color = "red";
                    return false;
                } else {
                    let reg = /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
                    if (reg.test(name.value)) {

//                        errorName.innerHTML = "valid";
//                        errorName.style.color = "green";
                        return true;
                    } else {

                        errorName.innerHTML = "invalid";
                        errorName.style.color = "purple";
                        return false;
                    }
                }
            }

            function validatFName() {
                let fname = document.getElementById("father");
                let errorFName = document.getElementById("errorFName");
                if (fname.value.trim() == "") {

                    errorFName.innerHTML = "Field requird";
                    errorFName.style.color = "red";
                    return false;
                } else {
                    let reg = /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
                    if (reg.test(fname.value)) {

//                        errorFName.innerHTML = "valid";
//                        errorFName.style.color = "green";
                        return true;
                    } else {

                        errorFName.innerHTML = "invalid";
                        errorFName.style.color = "purple";
                        return false;
                    }
                }
            }


            function validatEmail() {
                let email = document.getElementById("email");
                let errorEmail = document.getElementById("errorEmail");
                if (email.value == "") {

                    errorEmail.innerHTML = "Field requird";
                    errorEmail.style.color = "red";
                    return false;
                } else {
                    const reg = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-_+.]+([a-zA-Z]{2,5})$/;
                    // let reg =  /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                    if (reg.test(email.value)) {

//                        errorEmail.innerHTML = "valid";
//                        errorEmail.style.color = "green";
                        return true;
                    } else {

                        errorEmail.innerHTML = "invalid";
                        errorEmail.style.color = "purple";
                        return false;
                    }
                }
            }


            function validatMobile() {
                let mobile = document.getElementById("mobile");
                let errorMobile = document.getElementById("errorMobile");
                if (mobile.value == "") {

                    errorMobile.innerHTML = "Field requird";
                    errorMobile.style.color = "red";
                    return false;
                } else {
                    let reg = /^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;
                    if (reg.test(mobile.value)) {

//                        errorMobile.innerHTML = "valid";
//                        errorMobile.style.color = "green";
                        return true;
                    } else {

                        errorMobile.innerHTML = "invalid";
                        errorMobile.style.color = "purple";
                        return false;
                    }
                }
            }

            let password = document.getElementById("password");
            function validatPassword() {
                // let password = document.getElementById("password");
                let errorPassword = document.getElementById("errorPassword");
                if (password.value == "") {

                    errorPassword.innerHTML = "Field requird";
                    errorPassword.style.color = "red";
                    return false;
                } else {
                    // let reg =;
                    if (password.value != null && password.value != " ") {

                        errorPassword.innerHTML = "valid";
                        errorPassword.style.color = "green";
                        return true;
                    } else {

                        errorPassword.innerHTML = "invalid";
                        errorPassword.style.color = "purple";
                        return false;
                    }
                }
            }


            function validatCPassword() {
                let cpassword = document.getElementById("cpassword");
                let errorcPassword = document.getElementById("errorCPassword");
                if (cpassword.value == "") {

                    errorcPassword.innerHTML = "Field requird";
                    errorcPassword.style.color = "red";
                    return false;
                } else {
                    // let reg =;
                    if (password.value == cpassword.value) {

                        errorcPassword.innerHTML = "valid";
                        errorcPassword.style.color = "green";
                        return true;
                    } else {

                        errorcPassword.innerHTML = "invalid";
                        errorcPassword.style.color = "purple";
                        return false;
                    }
                }
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
        response.sendRedirect("LogIn.jsp");
    }
}

} catch (IOException | ClassNotFoundException | SQLException e) {

response.sendRedirect("Registration.jsp");

} finally {
try {
    con.close();
} catch (SQLException ex) {

}
}
}


%>