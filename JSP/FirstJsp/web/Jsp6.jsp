<%-- 
    Document   : Jsp6
    Created on : 12-Oct-2023, 9:06:19 pm
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
        int num = 2;

        if (num == 1) {
        %>
        <p>JANUARY : 31</p>
        <%
        } else if (num == 2) {
        %>
        <p>FEBRUARY : 28 or 29</p>
        <%
        } else if (num == 3) {
        %>
        <p>MARCH : 31</p>
        <%
        } else if (num == 4) {
        %>
        <p>APRIL : 30</p>
        <%
        } else if (num == 5) {
        %>
        <p>MAY : 31</p>
        <%
        } else if (num == 6) {
        %>
        <p>JUNE : 30</p>
        <%
        } else if (num == 7) {
        %>
        <p>JULY : 31</p>
        <%
        } else if (num == 8) {
        %>
        <p>AUGUST : 31</p>
        <%
        } else if (num == 9) {
        %>
        <p>SEPTEMBER : 30</p>
        <%
        } else if (num == 10) {
        %>
        <p>OCTOBER : 31</p>
        <%
        } else if (num == 11) {
        %>
        <p>NOVEMBER : 30</p>
        <%
        } else if (num == 12) {
        %>
        <p>DECEMBER : 31</p>
        <%
        } else {
        %>
        <p>INVALID MONTH !!!!!</p>
        <%
        }
        %>
    </body>
</html>
