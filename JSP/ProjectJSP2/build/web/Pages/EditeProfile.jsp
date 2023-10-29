<%-- 
    Document   : EditeProfile
    Created on : 27-Oct-2023, 10:21:49 pm
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


    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="EditeStyle.css">
    </head>

    <body>

        <jsp:include page="Navvar.jsp"/>

        <%
    
       ResultSet rs = (ResultSet)session.getAttribute("rs");
        
       String name1 = rs.getString("name");
       String father1 = rs.getString("father");
       String email1 = rs.getString("email");
       String mobile1 = rs.getString("mobile");
      
    
        %>


        <div class="wrapper">
            <div class="profile">
                <div class="content">
                    <h1>Edit Profile</h1>
                    <form action=""  onsubmit="return mainValidate()" >
                        <!-- Photo -->
                        <fieldset>
                            <div class="grid-35">
                                <!-- <label for="avatar">Your Photo</label> -->
                            </div>
                            <div class="grid-65">
                                <span class="photo" title="Upload your Avatar!"></span>
                                <input type="file" class="btn"  />
                            </div>
                        </fieldset>
                        <fieldset>
                            <div class="grid-35">
                                <label for="fname">First Name</label>
                            </div>
                            <div class="grid-65">
                                <input onkeyup="validateName()" name="name" type="text" id="fname" tabindex="1" value="<%=name1%>" />                           
                            </div>
                            <div class="grid-65"><span style="color: red;" id="errorName">&nbsp;</span></div>
                        </fieldset>
                        <fieldset>
                            <div class="grid-35">
                                <label for="lname">Father Name</label>
                            </div>
                            <div class="grid-65">
                                <input onkeyup="validateFname()" name="father" type="text" id="lname" value="<%=father1%>" />
                            </div>
                            <div class="grid-65"><span style="color: red;" id="errorFame">&nbsp;</span></div>
                        </fieldset>

                        <fieldset>
                            <div class="grid-35">
                                <label for="email">Email </label>
                            </div>
                            <div class="grid-65">
                                <input onkeyup="validateEmail()" name="email" type="email" id="email" tabindex="6" value="<%=email1%>"/>
                            </div>
                            <div class="grid-65"><span style="color: red;" id="errorEmail">&nbsp;</span></div>
                        </fieldset>
                        <!-- Country -->
                        <fieldset>
                            <div class="grid-35">
                                <label for="country">Mobile</label>
                            </div>
                            <div class="grid-65">
                                <input onkeyup="validateMobile()" name="mobile" type="text" id="country" value="<%=mobile1%>"  />
                            </div>
                            <div class="grid-65"><span style="color: red;" id="errorMobile">&nbsp;</span></div>
                        </fieldset>

                        <!-- Looking for Work -->
                        <fieldset>
                            <div class="grid-35">
                                <label for="forHire">Gender</label>
                            </div>
                            <div class="grid-65">
                                <select name="gender" id="forHire" tabindex="7" >
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                        </fieldset>
                        <!-- Highest Qualification -->


                        <fieldset>
                            <input type="button" class="Btn cancel" value="Cancel" />
                            <input type="submit" class="Btn" value="Save Changes" />
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>



        <script>
            function validateName() {
                const fnameInput = document.getElementById('fname');
                const errorName = document.getElementById('errorName');
                const fnameValue = fnameInput.value.trim();
                const namePattern = /^[A-Za-z\s]+$/; // Only allows alphabetic characters and spaces

                if (fnameValue === '') {
                    errorName.textContent = 'First Name is required';
                    return false;
                } else if (!namePattern.test(fnameValue)) {
                    errorName.textContent = 'Name contain alphabetic characters';
                    return false;
                } else {
                    errorName.textContent = '';
                    return true;
                }
            }

            function validateFname() {
                const lnameInput = document.getElementById('lname');
                const errorFame = document.getElementById('errorFame'); // Keep the original ID
                const lnameValue = lnameInput.value.trim();
                const lnamePattern = /^[A-Za-z\s]+$/; // Only allows alphabetic characters and spaces

                if (lnameValue === '') {
                    errorFame.textContent = "Father Name is required"; // Keep the original ID
                    return false;
                } else if (!lnamePattern.test(lnameValue)) {
                    errorFame.textContent = "Father Name can alphabetic characters "; // Keep the original ID
                    return false;
                } else {
                    errorFame.textContent = ''; // Keep the original ID
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
                const mobileInput = document.getElementById('country');
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

            function mainValidate() {
                const isFnameValid = validateName();
                const isLnameValid = validateFname();
                const isEmailValid = validateEmail();
                const isMobileValid = validateMobile();

                return isFnameValid && isLnameValid && isEmailValid && isMobileValid;
            }
        </script>

    </body>

</html>

<%
//    ResultSet rs = (ResultSet)session.getAttribute("rs");
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
  
     int  sno = rs.getInt("sno");

                  

   PreparedStatement ps = con.prepareStatement(sql);

    ps.setString(1, name);
    ps.setString(2, father);
    ps.setString(3, email);
    ps.setString(4, mobile);
    ps.setString(5, gender);
      ps.setInt(6, sno);

    int a = ps.executeUpdate();
    if (a > 0) {
        System.out.println("Inserted data");  
        response.sendRedirect("profile.jsp");
    }

//    -------------------------Change Password-------------------------
    
    String newpassword = request.getParameter("password");
    if(newpassword!=null)
    {
        
        String old = request.getParameter("Opassword");
        String cpassword = request.getParameter("Opassword");
        String pass = rs.getString("password");
        int sno2 = rs.getInt("sno");
        
        if(pass.equals(old))
        {
            sql = "Update registrationdata set password = ? where sno = ?" ;
             ps = con.prepareStatement(sql);
             
             ps.setString(1,newpassword);
             ps.setInt(2,sno2);
            int b =ps.executeUpdate();
            if(b>0)
            {
             System.out.println("code");
            }
            if(b>0)
            {
                System.out.println("code");
            }
        }
        else{
        
            System.out.println("Old Password incorrect");
        }
        
    }
//    -------------------------Change Password-------------------------  
  



} catch (Exception e) {

//    System.out.println(e);
    response.sendRedirect("Home.jsp");

} finally {
try {
    con.close();
} catch (SQLException ex) {

}
}
}
%>