<%-- 
    Document   : SecondJsp
    Created on : 12-Oct-2023, 08:027:19 pm
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
        <h1>hello world !</h1>
        <%
        int n = 5; 
        int i, j, k;

        for (i = 1; i <= n; i++) {
            for (j = i; j < n; j++) {
        %>
        <%= "&nbsp;&nbsp;" %>
        <%
            }
            for (k = 1; k <= i * 2 - 1; k++) {
        %>
        <%= "* " %>
        <%
            }
        %>
        <br />
        <%
        }
        %>
    </body>
</html>
