<%-- 
    Document   : EditeProfile
    Created on : 26-Oct-2023, 12:03:17 am
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

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <!--<link rel="stylesheet" href="css/style.css">-->

    </head>

    <body>
        <!--Section: Live preview-->
        <% ResultSet rs=(ResultSet)session.getAttribute("rs"); %>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCoupon">Edite Profile</button>

        <!--Modal: modalCoupon-->
        <div class="modal fade top" id="modalCoupon" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true" data-backdrop="true">
            <div class="modal-dialog modal-frame modal-top modal-notify modal-success" role="document">
                <!--Content-->
                <div class="modal-content">
                    <!--Body-->
                    <div class="modal-body">
                        <div class="row d-flex justify-content-center align-items-center">
                            <!------------------- mycode------------- -->
                            <div style="display: flex; justify-content: center; flex-direction: row;">
                                <div class="container">
                                    <div
                                        class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-12 col-xs-12 edit_information">
                                        <form action="" method="POST">
                                            <h3 class="text-center">Edit Profile</h3>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <div class="form-group">
                                                        <label class="profile_details_text"> Name:</label>
                                                        <input onkeyup="validatName()" id="name" type="text" name="name" class="form-control"
                                                               value= "<%= rs.getString("name") %>" required>
                                                        <span style="color: red;" id="errorName">*</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <div class="form-group">
                                                        <label class="profile_details_text">Father Name: </label>
                                                        <input onkeyup="validatFName()" id="father" type="text" name="father" class="form-control"
                                                               value="<%= rs.getString("father") %>" required>
                                                        <span style="color: red;" id="errorFName">*</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="form-group">
                                                        <label class="profile_details_text">Email Address:</label>
                                                        <input  onkeyup="validatEmail()" id="email" type="email" name="email" class="form-control"
                                                                value="<%= rs.getString("email") %>" required>
                                                        <span style="color: red;" id="errorEmail">*</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="form-group">
                                                        <label class="profile_details_text">Mobile Number:</label>
                                                        <input  onkeyup="validatMobile()"  id="mobile" type="tel" name="mobile" class="form-control"
                                                                value="<%=rs.getString("mobile")%>" required>
                                                        <span style="color: red;" id="errorMobile">*</span>

                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="form-group">
                                                        <label class="profile_details_text">Gender:</label>
                                                        <select name="gender" class="form-control" value="gender" required>
                                                            <option value="Male">Male</option>
                                                            <option value="Female">Female</option>
                                                            <option value="Female">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 submit">
                                                    <div class="form-group">
                                                        <input style="width: 300px;" type="submit" class="btn btn-success"
                                                               value="Submit">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>

                                        <div  style="color: red; align-items: center;"><span id="error"></span></div>
                                    </div>
                                </div>

                            </div>
                            <!-- ---------------mycode -->
                            <div></div>
                            <a style="width: 300px;" type="button" class="btn btn-outline-success waves-effect" data-dismiss="modal" > No, thanks</a>
                        </div>
                    </div>
                </div>
                <!--/.Content-->
            </div>
        </div>
        <!--Modal: modalCoupon-->
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

                        errorName.innerHTML = "valid";
                        errorName.style.color = "green";
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

                        errorFName.innerHTML = "valid";
                        errorFName.style.color = "green";
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

                        errorEmail.innerHTML = "valid";
                        errorEmail.style.color = "green";
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

                        errorMobile.innerHTML = "valid";
                        errorMobile.style.color = "green";
                        return true;
                    } else {

                        errorMobile.innerHTML = "invalid";
                        errorMobile.style.color = "purple";
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

        ResultSet rs3 = ps.executeQuery();

        session.setAttribute("rs", rs3);
        response.sendRedirect("EditeProfile.jsp");
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
  



} catch (IOException | ClassNotFoundException | SQLException e) {

//    System.out.println(e);
    response.sendRedirect("EditeProfile.jsp");

} finally {
try {
    con.close();
} catch (SQLException ex) {

}
}
}
%>