<%-- 
    Document   : EmployeeLogin
    Created on : 09-Nov-2023, 4:27:08 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Login Example</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/LoginStyle.css"> 
        <!--<link rel="stylesheet" href="login.css">-->
    </head>

    <body>
        <div class="login-wrapper">
            <div class="login-side">

                <div class="my-form__wrapper">
                    <div class="login-welcome-row">
                        <h1>Welcome back &#x1F44F;</h1>
                        <p>Please enter your details!</p>
                    </div>
                    <form action="/ShoesShop/EmployeeLoginController" class="my-form" onsubmit="return validation()">
                        <div class="socials-row">                         
                        </div>
                        <div class="divider">
                            <div class="divider-line"></div>

                            <div class="divider-line"></div>
                        </div>
                        <div class="text-field">
                            <label for="email">Email:</label>
                            <input onkeyup="emailvalidation()" type="text" id="email" name="email"
                                   placeholder="Your Email" required>                         
                            <span id="erroremail">&nbsp;</span>
                        </div>
                        <div class="text-field">
                            <label for="password">Password:</label>
                            <input onkeyup="passwordvalidation()" id="password" type="password" name="password"
                                   placeholder="Your Password" required>                          
                            <span id="errorpassword">&nbsp;</span>
                        </div>
                        <input type="submit" class="my-form__button" value="Login">
                        <span id="mainerror">&nbsp;</span>
                        <div class="my-form__actions">
                            <div class="my-form__row">
                                <span><a href="">Forget your password?</a></span>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="info-side">
                <img src="assets/mock.png" alt="Mock" class="mockup">
                <div class="welcome-message">
                    <h2>Shoes-shop! 👋</h2>
                    <p>
                        Your ultimate guide to navigating the world
                        and discovering new places with ease.
                    </p>
                </div>
            </div>
        </div>
        <!-- <script src="js/login.js"></script> -->
        <script>

            function validation() {


                var emailstatus = unamevalidation();
                var passwordstatus = passwordvalidation();


                return emailstatus && passwordstatus;
            }

            function emailvalidation() {

                var emailInput = document.getElementById('email');
                var emailMsg = document.getElementById('erroremail');
                var email = emailInput.value;

                if (email == "" || email == null) {
                    emailMsg.textContent = "email requird";
                    return false;
                } else {
                    emailMsg.textContent = ""; // Clear the message if it's valid.
                    return true;
                }

            }


            function passwordvalidation() {

                var passwordInput = document.getElementById('password');
                var passwordMsg = document.getElementById('errorpassword');
                var password = passwordInput.value;

                if (password == "" || password == null) {
                    passwordMsg.textContent = "password requird";
                    return false;
                } else {
                    passwordMsg.textContent = "";
                    return true;
                }
            }
        </script>




    </body>

</html>