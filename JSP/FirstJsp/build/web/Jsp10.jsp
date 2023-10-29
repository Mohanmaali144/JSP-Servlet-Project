<%-- 
    Document   : Jsp10
    Created on : 12-Oct-2023, 10:13:14 pm
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
        <h1>Leap Year Checker</h1>


        <% 
            int year = 2056;
            if (year>0) {
                boolean isLeapYear = year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
        %>
        <h3>
            <%= year %> is
            <% if (  isLeapYear) { %>
            a leap year
            <% } else { %>
            not a leap year
            <% } %>
        </h3>
        <%
            }
        %>
    </body>
</html>
