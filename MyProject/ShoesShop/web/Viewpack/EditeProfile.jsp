<%-- 
    Document   : EditeProfile
    Created on : 07-Nov-2023, 7:25:12 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>SHOES-SHOP REGISTARTION</title>
        <link rel="stylesheet" href="./css/RegistrationStyle.css">
    </head>

    <body>

        <% String msg = (String)session.getAttribute("msg");
            
            if(msg==null)
            {
                   msg = ""; 
            }

        
            ResultSet rs =(ResultSet)session.getAttribute("rs");%>

        <div class="form-wrapper">
            <div class="form-side">

                <form action="/ShoesShop/UpdateController" class="my-form" onsubmit="validation()">
                    <div class="login-welcome-row">
                        <h1>Update your account &#x1F44F;</h1>
                    </div>
                    <div class="socials-row">                  
                    </div>

                    <div class="text-field">
                        <label for="email">Fullname:
                            <input onkeyup="namevalidation()" type="text" id="Fullname" name="fullname" autocomplete="off" value="<%=rs.getString("name")%>"
                                   placeholder="Fullname" required>
                            <span id="errorname">&nbsp;</span>
                        </label>
                    </div>

                    <div class="text-field">
                        <label for="email">Username:
                            <input onkeyup="unamevalidation()" type="text" id="Username" name="username" autocomplete="off" value="<%=rs.getString("username")%>"
                                   placeholder="Username" required>
                            <span id="errorusername">&nbsp;</span>
                        </label>
                    </div>


                    <div class="text-field">
                        <label for="email">Email:
                            <input onkeyup="emailvalidation()" type="email" id="email" name="email" autocomplete="off" value="<%=rs.getString("email")%>"
                                   placeholder="Your Email" required>
                            <span id="erroremail">&nbsp;</span>
                        </label>
                    </div>


                    <div class="text-field">
                        <label for="dob">Mobile:
                            <input onkeyup="mobilevalidation()" type="text" maxlength="10" id="mobile" name="mobile" value="<%=rs.getString("mobile")%>"
                                   autocomplete="off" placeholder="Phone - no" required>
                            <span id="errormobile">&nbsp;</span>
                        </label>
                    </div>

                    <div class="text-field">
                        <label for="address">Address:
                            <input onkeyup="advalidation()" type="text" id="address" name="address" autocomplete="off" value="<%=rs.getString("address")%>"
                                   placeholder="Address" required>
                            <span id="erroraddress">&nbsp;</span>
                        </label>
                    </div>
                    <button class="my-form__button" type="submit">
                        Update
                    </button>
                    <span id="errormain">&nbsp;</span>
                    <div class="my-form__actions">
                        <div class="my-form__row">
                            <!--                            <span>Did you forget your password?</span>-->
                            <span><%=msg%></span>
                            <a href="#" title="Reset Password">
                                Reset Password
                            </a>
                        </div>
                        <div class="my-form__signup">
                            <a href="index.html" title="Login">
                                Back
                            </a>
                        </div>
                    </div>
                </form>
            </div>

            <!-- <script src="js/signup1.js"></script> -->

            <script>

                function validation() {

                    var namestatus = namevalidation();
                    var unamestatus = unamevalidation();
                    var emailstatus = emailvalidation();
                    var mobilestatus = mobilevalidation();
                    var passwordstatus = passwordvalidation();
                    // var cpasswordstatus = cvalidation();
                    var addressstatus = advalidation();

                    return namestatus && unamestatus && emailstatus && mobilestatus && addressstatus;
                }
                function namevalidation() {

                    var fullNameInput = document.getElementById('Fullname');
                    var fullNameMsg = document.getElementById('errorname');
                    var fullName = fullNameInput.value;

                    if (!/^[A-Za-z]+$/.test(fullName)) {
                        fullNameMsg.textContent = "Invalid";
                        return false;
                    } else {
                        fullNameMsg.textContent = ""; // Clear the message if it's valid.
                        return true;
                    }

                }
                function unamevalidation() {

                    var usernameInput = document.getElementById('Username');
                    var usernameMsg = document.getElementById('errorusername');
                    var username = usernameInput.value;

                    if (username.length < 5 || username == "") {
                        usernameMsg.textContent = "Invalid";
                        return false;
                    } else {
                        usernameMsg.textContent = ""; // Clear the message if it's valid.
                        return true;
                    }

                }
                function emailvalidation() {
                    var emailInput = document.getElementById('email');
                    var emailMsg = document.getElementById('erroremail');
                    var email = emailInput.value;

                    if (!/^[A-Za-z0-9._%+-]+@(gmail\.com|yahoo\.com)$/.test(email)) {
                        emailMsg.textContent = "Invalid";
                        return false;
                    } else {
                        emailMsg.textContent = ""; // Clear the message if it's valid.
                        return true;
                    }

                }
                function mobilevalidation() {
                    var phnoInput = document.getElementById('mobile');
                    var phnoMsg = document.getElementById('errormobile');
                    var phoneNumber = phnoInput.value;

                    if (!/^[9876]\d{9}$/.test(phoneNumber)) {
                        phnoMsg.textContent = "Invalid";
                        return false;
                    } else {
                        phnoMsg.textContent = ""; // Clear the message if it's valid.
                        return true;

                    }

                }


                function advalidation() {
                    var address = document.getElementById('address');
                    var add = address.value;
                    var addressmsg = document.getElementById('erroraddress');
                    if (add == "" || add == null) {
                        addressmsg.textContent = "invalid address";
                        return false;
                    } else {
                        addressmsg.textContent = "";
                        return true;
                    }
                }
            </script>



    </body>

</html>