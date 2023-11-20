<%-- 
    Document   : ProductInfo
    Created on : 19-Nov-2023, 1:00:37 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.shoesshop.model.ProductDAO"%>

<%       
        ProductDAO[] prodao = (ProductDAO[]) session.getAttribute("prodao");
        System.out.println(prodao[0].getName());
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - Employee</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>

    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="Dashboard.jsp">Employee</a>

            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#"><i
                    class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <!-- <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                        aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i
                            class="fas fa-search"></i></button> -->
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">theme</a></li>
                        <li><a class="dropdown-item" href="#">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading"> <a href=""><img src="manager.png"
                                                                                  style="width:100px; height: 100px; border-radius: 50%; margin-top: 10px margin-right 10px">
                                    </div>
                                    <a class="nav-link" href="Dashboard.jsp">
                                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                        Dashboard
                                    </a>
                                    <!-- <div class="sb-sidenav-menu-heading">Interface</div> -->
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                                       data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                        User Information
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                                         data-bs-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/ShoesShop/UserInfoController">All Users</a>
                                            <a class="nav-link" href="BlockedUser.jsp">Blocked user</a>

                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages"
                                       aria-expanded="false" aria-controls="collapsePages">
                                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                        Product
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
                                         data-bs-parent="#sidenavAccordion">
                                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                                               data-bs-target="#pagesCollapseAuth" aria-expanded="false"
                                               aria-controls="pagesCollapseAuth">
                                                Product Information
                                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                            </a>
                                            <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne"
                                                 data-bs-parent="#sidenavAccordionPages">
                                                <nav class="sb-sidenav-menu-nested nav">

                                                    <a class="nav-link" href="ProductInfo.jsp">All Product</a>

                                                    <a class="nav-link" href="AddProduct.jsp">Add product</a>

                                                </nav>
                                            </div>



                                    </div>
                                    <!-- <div class="sb-sidenav-menu-heading">Addons</div> -->
                                    <a class="nav-link" href="charts.html">
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
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">

                        <div class="row">

                            <div class="container mt-5 table-responsive">
                                <center>
                                    <h2>Product Information</h2>
                                </center>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Product ID</th>
                                            <th>Product Name</th>
                                            <th>Brand</th>
                                            <th>Model</th>
                                            <th>Category</th>
                                            <th>Color</th>
                                            <th>Price</th>
                                            <th>Discount</th>
                                            <th>Description</th>
                                            <th>Gender</th>
                                            <th>Size</th>
                                            <th>Image</th>
                                            <th>remove</th>
                                            <th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Sample data, you can dynamically populate this with your data -->
                                        <%    
                                          int i =0;
                                          while(prodao.length>i && prodao[i]!=null){
                                        %>
                                        <tr>
                                            <td><%=prodao[i].getId()%></td>
                                            <td><%=prodao[i].getName()%></td>
                                            <td><%=prodao[i].getBrand()%></td>
                                            <td><%=prodao[i].getModel()%></td>
                                            <td><%=prodao[i].getCategory()%></td>
                                            <td><%=prodao[i].getColor()%></td>
                                            <td><%=prodao[i].getPrice()%>/-</td>
                                            <td>12<%=prodao[i].getDiscount()%>%</td>
                                            <td><%=prodao[i].getDescription()%></td>
                                            <td><%=prodao[i].getGender()%></td>
                                            <td><%=prodao[i].getSize()%></td>
                                            <td><a href="https://example.com/book-image.jpg" target="_blank">View Image</a>
                                            </td>
                                            <td><button class="btn btn-danger">Remove</button></td>
                                            <td><button class="btn btn-primary">Edit</button></td>
                                        </tr>
                                        <%i++;}%>
                                        <!-- Add more rows for additional book data -->
                                    </tbody>
                                </table>
                                <a href="AddProduct.jsp" class="btn btn-success" id="add-Product">Add Product</a>
                            </div>



                        </div>



                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        crossorigin="anonymous"></script>
                        <script src="js/scripts.js"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                        crossorigin="anonymous"></script>
                        <script src="assets/demo/chart-area-demo.js"></script>
                        <script src="assets/demo/chart-bar-demo.js"></script>
                        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                        crossorigin="anonymous"></script>
                        <script src="js/datatables-simple-demo.js"></script>
                        </body>

                        </html>