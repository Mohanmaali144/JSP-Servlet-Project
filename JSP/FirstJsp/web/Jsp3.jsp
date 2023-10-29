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
        <h1>Hello World!</h1>
    </body>
</html>
<head>
    <title></title>
</head>
<body>
    <%
    int n = 5;
    int i, k;

    for (i = 1; i <= n; i++) {
        for (k = 1; k <= i; k++) {
    %>
            <%= "* " %>
    <%
        }
    %>
        <br />
    <%
    }

    for (i = 1; i <= n; i++) {
        for (k = n; k > i; k--) {
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
