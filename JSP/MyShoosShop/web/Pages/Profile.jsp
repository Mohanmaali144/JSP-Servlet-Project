<%-- 
    Document   : Profile
    Created on : 29-Oct-2023, 1:16:22 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = " java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./css/ProfileStyle.css">

        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    </head>


    <jsp:include page="Navvar.jsp" />
    <body>
        <% 
             ResultSet rs = (ResultSet)session.getAttribute("rs");
        %>

        <div class="page-content page-container" id="page-content">
            <div class="padding">
                <div class="row container d-flex justify-content-center">
                    <div class="col-xl-6 col-md-12">
                        <div class="card user-card-full">
                            <div class="row m-l-0 m-r-0">
                                <div class="col-sm-4 bg-c-lite-green user-profile">
                                    <div class="card-block text-center text-white">
                                        <div class="m-b-25">
                                            <img id="profileimage" src="./img/product1/1.jpg" class="img-radius"
                                                 alt="User-Profile-Image">
                                        </div>
                                        <h6 class="f-w-600">Mohan Maali</h6>
                                        <p>Infobean</p>
                                        <a href="EditeProfile.jsp"><i class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16">Edite</i></a>
                                    </div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="card-block">
                                        <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <p class="m-b-10 f-w-600">Name</p>
                                                <h6 class="text-muted f-w-400"><%=rs.getString("fullname")%></h6>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="m-b-10 f-w-600">UserName</p>
                                                <h6 class="text-muted f-w-400"><%=rs.getString("userName")%></h6>
                                            </div>
                                        </div>
                                        <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Contect</h6>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <p class="m-b-10 f-w-600"><%=rs.getString("mobile")%></p>
                                                <h6 class="text-muted f-w-400">8976457809</h6>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="m-b-10 f-w-600">Email</p>
                                                <h6 class="text-muted f-w-400"><%=rs.getString("email")%></h6>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-sm-6">
                                                <p class="m-b-10 f-w-600">Gender</p>
                                                <h6 class="text-muted f-w-400">Male</h6>
                                            </div>
                                            <div class="col-sm-6">
                                                <p class="m-b-10 f-w-600">Address</p>
                                                <h6 class="text-muted f-w-400"><%=rs.getString("address")%></h6>
                                            </div>
                                        </div>

                                        <!-- <ul class="social-link list-unstyled m-t-40 m-b-10">
                                            <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title=""
                                                    data-original-title="facebook" data-abc="true"><i
                                                        class="mdi mdi-facebook feather icon-facebook facebook"
                                                        aria-hidden="true"></i></a></li>
                                            <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title=""
                                                    data-original-title="twitter" data-abc="true"><i
                                                        class="mdi mdi-twitter feather icon-twitter twitter"
                                                        aria-hidden="true"></i></a></li>
                                            <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title=""
                                                    data-original-title="instagram" data-abc="true"><i
                                                        class="mdi mdi-instagram feather icon-instagram instagram"
                                                        aria-hidden="true"></i></a></li>
                                        </ul> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>