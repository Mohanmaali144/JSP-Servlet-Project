<%-- 
    Document   : Jsp16
    Created on : 13-Oct-2023, 11:11:32 am
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
            int fact = 1;
            int i, n, sum = 0;
            int prevFactorial = 1;
            n = 5;

        %>
        <p>Calculation Steps:</p>
        <%
        for (i = 1; i <= n; i++, fact *= i) {
            sum += fact;
            if (i > 1) {
        %>
        <span> + </span>
        <%
    }
        %>
        <span><%= i %>!</span>
        <%
        if (i > 1) {
        %>
        <span> (</span>
        <%
    }
        %>
        <span><%= prevFactorial %></span>
        <%
        if (i > 1) {
        %>
        <span>)</span>
        <%
    }
    prevFactorial = fact;
}
        %>

        <h3>Factorial Sum:</h3>
        <span><%= sum %></span>
    </body>
</html>
