<%-- 
    Document   : profile
    Created on : 28-Oct-2023, 1:48:09 am
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
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Profile Page</title>

        <!-- Custom Css -->
        <link rel="stylesheet" href="profileStyle.css">
        <!-- FontAwesome 5 -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css"
            />
    </head>




    <body>

        <%ResultSet rs = (ResultSet)session.getAttribute("rs");%>

        <jsp:include page="Navvar.jsp" />
        <div class="sidenav">
            <div class="profile">
                <img
                    src="#"
                    alt=""
                    width="100"
                    height="100"
                    />

                <div class="name"><%=rs.getString("name")%></div>
                <!--                <div class="job">title</div>-->
            </div>

            <div class="sidenav-url">
                <div class="url">
                    <a href="EditeProfile.jsp" class="active">Edit</a>
                    <hr align="center" />
                </div>
                <div class="url">
                    <a href="EditeProfile.jsp">Back</a>
                    <hr align="center" />
                </div>
            </div>
        </div>
        <!-- End -->

        <!-- Main -->
        <div class="main">
            <h2>IDENTITY</h2>
            <div class="card">
                <div class="card-body">
                    <table>
                        <tbody>
                            <tr>
                                <td>Name</td>
                                <td>:</td>
                                <td><%=rs.getString("name")%></td>
                            </tr>
                            <tr>
                                <td>Father</td>
                                <td>:</td>
                                <td><%=rs.getString("father")%></td>
                            </tr>
                            <tr>
                                <td>Mobile</td>
                                <td>:</td>
                                <td><%=rs.getString("Mobile")%></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>:</td>
                                <td><%=rs.getString("email")%></td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td>:</td>
                                <td><%=rs.getString("gender")%></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
<!--
                        <h2>SOCIAL MEDIA</h2>
                        <div class="card">
                            <div class="card-body">
                                <div class="social-media">
                                    <span class="fa-stack fa-sm">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-facebook fa-stack-1x fa-inverse"></i>
                                    </span>
                                    <span class="fa-stack fa-sm">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                                    </span>
                                    <span class="fa-stack fa-sm">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-instagram fa-stack-1x fa-inverse"></i>
                                    </span>
                                    <span class="fa-stack fa-sm">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-invision fa-stack-1x fa-inverse"></i>
                                    </span>
                                    <span class="fa-stack fa-sm">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                                    </span>
                                    <span class="fa-stack fa-sm">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-whatsapp fa-stack-1x fa-inverse"></i>
                                    </span>
                                    <span class="fa-stack fa-sm">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-snapchat fa-stack-1x fa-inverse"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>-->
            <!-- End -->
             </body>
</html>
<%
//     String check = request.getParameter("email");
    
//   
//         Connection con = null;
//            try {
//                Class.forName("com.mysql.cj.jdbc.Driver");
//                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject", "root", "root");
//                System.out.println("Connection succes");
//
//                String sql = "select * from registrationdata where sno=?";
//
//                int sno = rs.getInt("sno");
//                            
//                PreparedStatement ps = con.prepareStatement(sql);
//
//                 ps.setInt(1,sno);             
//               rs = ps.executeQuery();
//                if (rs.next()) {
//                    session.setAttribute("rs", rs);
////                    response.sendRedirect("Home.jsp");
//                } else {
//                
//                    
//                }
//            } catch (Exception e) {
//
//                response.sendRedirect("Home.jsp");
//
//            }
    
%>