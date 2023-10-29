<%-- 
    Document   : Jsp15
    Created on : 13-Oct-2023, 11:03:54 am
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
            int x = 2;
            int y = 5;
            int i, sum = 0, pow = 1;

            for (i = 1; i <= y; i++) {
                pow *= x;
                sum += pow;
        %>
        <%= x %><sup><%= i %></sup>
        <%
                if (i < y) {
        %>
        <span> + </span>
        <%
                }
            }
        %>

        <h3>Sum of Powers:</h3>
        <p><%= sum %></p>
    </body>
</html>

