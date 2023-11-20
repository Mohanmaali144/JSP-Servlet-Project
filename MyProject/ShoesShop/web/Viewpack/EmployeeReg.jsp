<%-- 
    Document   : EmployeeReg
    Created on : 09-Nov-2023, 04:07:02 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>SHOES-SHOP Employee-REGISTARTION</title>

        <link rel="stylesheet" href="./css/RegistrationStyle.css">
    </head>

    <body>
        <div class="form-wrapper">
            <div class="form-side">

                <form action="/ShoesShop/EmployeeRegController" class="my-form" onsubmit="return validation()">
                    <div class="login-welcome-row">
                        <h1>Register Employee account &#x1F44F;</h1>
                    </div>
                    <div class="socials-row">

                    </div>
                    <div class="divider">
                        <span class="divider-line"></span>

                        <span class="divider-line"></span>
                    </div>

                    <div class="text-field">
                        <label for="email">Fullname:
                            <input onkeyup="namevalidation()" type="text" id="Fullname" name="fullname" autocomplete="off"
                                   placeholder="Fullname" required>
                            <span id="errorname">&nbsp;</span>
                        </label>
                    </div>

                    <div class="text-field">
                        <label for="email">Email:
                            <input onkeyup="emailvalidation()" type="email" id="email" name="email" autocomplete="off"
                                   placeholder="Your Email" required>
                            <span id="erroremail">&nbsp;</span>
                        </label>
                    </div>


                    <div class="text-field">
                        <label for="dob">Mobile:
                            <input onkeyup="mobilevalidation()" type="text" maxlength="10" id="mobile" name="mobile"
                                   autocomplete="off" placeholder="Phone - no" required>
                            <span id="errormobile">&nbsp;</span>
                        </label>
                    </div>


                    <div class="">
                        <label for="dob">Gender:
                            male  <input value="male" type="radio" id="gender" name="gender" required> 
                            female  <input value="female" type="radio" id="gender" name="gender" required> 
                            other  <input value="other" type="radio" id="gender" name="gender" required> 

                        </label>
                    </div>

                    <div class="text-field">
                        <label for="password">Password:
                            <input onkeyup="passwordvalidation()" id="password" type="password" name="password"
                                   placeholder="Your Password" title="Minimum 6 characters at 
                                   least 1 Alphabet and 1 Number"
                                   pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$" required>
                            <span id="errorpassword">&nbsp;</span>
                        </label>
                    </div>
                    <div class="text-field">
                        <label for="confirm-password">Repeat Password:
                            <input onkeyup="cpasswordvalidation()" id="confirm-password" type="password" name="password"
                                   placeholder="Repeat Password" title="Minimum 6 characters at east 1 Alphabet and 1 Number"
                                   pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$" required>
                            <span id="errorcpassword">&nbsp;</span>
                        </label>
                    </div>
                    <button class="my-form__button" type="submit">
                        Sign up
                    </button>
                    <span id="errormain">&nbsp;</span>
                    <div class="my-form__actions">    
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

                    var emailstatus = emailvalidation();
                    var mobilestatus = mobilevalidation();
                    var passwordstatus = passwordvalidation();
                    // var cpasswordstatus = cvalidation();
                    var addressstatus = advalidation();

                    return namestatus && emailstatus && mobilestatus && passwordstatus;
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
                function passwordvalidation() {

                    var passwordInput = document.getElementById('password');
                    var passwordMsg = document.getElementById('errorpassword');
                    var password = passwordInput.value;

                    if (password.length < 6 || password == "" || password == null) {
                        passwordMsg.textContent = "create strong password";
                        return false;
                    } else {
                        passwordMsg.textContent = "";
                        return true;
                    }

                }

                function cpasswordvalidation() {
                    var passwordInput = document.getElementById('password');
                    var password = passwordInput.value;
                    var cpasswordInput = document.getElementById('confirm-password');
                    var cpasswordMsg = document.getElementById('errorcpassword');
                    var cpassword = cpasswordInput.value;

                    if (cpassword != password) {
                        cpasswordMsg.textContent = "conferm password should we same";
                        return false;
                    } else if (cpassword.trim() == "" || cpassword == null) {
                        cpasswordMsg.textContent = "invalid";
                        return false;
                    } else {
                        cpasswordMsg.textContent = "";
                        return true;
                    }

                }


            </script>



    </body>

</html>