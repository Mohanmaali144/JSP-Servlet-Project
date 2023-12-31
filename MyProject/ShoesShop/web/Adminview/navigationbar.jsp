<%-- 
    Document   : navigationbar
    Created on : 10-Nov-2023, 11:44:08 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">



    </head>
    <body>
        <link rel="stylesheet" type="text/css" href="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1561306648/feather.css">
        <script src="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1561306741/pcoded.min.js"></script>
        <script src="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1561306749/vertical-layout.min.js"></script>
        <div id="pcoded" class="pcoded">
            <div class="pcoded-overlay-box"></div>
            <div class="pcoded-container navbar-wrapper">
                <nav class="navbar header-navbar pcoded-header">
                    <div class="navbar-wrapper">
                        <div class="navbar-logo text-center">
                            <small class="text-center" style="color:#fff; font-size: 16px;">BBBOOTSTRAP.COM</small>


                            <a class="mobile-options waves-effect waves-light">
                                <i class="feather icon-more-horizontal"></i>
                            </a>
                        </div>
                        <div class="navbar-container container-fluid">
                            <ul class="nav-left">
                                <li class="header-search">
                                    <div class="main-search morphsearch-search">
                                        <div class="input-group">
                                            <span class="input-group-prepend search-close">
                                                <i class="feather icon-x input-group-text"></i>
                                            </span>
                                            <input type="text" class="form-control" placeholder="Enter Keyword">
                                            <span class="input-group-append search-btn">
                                                <i class="feather icon-search input-group-text"></i>
                                            </span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <a href="#!" onclick="javascript:toggleFullScreen()" class="waves-effect waves-light">
                                        <i class="full-screen feather icon-maximize"></i>
                                    </a>
                                </li>
                            </ul>
                            <ul class="nav-right">
                                <li class="header-notification">
                                    <div class="dropdown-primary dropdown">
                                        <div class="dropdown-toggle" data-toggle="dropdown">
                                            <i class="feather icon-bell"></i>
                                            <span class="badge bg-c-red">5</span>
                                        </div>
                                        <ul class="show-notification notification-view dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                            <li>
                                                <h6>Notifications</h6>
                                            </li>
                                            <li>
                                                <div class="media">
                                                    <img class="img-radius" src="https://img.icons8.com/clouds/100/000000/user.png" alt="Generic placeholder image">
                                                    <div class="media-body">
                                                        <h5 class="notification-user">Samba Holo</h5>
                                                        <p class="notification-msg">Samba changed the user settings</p>
                                                        <span class="notification-time">30 minutes ago</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="media">
                                                    <img class="img-radius" src="https://img.icons8.com/color/48/000000/edit-profile-skin-type-7.png" alt="Generic placeholder image">
                                                    <div class="media-body">
                                                        <h5 class="notification-user">William alonso</h5>
                                                        <p class="notification-msg">William updated the email address.</p>
                                                        <span class="notification-time">35 minutes ago</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="media">
                                                    <img class="img-radius" src="https://img.icons8.com/doodle/48/000000/user-female-red-hair.png" alt="Generic placeholder image">
                                                    <div class="media-body">
                                                        <h5 class="notification-user">Sara Din</h5>
                                                        <p class="notification-msg">Sara updated mobile number.</p>
                                                        <span class="notification-time">39 minutes ago</span>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>

                                <li class="user-profile header-notification">
                                    <div class="dropdown-primary dropdown">
                                        <div class="dropdown-toggle" data-toggle="dropdown">
                                            <img src="https://img.icons8.com/color/96/000000/user.png" class="img-radius" alt="User-Profile-Image">
                                            <span>Michael Vue</span>
                                            <i class="feather icon-chevron-down"></i>
                                        </div>
                                        <ul class="show-notification profile-notification dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                            <li>
                                                <a href="#!">
                                                    <i class="feather icon-settings"></i> Settings
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="feather icon-user"></i> Profile
                                                </a>
                                            </li>
                                            <li>
                                                <a href="polygon/admindek/default/email-inbox.html">
                                                    <i class="feather icon-mail"></i> My Messages
                                                </a>
                                            </li>
                                            <li>
                                                <a href="polygon/admindek/default/auth-lock-screen.html">
                                                    <i class="feather icon-lock"></i> Lock Screen
                                                </a>
                                            </li>
                                            <li>
                                                <a href="polygon/admindek/default/auth-sign-in-social.html">
                                                    <i class="feather icon-log-out"></i> Logout
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>


            </div>
        </div>
    </body>
</html>
