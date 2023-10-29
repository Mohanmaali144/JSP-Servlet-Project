<%-- 
    Document   : Jsp7
    Created on : 12-Oct-2023, 9:21:09 pm
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
        <h1>Jsp 7</h1>
    <body>
        <%
        int num1 = 65;
        int num2 = 463;

        if (num1 == num2) {
        %>
        <p>Both numbers are equal</p>
        <%
        } else {
            if (num1 > num2) {
        %>
        <p><%= num1 %> is the greatest number</p>
        <%
            } else {
        %>
        <p><%= num2 %> is the greatest number</p>
        <%
            }
        }
        %>
    </body>
</html>
