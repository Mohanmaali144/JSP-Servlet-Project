<%-- 
    Document   : Jsp8
    Created on : 12-Oct-2023, 9:25:42 pm
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
        int ram = 40;
        int mohan =19;
        int kamal = 35;
        int raj =13;

        if (ram > mohan && ram > kamal && ram > raj) {
        %>
        <p>Greatest age is of Ram</p>
        <%
        } else if (kamal > ram && kamal > mohan && kamal > raj) {
        %>
        <p>Greatest age is of Kamal</p>
        <%
        } else if (mohan > ram && mohan > kamal && mohan > raj) {
        %>
        <p>Greatest age is of Mohan</p>
        <%
        } else if (raj > ram && raj > kamal && raj > mohan) {
        %>
        <p>Greatest age is of Raj</p>
        <%
        }
        %>
    </body>
</html>
