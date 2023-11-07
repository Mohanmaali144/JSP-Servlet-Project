<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page import = "java.io.IOException"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = " java.sql.PreparedStatement"%>
<%@page import = " java.sql.SQLException"%>
<%@page import = " java.sql.ResultSet"%>


<%@page import = "java.sql.ResultSet"%>
<% 
    
    
         response.setHeader("Cache-Control", "No-Cache");
         response.setHeader("Cache-Control", "No-Store");  
         ResultSet adrs = (ResultSet)session.getAttribute("adrs");
                 
            if(adrs!=null){
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Home Page</title>

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
            .menuicon
            {
                margin-left: 5%;
            }
            #search
            {
                margin-left: -15%;
            }
            .menuicon
            {
                margin-left: 5%;
            }
            #search
            {
                margin-left: -15%;
            }
            .offcanvas
            {
                background-color: blueviolet;
            }
            ul
            {
                list-style: none;
            }
            ul li
            {
                margin-top: 20px;
            }
            ul li a
            {
                text-decoration: none;
                color: white;
                font-weight: 500;
                margin-top: 15px;
            }
            ul li a:hover
            {
                text-decoration: none;
                color: goldenrod;
                font-weight: 500;
                margin-top: 15px;
            }


        </style>
    </head>
    <body>


        <jsp:include page="AdminNav.jsp"/>


        <!-- off canvas ----------------------------------------------------------- -->



        <!--        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        
                    <div class="offcanvas-header">
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <div>
                            <ul>
                                <li> </i><a href="Adminpanel.html">Admin Deshboard</a></li>
                                <li><a href="Userinfo.html">User Info</a></li>
                                <li><a href="#">Order Info</a></li>
                                <li><a href="#">Shop Info</a></li>
                            </ul>
                        </div>
                        <hr>
                        <div>
                            <ul>
                                <li></i><a href="#">Logout</a></li>
                                <li><a href="#">Sttings</a></li>
                            </ul>
                        </div>
                    </div>
                </div>-->





        <!-- off canvas end -------- ----------------------------------------------------------- -->



        <!-- table  -->
        <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">


            <tr>
                <th class="th-sm">UserID

                </th>
                <th class="th-sm">UserName

                </th>
                <th class="th-sm">FullName

                </th>
                <th class="th-sm">Email

                </th>
                <th class="th-sm">Phone No

                </th>
                <th class="th-sm">Gander

                </th>

                <th class="th-sm">Address

                </th>
                </th>
                <th class="th-sm">Edit

                </th>
                <th class="th-sm">Delete

                </th>
            </tr>

            <%
//    String check = request.getParameter("password");
    if(true){     
    Connection con = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject", "root", "root");
                System.out.println("Connection succes");

                String sql = "select * from  user_details ";

//                String email = request.getParameter("email");
//                String password = request.getParameter("password");

               
                PreparedStatement ps = con.prepareStatement(sql);

//                ps.setString(1, email);
//                ps.setString(2, password);

                 adrs = ps.executeQuery();
                while(adrs.next()) {
    
            %>
            <tr>
                <td><%=adrs.getInt(1)%></td>
                <td><%=adrs.getString(2)%></td>
                <td><%=adrs.getString(3)%></td>
                <td><%=adrs.getString(4)%>)</td>
                <td><%=adrs.getString(5)%></td>                         
                <td><%=adrs.getString(6)%></td>
                <td><%=adrs.getString(8)%></td>

            <form action="UpdateUser.jsp">                       
                <input id="#userinfo" name="userId" type="hidden" value="<%=adrs.getInt("userId")%>"  class="btn btn-secondary" data-toggle="modal" data-target="#userinfo"/>
                <td><button type="submit" class="btn btn-secondary">Edit</button></td>                                    
            </form>


            <td><button  type="submit" class="btn btn-danger" onclick="myDelete()">Delete</button></td>


        </tr>
        <% 
  

       }
                
       }catch(Exception e){
                
       System.out.println(e);
                
       }

        %>
        <!-------------------------------------------->





        <!-------------------------------------------->

    </tbody>

</table>
<!-- table end  -->

<!-- modal start -=----------------------- -->

<div class="modal" id="userinfo" tabindex="-1" role="dialog" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <center><h5 class="modal-title">Userinfo</h5></center>
            </div>
            <form action="" method="post" onsubmit="return myEdituser()">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input value="" type="text" class="form-control" name="UserName" id="UserName" placeholder="Username">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="FullName" id="FullName" placeholder="Full Name">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="tel" maxlength="10" class="form-control" name="mobile" id="phno" placeholder="Phone No">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="address" id="Address" placeholder="Address">
                    </div>
                </div>

                <!--<input name="username" type="hidden" value="${row.userId}"/>-->
                <button type="submit" class="btn btn-primary float-end m-2">Save changes</button>
                <button type="button" class="btn btn-secondary float-end m-2" data-dismiss="modal">Close</button>
            </form>      

        </div>

    </div>
</div>
</div>



<!-- modal end ---------------------------------- -->
</body>
<script>
    function myEdituser()
    {
        confirm("Are you sure update the user info!");
    }

    function myDelete() {
        confirm("Are you sure delete the user info!");
        //   return true;
    }
</script>
<script>
    $(document).ready(function () {
        $('#dtBasicExample').DataTable();
        $('.dataTables_length').addClass('bs-select');
    });
</script>
</html>


<%

}else{

//        response.sendRedirect("AdminLogin.jsp");
    }
}
%>