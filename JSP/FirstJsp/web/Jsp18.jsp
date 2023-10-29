<%-- 
    Document   : Jsp18
    Created on : 13-Oct-2023, 11:29:28 am
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
            int n = 5;
            int i, j;

            String result = "";
            n = 6;

            for (i = 1; i <= n; i++) {
                for (j = 1; j <= i; j++) {
                    result += j;
                }
                result += "<br>";
            }
        %>

        <%= result %>
    </body>
</html>
