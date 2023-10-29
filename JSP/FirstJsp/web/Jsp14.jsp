<%-- 
    Document   : Jsp14
    Created on : 13-Oct-2023, 10:56:25 am
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
        <h1>Cube Sum</h1>

        <%
            int n = 5;  // Set the value of 'n' to your desired number
            int sum = 0;

            for (int i = 1; i <= n; i++) {
                String output = i * i * i + " + ";
                if (i == n) {
                    output = i * i * i + "";
                }
        %>
        <%= output %>
        <%
                sum += (i * i * i);
            }
        %>

        <h3>Cube Sum:</h3>
        <p><%= sum %></p>
    </body>
</html>

