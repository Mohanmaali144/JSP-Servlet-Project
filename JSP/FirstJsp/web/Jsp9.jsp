<%-- 
    Document   : Jsp9
    Created on : 12-Oct-2023, 9:28:09 pm
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
        int num = 43;

        if (num < 0) {
        %>
        <p><%= num %> is a Negative number</p>
        <%
        } else if (num == 0) {
        %>
        <p><%= num %> is Zero</p>
        <%
        } else {
        %>
        <p><%= num %> is Positive</p>
        <%
        }
        %>
    </body>
</html>
