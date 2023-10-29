<%-- 
    Document   : Home
    Created on : 26-Oct-2023, 1:49:45 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = " java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
    <% ResultSet rs = (ResultSet)session.getAttribute("rs");  %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
              integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
              crossorigin="anonymous" referrerpolicy="no-referrer"   />
        <title>Mohan Maali</title>

        <!----------------------------------->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>-->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>-->
        <!--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>-->
        <!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>-->
        <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">-->
        <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">-->
        <!------------------------------------>
    </head>

    <body>

        <div style="overflow: hidden;">
            <header>
                <nav>
                    <ul class='nav-bar'>
                        <!--                        <li class='logo'><a href='EditeProfile.jsp'><img src='./image/mohan.jpg' /><span id="logoname">MP</span></a></li>-->

                        <!--                        <li class='logo'> <a data-toggle="modal" data-target="#centralModalInfo"><img src='./image/mohan.jpg' /><span id="logoname">MP</span></a></li>-->

                        <li class='logo'> <a data-toggle="modal" data-target="#myModal" data-toggle="modal"
                                             data-target="#centralModalInfo"><img src='./image/mohan.jpg' /><span
                                    id="logoname">MP</span></a></li>


                        <input type='checkbox' id='check' />
                        <span class="menu">
                            <li><a href="Index.html">Home</a></li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="contect.html">Contect</a></li>
                            <li><a href="">Work</a></li>
                            <li><a href="LogIn.jsp">Log Out</a></li>
                            <label for="check" class="close-menu"><i class="fas fa-times"></i></label>
                        </span>
                        <label for="check" class="open-menu"><i class="fas fa-bars"></i></label>
                    </ul>
                </nav>
            </header>
            <!-- -------------------------- -->
            <div class="main">
                <p>WELCOME TO MY WORLD</p>
                <p>Hi, I'm <span class="name"><%=rs.getString("name")%></span><br> a student. at <span>INFOBEANS FOUNDETION</span></p>
                <span class="paragraph">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione consequatur
                    doloremque,
                    molestias culpa
                    dolore autem animi sint repudiandae officiis! Ipsa, optio numquam. Nostrum, dolorem molestias? Dolor ex
                    aperiam voluptatum optio?</span>
            </div>
            <div class="home-image">
                <img src="./image/mohan.jpg" alt="profile image">
                <!-- <span>Mohan Maali</span> -->
            </div>
        </div>
        <!----------------------------------->




        <!-- Central Modal Medium Info-->

        <!-- Modal -->
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button class="btn btn-success" data-toggle="modal" data-target="#modalCoupon">Edit profile</button>
                    </div>
                    <div class="modal-body">
                        <center><a href=""><img id="profileimage" src="image/mohan.jpg" alt=""></a>
                        </center>                       
                        <div id="profilediv" class="container container-fluid">
                            <div class="container container-fluid" style="margin-top: 20px;">Name : <%=rs.getString("name")%></div>
                            <div class="container container-fluid">father name :<%=rs.getString("father")%></div>
                            <div class="container container-fluid">Gmail : <%=rs.getString("email")%></div>
                            <div class="container container-fluid">Gander :<%=rs.getString("gender")%></div>
                            <div class="container container-fluid">Ph no :<%=rs.getString("mobile")%></div>




                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <!-------->

        <!-- ------------------------- -->

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
                                                        <input onkeyup="validatName()" id="name" type="text" name="name"
                                                               class="form-control" value="<%= rs.getString("name") %>"
                                                               required>
                                                        <span style="color: red;" id="errorName">*</span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <div class="form-group">
                                                        <label class="profile_details_text">Father Name: </label>
                                                        <input onkeyup="validatFName()" id="father" type="text"
                                                               name="father" class="form-control" value="<%= rs.getString("father") %>" required>
                                                        <span style="color: red;" id="errorFName">*</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="form-group">
                                                        <label class="profile_details_text">Email Address:</label>
                                                        <input onkeyup="validatEmail()" id="email" type="email" name="email"
                                                               class="form-control" value="<%= rs.getString(" email") %>"
                                                               required>
                                                        <span style="color: red;" id="errorEmail">*</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="form-group">
                                                        <label class="profile_details_text">Mobile Number:</label>
                                                        <input onkeyup="validatMobile()" id="mobile" type="tel"
                                                               name="mobile" class="form-control" value="<%=rs.getString("mobile")%>" required>
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


                                        <div style="color: red; align-items: center;"><span id="error"></span></div>
                                    </div>
                                </div>

                            </div>
                            <!-- ---------------mycode -->
                            <div></div>
                            <a style="width: 300px;" type="button" class="btn btn-outline-success waves-effect"
                               data-dismiss="modal"> No, thanks</a>
                        </div>
                    </div>
                    <!-------->


                    <div class="modal-footer">
                        <div><a href="#changepassword" data-toggle="modal" data-target="#changepassword">Changepassword</a></div>
                    </div>
                </div>


                <!------->
            </div>
            <!--/.Content-->
        </div>
    </div>
    <!--Modal: modalCoupon-->



    <!-- change password -->
    <div class="modal fade top" id="changepassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true" data-backdrop="true">
        <div class="modal-dialog modal-frame modal-top modal-notify modal-success" role="document">
            <!--Content-->
            <div class="modal-content">
                <!--Body-->
                <div class="modal-header">
                    Reset Password
                </div>
                <div class="modal-body">
                    <div class="row d-flex justify-content-center align-items-center">
                        <!------------------- mycode------------- -->
                        <div style="display: flex; justify-content: center; flex-direction: row;">
                            <div class="container">
                                <div>
                                    <form action="" method="POST">
                                        <div class="col">
                                            <div class=" changepassword">
                                                <div class="form-group">
                                                    <input onkeyup="validatName()" id="oldpassword" type="password"
                                                           name="oldpassword" class="form-control"
                                                           placeholder="Old password" required>
                                                    <span style="color: red;" id="errorName">*</span>
                                                </div>
                                            </div>
                                            <div class=" changepassword">
                                                <div class="form-group">
                                                    <input onkeyup="validatFName()" id="newpassword" type="password"
                                                           name="newpassword" class="form-control"
                                                           placeholder="New password" required>
                                                    <span style="color: red;" id="errorFName">*</span>
                                                </div>
                                            </div>
                                            <div class=" changepassword">
                                                <div class="form-group">
                                                    <input onkeyup="validatFName()" id="cpassword" type="password"
                                                           name="cpassword" class="form-control"
                                                           placeholder="confirm password" required>
                                                    <span style="color: red;" id="errorFName">*</span>
                                                </div>
                                            </div>
                                        </div>


                                        <div style="color: red; align-items: center;"><span id="error"></span></div>
                                </div>
                            </div>
                        </div>
                        <!-- ---------------mycode -->
                        <div></div>
                        <button style="width: 300px;" type="button" class="btn btn-outline-success waves-effect"
                                data-dismiss="modal"> Change</button>
                    </div>
                    </form>
                </div>
            </div>
            <!--/.Content-->
        </div>
    </div>
    <!--Modal: modalCoupon-->




    <!------------------------------->
</body>

</html>