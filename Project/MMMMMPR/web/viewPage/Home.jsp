<%-- 
    Document   : Home
    Created on : 26-Oct-2023, 1:49:45 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = " java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">




    <% 
//     response.setHeader("Cache-Control", "No-cache");
//     response.setHeader("Cache-Control", "No-store");
response.setHeader("Cache-Control", "no-cache, no-store");

     ResultSet rs = (ResultSet)session.getAttribute("rs"); 

     if(rs!=null)
     {
        
      
    %>
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
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contectt</a></li>
                            <li><a href="#">Work</a></li>
                            <li><a href="LogOut.jsp">Log Out</a></li>
                            <label for="check" class="close-menu"><i class="fas fa-times"></i></label>
                        </span>
                        <label for="check" class="open-menu"><i class="fas fa-bars"></i></label>
                    </ul>
                </nav>
            </header>
            <!-- -------------------------- -->
            <div class="main">
                <p>WELCOME TO MY WORLD</p>
                <p>Hi, I'm <span class="name">mmmm</span><br>a student. at <span>INFOBEANS FOUNDETION</span></p>
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
                        <a href="EditeP.jsp">Edit profile</a>
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
        <!------------------------------------->




        <!------------------------------->
    </body>

</html>



<%

      
 }else{
     response.sendRedirect("LogIn.jsp"); 
}



%>