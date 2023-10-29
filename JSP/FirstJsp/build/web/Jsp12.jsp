<%-- 
    Document   : Jsp12
    Created on : 12-Oct-2023, 10:25:56 pm
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
        int lastMonthUnits =3433;
        int currentMonthUnits = 1400;
        int totalUnits = lastMonthUnits + currentMonthUnits;
       int  amount;

        if (totalUnits > 0) {
            if (totalUnits <= 100) {
                amount = totalUnits * 5;
        %>
        <p>Amount is: <% amount %></p>
        <%
            } else if (totalUnits <= 200) {
                amount = totalUnits * 7.5;
        %>
        <p>Amount is: <% amount %></p>
        <%
            } else if (totalUnits <= 300) {
                amount = totalUnits * 12.5;
        %>
        <p>Amount is: <% amount %></p>
        <%
            } else {
                amount = totalUnits * 16;
        %>
        <p>Amount is: <% amount %></p>
        <%
            }
        } else {
        %>
        <p>Invalid input!</p>
        <%
        }
        %>
    </body>
</html>
