<%-- 
    Document   : EmployeePasswordUpdate
    Created on : 09-Nov-2023, 5:56:22 am
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

                <form action="/ShoesShop/EmpPasswordUpdate" class="my-form" onsubmit="validation()">
                    <div class="login-welcome-row">
                        <h1>Reset password &#x1F44F;</h1>
                    </div>
                    <div class="socials-row">

                    </div>
                    <div class="divider">

                    </div>
                    <div class="text-field">
                        <label for="password">Old Password:
                            <input onkeyup="passwordvalidation()" id="oldpassword" type="password" name="oldpassword"
                                   placeholder="Your Old Password" required>
                            <span >&nbsp;</span>
                        </label>
                    </div>

                    <div class="text-field">
                        <label for="password">New Password:
                            <input onkeyup="passwordvalidation()" id="password" type="password" name="newpassword"
                                   placeholder="Your New Password" title="Minimum 6 characters at 
                                   least 1 Alphabet and 1 Number"
                                   pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$" required>
                            <span id="errorpassword">&nbsp;</span>
                        </label>
                    </div>

                    <div class="text-field">
                        <label for="confirm-password">Conferm Password:
                            <input onkeyup="cpasswordvalidation()" id="confirm-password" type="password" name="cpassword"
                                   placeholder="Repeat Password" title="Minimum 6 characters at east 1 Alphabet and 1 Number"
                                   pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$" required>
                            <span id="errorcpassword">&nbsp;</span>
                        </label>
                    </div>

                    <button class="my-form__button" type="submit">
                        Change Password
                    </button>
                    <span id="errormain">&nbsp;</span>
                    <div class="my-form__actions">

                        <div class="my-form__signup">
                            <a href="EditeProfile.jsp" >
                                Back
                            </a>
                        </div>
                    </div>
                </form>
            </div>

            <!-- <script src="js/signup1.js"></script> -->

            <script>

                function validation() {


                    var passwordstatus = passwordvalidation();
                    // var cpasswordstatus = cvalidation();


                    return  passwordstatus && cpasswordvalidation();
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