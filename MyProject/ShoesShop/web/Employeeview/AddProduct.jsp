<%-- 
    Document   : AddProduct
    Created on : 19-Nov-2023, 12:56:01 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
          String pmsg = "";
          pmsg   = (String)session.getAttribute("pmsg");
          if(pmsg==null){pmsg="&nbsp";}
%>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - Employee/title>

            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

            <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
            <link href="css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

            <style>
                #container{

                    margin-top: 60px;
                }

            </style>


    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Employee</a>

            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <!--                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                                        <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>-->
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">theme</a></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading"> <a href=""><img src="manager.png" style="width:100px; height: 100px; border-radius: 50%; margin-top: 10px margin-right 10px"> </div>
                                    <a class="nav-link" href="Dashboard.jsp">
                                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                        Dashboard
                                    </a>
                                    <!-- <div class="sb-sidenav-menu-heading">Interface</div> -->
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                        User Information
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/ShoesShop/UserInfoController">All Users</a> 
                                            <a class="nav-link" href="BlockedUser.jsp">Subscription</a>

                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                        Product
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                                Product Information
                                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                            </a>
                                            <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                                <nav class="sb-sidenav-menu-nested nav">

                                                    <a class="nav-link" href="ProductInfo.jsp">All Product</a>
                                                    <a class="nav-link" href="AddProduct.jsp">Add Product</a>
                                                </nav>
                                            </div>



                                    </div>
                                    <!-- <div class="sb-sidenav-menu-heading">Addons</div> -->
                                    <a class="nav-link" href="#">
                                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                        Charts
                                    </a>
                                    <a class="nav-link" href="#">
                                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                        Tables
                                    </a>
                            </div>
                        </div>
                        <div class="sb-sidenav-footer">
                            <div class="small">Logged in as:</div>
                            Employee
                        </div>
                </nav>
            </div>

            <!----------------form------------------------>


            <div id="container" class="container">
                <h2>Shoes Information Form</h2>
                <form action="/ShoesShop/ProductFormController">
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="productName">Product Name:</label>
                            <input name="name" type="text" class="form-control" id="productName"
                                   placeholder="Enter product name">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="brand">Brand:</label>
                            <input name="brand" type="text" class="form-control" id="brand" placeholder="Enter brand name">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="model">Model:</label>
                            <input name="model" type="text" class="form-control" id="model" placeholder="Enter model">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="category">Category:</label>
                            <input name="category" type="text" class="form-control" id="category" placeholder="Enter category">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="color">Color:</label>
                            <input name="color" type="text" class="form-control" id="color" placeholder="Enter color">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="price">Price:</label>
                            <input name="price" type="text" class="form-control" id="price" placeholder="Enter price" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="discount">Discount:</label>
                            <input name="discount" type="number" class="form-control" id="discount"
                                   placeholder="Enter discount">
                        </div>

                        <div class="form-group col-md-4">
                            <label for="discount">Gender:</label><br>
                            <select class=" col-md-12" name="gender" id="gender">
                                <option value="male">male</option>
                                <option value="female">female</option>
                                <option value="boys">Boys</option>
                                <option value="Girls">Girls</option>
                                <option value="Baby boy">Baby boy</option>
                                <option value="bay girl">Baby Girl</option>
                            </select>
                        </div>

                        <div class="form-group col-md-4">
                            <label for="discount">Size:</label>
                            <input name="size" type="text" class="form-control" id="size" placeholder="Enter size">
                        </div>
                    </div>




                    <div class="form-group col-md-14">
                        <label for="description">Description:</label>
                        <textarea name="description" class="form-control" id="description" rows="4"
                                  placeholder="Enter description"></textarea>
                    </div>




                    <div class="form-group">
                        <label for="image">Image URL:</label>
                        <input type="text" class="form-control" id="image" placeholder="Enter image URL">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button> 
                    <span>
                        <%=pmsg%> &nbsp;
                    </span>
                    <%session.setAttribute("pmsg",null);%>

                </form>
            </div>


            <!-- Include Bootstrap JS (optional) -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


            <!----------------form------------------------>


            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
            <script src="js/scripts.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
            <script src="assets/demo/chart-area-demo.js"></script>
            <script src="assets/demo/chart-bar-demo.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
            <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
