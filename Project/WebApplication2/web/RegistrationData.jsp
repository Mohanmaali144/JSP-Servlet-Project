<%-- 
    Document   : RegistrationData
    Created on : 21-Oct-2023, 12:30:10 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="registration.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>
            /* Custom CSS for form fields */

        </style>
        <title>Registration Form</title>
    </head>
    <body>
        <div class="container">
            <h2>Registration Form</h2>
            <form  action="UserInfo.jsp" id="registrationForm" onsubmit="return validateForm()">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="firstName">First Name</label>
                        <input name="firstName" type="text" class="form-control custom-form-control" id="firstName" placeholder="First Name" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="lastName">Last Name</label>
                        <input  name="lastName" type="text" class="form-control custom-form-control" id="lastName" placeholder="Last Name" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userName">User Name</label>
                    <input  name="userName" type="text" class="form-control custom-form-control" id="userName" placeholder="User Name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email ID</label>
                    <input  name="email" type="email" class="form-control custom-form-control" id="email" placeholder="Email ID" required>
                </div>
                <div class="form-group">
                    <label for="mobileNumber">Mobile Number</label>
                    <input  name="mobileNumber" type="text" class="form-control custom-form-control" id="mobileNumber" placeholder="Mobile Number" required>
                </div>
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <select  name="gender" class="form-control custom-form-control" id="gender" required>
                        <option value="">Select</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="dob">Date of Birth</label>
                    <input  name="dob" type="date" class="form-control custom-form-control" id="dob" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="input-group">
                        <input  name="password" type="password" class="form-control custom-form-control" id="password" placeholder="Password" required>
                        <div class="input-group-append">
                            <span class="input-group-text">
                                <i id="passwordToggle" class="fa fa-eye" onclick="togglePassword()"></i>
                            </span>
                        </div>
                    </div>
                </div>
                
              
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <div class="input-group">
                        <input type="password" class="form-control custom-form-control" id="confirmPassword" placeholder="Confirm Password" required>
                        <div class="input-group-append">
                            <span class="input-group-text">
                                <i id="confirmPasswordToggle" class="fa fa-eye" onclick="toggleConfirmPassword()"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <button type="button" class="btn btn-secondary"><a href="index.html">Back</a></button>
            </form>
        </div>

        <script>
            function validateForm() {
                var firstName = document.getElementById("firstName").value;
                var lastName = document.getElementById("lastName").value;
                var userName = document.getElementById("userName").value;
                var email = document.getElementById("email").value;
                var mobileNumber = document.getElementById("mobileNumber").value;
                var gender = document.getElementById("gender").value;
                var dob = document.getElementById("dob").value;
                var password = document.getElementById("password").value;
                var confirmPassword = document.getElementById("confirmPassword").value;

                if (firstName === "" || lastName === "" || userName === "" || email === "" || mobileNumber === "" || gender === "" || dob === "" || password === "" || confirmPassword === "") {
                    alert("All fields are required. Please fill out all the fields.");
                    return false;
                }

                if (password !== confirmPassword) {
                    alert("Passwords do not match. Please make sure the password and confirm password match.");
                    return false;
                }

                return true;
            }

            function togglePassword() {
                var passwordInput = document.getElementById("password");
                var passwordToggle = document.getElementById("passwordToggle");
                if (passwordInput.type === "password") {
                    passwordInput.type = "text";
                    passwordToggle.className = "fa fa-eye-slash";
                } else {
                    passwordInput.type = "password";
                    passwordToggle.className = "fa fa-eye";
                }
            }

            function toggleConfirmPassword() {
                var confirmPasswordInput = document.getElementById("confirmPassword");
                var confirmPasswordToggle = document.getElementById("confirmPasswordToggle");
                if (confirmPasswordInput.type === "password") {
                    confirmPasswordInput.type = "text";
                    confirmPasswordToggle.className = "fa fa-eye-slash";
                } else {
                    confirmPasswordInput.type = "password";
                    confirmPasswordToggle.className = "fa fa-eye";
                }
            }
        </script>



    </body>
</html>

