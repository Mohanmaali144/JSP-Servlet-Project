<%-- 
    Document   : AdminNav
    Created on : 29-Oct-2023, 1:51:00 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Hoem Page</title>

        <link rel="stylesheet" href="adminpanel.css">
        <!-- boostrap cdn path  -->

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .menuicon {
                margin-left: 5%;
            }

            #search {
                margin-left: -15%;
            }

            .offcanvas {
                background-color: white;
            }

            ul {
                list-style: none;
            }

            ul li {
                margin-top: 20px;
            }

            ul li a {
                text-decoration: none;
                color: black;
                font-weight: 500;
                margin-top: 15px;
            }

            ul li a:hover {
                text-decoration: none;
                color: goldenrod;
                font-weight: 500;
                margin-top: 15px;
            }


        </style>
    </head>

    <body>
        <!-- navbar -->
        <header>
            <nav  class="navbar navbar-light bg-light sticky-top">
                <button class="btn btn-light menuicon" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample"
                        aria-controls="offcanvasExample">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </button>
                <form class="form-inline mx-auto">
                    <input class="form-control mr-sm-2 tex" type="search" placeholder="Search" id="search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search"></i></button>
                </form>
            </nav>
        </header>


        <!-- off canvas ----------------------------------------------------------- -->



        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">

            <div class="offcanvas-header">
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div>
                    <ul>
                        <li></i><a href="AdminProfile.jsp">Admin Deshboard</a></li>
                        <li><a href="UserInfo.jsp">User Info</a></li>
                        <li><a href="">Order Info</a></li>
                        <li><a href="">Shop Info</a></li>
                    </ul>
                </div>
                <hr>
                <div>
                    <ul>
                        <li></i><a href="Logout.jsp">Logout</a></li>
                        <li><a href="">Sttings</a></li>
                    </ul>
                </div>
            </div>
        </div>


        <!-- off canvas end -------- ----------------------------------------------------------- -->




    </body>

</html>