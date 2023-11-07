<%-- 
    Document   : Registration
    Created on : 04-Nov-2023, 10:41:02 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>SHOES-SHOP REGISTARTION</title>
    <link rel="stylesheet" href="./css/RegistrationStyle.css">
</head>

<body>
    <div class="form-wrapper">
        <div class="form-side">
            
            <form action="/ShoesShop/RegistrationServlet" class="my-form">
                <div class="login-welcome-row">
                    <h1>Create your account &#x1F44F;</h1>
                </div>
                <div class="socials-row">
                    <a href="#" title="Use Google">
                        <img src="assets/google.png" alt="Google">
                        Sign up with Google
                    </a>
                    <a href="#" title="Use Apple">
                        <img src="assets/apple.png" alt="Apple">
                        Sign up with Apple
                    </a>
                </div>
                <div class="divider">
                    <span class="divider-line"></span>
                    Or
                    <span class="divider-line"></span>
                </div>
                

                <div class="text-field">
                    <label for="email">Fullname:
                        <input type="text" id="Fullname" name="fullname" autocomplete="off" placeholder="Fullname"
                            required>
                        <!-- svg icon -->
                    </label>
                </div>

                <div class="text-field">
                    <label for="email">Username:
                        <input type="text" id="Username" name="username" autocomplete="off" placeholder="Username"
                            required>
                        <!-- svg icon -->
                    </label>
                </div>

                <div class="text-field">
                    <label for="dob">Address:
                        <input type="text" id="dob" name="address" autocomplete="off" placeholder="Address"
                            required>
                        <!-- svg icon -->
                    </label>
                </div>

                <div class="text-field">
                    <label for="dob">Mobile:
                        <input type="text" maxlength="10" id="mobile" name="mobile" autocomplete="off" placeholder="Phone - no"
                            required>
                        <!-- svg icon -->
                    </label>
                </div>
                
                <div class="text-field">
                    <label for="email">Email:
                        <input type="email" id="email" name="email" autocomplete="off" placeholder="Your Email"
                            required>
                        <!-- svg icon -->
                    </label>
                </div>
                <div class="text-field">
                    <label for="password">Password:
                        <input id="password" type="password" name="password" placeholder="Your Password" title="Minimum 6 characters at 
                                                        least 1 Alphabet and 1 Number"
                            pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$" required>
                        <!-- svg icon -->
                    </label>
                </div>
                <div class="text-field">
                    <label for="confirm-password">Repeat Password:
                        <input id="confirm-password" type="password" name="password" placeholder="Repeat Password"
                            title="Minimum 6 characters at east 1 Alphabet and 1 Number"
                            pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$" required>
                        <!-- svg icon -->
                    </label>
                </div>
                <button class="my-form__button" type="submit">
                    Sign up
                </button>
                <div class="my-form__actions">
                    <div class="my-form__row">
                        <span>Did you forget your password?</span>
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
        
    <script src="js/signup1.js"></script>
</body>

</html>