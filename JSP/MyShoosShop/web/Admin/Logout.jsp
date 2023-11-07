<%-- 
    Document   : Logout
    Created on : 30-Oct-2023, 10:25:48 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
            session.setAttribute("adrs", null);
            session.invalidate();
            response.sendRedirect("AdminLogin.jsp");
        
        %>
    </body>
</html>
