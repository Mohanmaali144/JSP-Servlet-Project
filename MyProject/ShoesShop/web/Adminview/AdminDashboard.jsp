

<%-- 
    Document   : AdminProfile
    Created on : 11-nov-2023, 3:37:17 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.ResultSet"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./Admincss/AdminDashboard.css">
    </head>
    <body>

        <%--<jsp:include page="AdminNav.jsp" />--%>


        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <!-- nav bar -->
        
        
        <!-------------------------------------------------------------->
        
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container"> 
          <a class="navbar-brand" href="#"><span class="text-warning">Build</span>Con</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link" href="#home">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#about">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#services">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#portfolio">Portfolio</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#team">Team</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#contact">Contact</a>
              </li>
              
            </ul>
           
          </div>
        </div>
      </nav>
        
        
        
        
        
        
        
        
        <!---------------------------------------------------------------------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <a href="mail-compose.html" class="btn btn-warning btn-block btn-compose-email">Compose Email</a>
                    <ul class="nav nav-pills nav-stacked nav-email shadow mb-20">

                        <li>
                            <a href="#">
                                <i class="fa fa-folder-open"></i> Admin
                            </a>
                        </li>
                    </ul>
                    <br>
                    <a href="mail-compose.html" class="btn btn-warning btn-block btn-compose-email">More-Work</a>
                    <ul class="nav nav-pills nav-stacked nav-email mb-20 rounded shadow">


                        <li>
                            <a href="#">
                                <i class="fa fa-folder-open"></i> Admin
                            </a>
                        </li>
                    </ul>
                    <br>
                    <a href="mail-compose.html" class="btn btn-warning btn-block btn-compose-email">More</a>
                    <ul class="nav nav-pills nav-stacked nav-email mb-20 rounded shadow">
                        <li>
                            <a href="#">
                                <i class="fa fa-folder-open"></i> Admin
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-9">

                    <!-- resumt -->
                    <div class="panel panel-default">
                        <div class="panel-heading resume-heading">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="col-xs-12 col-sm-4">
                                        <figure>
                                            <img class="img-circle img-responsive" alt="" src="http://placehold.it/150x150">
                                        </figure>
                                        <div class="row">
                                            <div class="col-xs-12 social-btns">
                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                    <a href="#" class="btn btn-social btn-block btn-google">
                                                        <i class="fa fa-google"></i> </a>
                                                </div>
                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                    <a href="#" class="btn btn-social btn-block btn-facebook">
                                                        <i class="fa fa-facebook"></i> </a>
                                                </div>
                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                    <a href="#" class="btn btn-social btn-block btn-twitter">
                                                        <i class="fa fa-twitter"></i> </a>
                                                </div>
                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                    <a href="#" class="btn btn-social btn-block btn-linkedin">
                                                        <i class="fa fa-linkedin"></i> </a>
                                                </div>
                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                    <a href="#" class="btn btn-social btn-block btn-github">
                                                        <i class="fa fa-github"></i> </a>
                                                </div>
                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                    <a href="#" class="btn btn-social btn-block btn-stackoverflow">
                                                        <i class="fa fa-stack-overflow"></i> </a>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-8">
                                        <ul class="list-group">
                                            <li class="list-group-item">&nbsp;<%="fullname"%></li>
                                            <li class="list-group-item">&nbsp;<%="AdminI"%></li>
                                            <li class="list-group-item">Male</li>

                                            <li class="list-group-item">&nbsp;<i class="fa fa-phone"></i> <%="7876565656"%></li>
                                            <li class="list-group-item">&nbsp;<i class="fa fa-envelope"></i> <%="email"%></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div> <br>
                        <div class="bs-callout bs-callout-danger">
                            <h4>Summary</h4>
                            <p>
                                Lorem ipsum dolor sit amet, ea vel prima adhuc, scripta liberavisse ea quo, te vel vidit mollis complectitur. Quis verear mel ne. Munere vituperata vis cu, 
                                te pri duis timeam scaevola, nam postea diceret ne. Cum ex quod aliquip mediocritatem, mei habemus persecuti mediocritatem ei.
                            </p>
                            <p>
                                Odio recteque expetenda eum ea, cu atqui maiestatis cum. Te eum nibh laoreet, case nostrud nusquam an vis. 
                                Clita debitis apeirian et sit, integre iudicabit elaboraret duo ex. Nihil causae adipisci id eos.
                            </p>
                        </div>
                        <div class="bs-callout bs-callout-danger">
                            <h4>Research Interests</h4>
                            <p>
                                Software Engineering, Machine Learning, Image Processing,
                                Computer Vision, Artificial Neural Networks, Data Science,
                                Evolutionary Algorithms.
                            </p>
                        </div>
                        <!-- --  
                          <div class="bs-callout bs-callout-danger">
                             <h4>Key Expertise</h4>
                             <ul class="list-group">
                                <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc </li>
                                <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                                <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                                <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                                <li class="list-group-item">Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                                <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                             </ul>
                          </div>
                        -->

                    </div>
                </div>
                <!-- resume -->

            </div>
        </div>
</body>
</html>


