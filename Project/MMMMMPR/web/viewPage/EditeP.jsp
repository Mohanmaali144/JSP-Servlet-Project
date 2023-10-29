<%-- 
    Document   : EditeP
    Created on : 26-Oct-2023, 7:02:11 pm
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
<html lang="en">

    <% 
    ResultSet rs=(ResultSet)session.getAttribute("rs");
       if(rs!=null)              
  {   
    String name1 = rs.getString("name");
    
    %>

    <head>     
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
              integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
              crossorigin="anonymous" referrerpolicy="no-referrer"   />
        <title>Mohan Maali</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="EditeStyle.css">
    </head>

    <body>

        <div style="overflow: hidden;">
            <header>
                <nav>
                    <ul class='nav-bar'>
                        <li class='logo'> <a data-toggle="modal" data-target="#myModal" data-toggle="modal"
                                             data-target="#centralModalInfo"><img src='./image/mohan.jpg' /><span
                                    id="logoname">MP</span></a></li>
                        <input type='checkbox' id='check' />
                        <span class="menu">
                            <li><a href="Home.jsp">Home</a></li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="contect.html">Contect</a></li>
                            <li><a href="">Work</a></li>
                            <li><a href="LogOut.jsp">Log Out</a></li>
                            <label for="check" class="close-menu"><i class="fas fa-times"></i></label>
                        </span>
                        <label for="check" class="open-menu"><i class="fas fa-bars"></i></label>
                    </ul>
                </nav>
            </header>
            <!--user profile section-->  
            <!-------------------------------------------------------------------------------,--> 
            <!--edit field start here--> 
            <div class="container" >
                <div
                    class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-12 col-xs-12 edit_information">
                    <form action=""   onsubmit="return mainValid()">
                        <h3 class="text-center">Edit Profile</h3>
                        <div class="row">
                            <div  class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <input onkeyup="validateName()" id="name" type="text" name="name" class="form-control"
                                           value="<%=name1%>" required placeholder="enter name">
                                    <span style="color: red;" id="errorName">*</span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div  class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <input onkeyup="validateFName()" id="father" type="text" name="father" class="form-control"
                                           value="<%=rs.getString("father")%>" required placeholder="enter Father Name">
                                    <span style="color: red;" id="errorFName">*</span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <input  onkeyup="validateEmail()" id="email" type="email" name="email" class="form-control"
                                            value="<%=rs.getString("email")%>" required placeholder="enter email-id">
                                    <span style="color: red;" id="errorEmail">*</span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <input  onkeyup="validatesMobile()"  id="mobile" type="tel" name="mobile" class="form-control"
                                            value="<%=rs.getString("mobile")%>" required placeholder="enter mobile number">
                                    <span style="color: red;" id="errorMobile">*</span>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <select name="gender" class="form-control" id="gender" value="" required>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Female">Other</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 submit">
                                <div class="form-group">
                                    <input style="width: 300px;" type="submit" class="btn btn-success" name="submit"
                                           value="Submitt">
                                </div>
                            </div>
                        </div>
                    </form>
                    <div><a href="#changepassword" data-toggle="modal" data-target="#changepassword">Change password</a></div>
                </div>
                <div  style="color: red; align-items: center;">&nbsp;&nbsp;&nbsp;&nbsp;<span id="error1"></span></div>
            </div>
        </div>


        <!--edit filed end here-->  
        <!-------------------------------------------------------------------------------------------------------------> 

        <!-------------------------------------------------------------------------------------------------------------> 



        <div class="modal fade top" id="changepassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true" data-backdrop="true">
            <div class="modal-dialog modal-frame modal-top modal-notify modal-success" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        Reset Password
                    </div>
                    <div class="modal-body">
                        <div class="row d-flex justify-content-center align-items-center">
                            <div style="display: flex; justify-content: center; flex-direction: row;">
                                <div class="container">
                                    <div>
                                        <form action="" method="POST" onsubmit="return passwordValid()" >
                                            <div class="col">
                                                <div class=" changepassword">
                                                    <div class="form-group">
                                                        <input id="oldpassword" type="password" name="oldpassword" class="form-control"
                                                               placeholder="Old password"   required>
                                                        <span style="color: red;" >*</span>
                                                    </div>
                                                </div>
                                                <div class=" changepassword">
                                                    <div class="form-group">
                                                        <input onkeyup="validatPassword()" id="newpassword" type="password" name="newpassword" class="form-control"
                                                               placeholder="New password" required>
                                                        <span style="color: red;" id="errorPassword">*</span>
                                                    </div>
                                                </div>
                                                <div class=" changepassword">
                                                    <div class="form-group">
                                                        <input id="cpassword" type="password" name="cpassword" class="form-control"
                                                               placeholder="confirm password" required>
                                                        <span style="color: red;" id="errorcPassword">*</span>
                                                    </div>
                                                </div>
                                                <div class=" changepassword">
                                                    <div class="form-group">
                                                        <button style="width: 250px;" type="submit" class="btn btn-primary">Submit</button>
                                                        <div  style="color: red; align-items: center;"><span id="error"></span></div>
                                                    </div>
                                                </div>

                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                            <div></div>
                            <a style="width: 250px;" type="button" class="btn btn-outline-success waves-effect" data-dismiss="modal" >cancel</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!------------------java script validation---->
        <script>
            // Function to validate the name field
            function validateName() {
                const nameInput = document.getElementById('name');
                const errorName = document.getElementById('errorName');
                const nameValue = nameInput.value.trim();
                const namePattern = /^[A-Za-z\s]+$/; // Only allows alphabetic characters and spaces

                if (nameValue === '') {
                    errorName.textContent = 'Name is required';
                    return false;
                } else if (!namePattern.test(nameValue)) {
                    errorName.textContent = 'Name can only alphabetic characters';
                    return false;
                } else {
                    errorName.textContent = '';
                    return true;
                }
            }

            // Function to validate the father's name field
            function validateFName() {
                const fatherInput = document.getElementById('father');
                const errorFName = document.getElementById('errorFName');
                const fatherValue = fatherInput.value.trim();
                const fNamePattern = /^[A-Za-z\s]+$/; // Only allows alphabetic characters and spaces

                if (fatherValue === '') {
                    errorFName.textContent = "Father's Name is required";
                    return false;
                } else if (!fNamePattern.test(fatherValue)) {
                    errorFName.textContent = "Father Name can only  alphabetic characters";
                    return false;
                } else {
                    errorFName.textContent = '';
                    return true;
                }
            }

            // Function to validate the email field
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

            // Function to validate the mobile number field
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

            // Function to validate the entire form
            function mainValid() {
                const isNameValid = validateName();
                const isFNameValid = validateFName();
                const isEmailValid = validateEmail();
                const isMobileValid = validateMobile();

                return isNameValid && isFNameValid && isEmailValid && isMobileValid;
            }

//-----------------------------password validation--------
            function validatePassword() {
                const oldPasswordInput = document.getElementById('oldpassword');
                const newPasswordInput = document.getElementById('newpassword');
                const confirmPasswordInput = document.getElementById('cpassword');
                const errorPassword = document.getElementById('errorPassword');
                const errorcPassword = document.getElementById('errorcPassword');

                const oldPassword = oldPasswordInput.value.trim();
                const newPassword = newPasswordInput.value.trim();
                const confirmPassword = confirmPasswordInput.value.trim();

                // Check if old password is not empty
                if (oldPassword === '') {
                    errorPassword.textContent = 'Old password is required';
                    return false;
                } else {
                    errorPassword.textContent = '';
                }

                // Check if new password is not empty and meets your criteria
                if (newPassword === '') {
                    errorPassword.textContent = 'New password is required';
                    return false;
                } else if (newPassword.length < 8) {
                    errorPassword.textContent = 'New password must be at least 8 characters';
                    return false;
                } else {
                    errorPassword.textContent = '';
                }

                // Check if confirm password matches new password
                if (newPassword !== confirmPassword) {
                    errorcPassword.textContent = 'Passwords do not match';
                    return false;
                } else {
                    errorcPassword.textContent = '';
                }

                return true;
            }

            function passwordValid() {
                if (validatePassword()) {
                    return true; // Passwords are valid, allow form submission
                } else {
                    // Passwords are not valid, display an error message
                    const errorSpan = document.getElementById('error');
                    errorSpan.textContent = 'Please correct the errors in the form.';
                    return false;
                }
            }
        </script>
        <!-----------------java Script--------------------->
    </body>

</html>

<!--------------------Java Backend-------------------------->
<% 

    
        
//            response.sendRedirect("LogIn.jsp");
        
        

//        <%ResultSet rs=(ResultSet)session.getAttribute("rs");
//        if(rs==null)
//        {
//        
//            response.sendRedirect("LogIn.jsp");
//        }
//        
 String ss=request.getParameter("submit");
 if(ss.equals("Submitt"))
 {
String check = request.getParameter("name");  

if(check!=null){
Connection con = null;
try {
Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject", "root", "root");
System.out.println("Connection succes");



String sql = "Update registrationdata set name = ? , father =?,email =? ,mobile =? ,gender= ? where sno = ?" ;

String  name = request.getParameter("name");
String  father = request.getParameter("father");
String email = request.getParameter("email");
String gender = request.getParameter("gender");
String mobile = request.getParameter("mobile");


int sno = rs.getInt("sno");



PreparedStatement ps = con.prepareStatement(sql);

ps.setString(1, name);
ps.setString(2, father);
ps.setString(3, email.toLowerCase());
ps.setString(4, mobile);
ps.setString(5, gender);
ps.setInt(6, sno);

int a = ps.executeUpdate();
if (a > 0) {
 System.out.println("Inserted OR Update data"); 
 String sql10 = "select * from registrationdata" ;    
     ps = con.prepareStatement(sql10);     
   rs =ps.executeQuery(); 
    if(rs.next()){
    session.setAttribute("rs",rs);
%>
<jsp:forward page="LogIn.jsp"/>

<%}
}

} catch (Exception e) {
System.out.println(e);
%>
<script>

    let error = document.getElementById("error1");
    error.innerHTML = "Account Allready Exist";</script> 
    <%

    } 
    }
}


    //    -------------------------Change Password-------------------------
    

    String newpassword = request.getParameter("newpassword");
    if(newpassword!=null){
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject", "root", "root");
            System.out.println("Connection succes");


    newpassword = request.getParameter("newpassword");
    if(newpassword!=null)
    {      
    String old = request.getParameter("oldpassword");
    String cpassword = request.getParameter("Opassword");
    String pass = rs.getString("password");
    int sno2 = rs.getInt("sno");
        
    if(pass.equals(old))
    {
       String sql = "Update registrationdata set password = ? where sno = ?" ;
        PreparedStatement   ps = con.prepareStatement(sql);
             
         ps.setString(1,newpassword);
         ps.setInt(2,sno2);
        int b = ps.executeUpdate();
        if(b>0)
        {
         System.out.println("code");
        }
    }
    else{
        

    %>
<script>
    let error = document.getElementById("error");
    error.innerHTML = "Old Password incorrect";
</script>
<% 
//     System.out.println("Old Password incorrect");
     System.out.println(old);
}
        
}
    
    
}catch(Exception e) {

System.out.println(e);
response.sendRedirect("Home.jsp");

}
}
//    -------------------------Change Password-------------------------  
}else{  response.sendRedirect("LogIn.jsp");
}

%>



<!--------------------Java Backend-------------------------->