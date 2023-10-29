<%-- 
    Document   : Jsp11
    Created on : 12-Oct-2023, 10:19:52 pm
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
        char ch = 'm';

        if (ch >= 65 && ch <= 90) { 
            int t = (int)(ch + 32);
            char ans = (char)(t);
        %>
        <p>Converted character: <%= ans %></p>
        <%
        } else if (ch >= 97 && ch <= 122) { 
            int t = (int)(ch - 32);
            char ans = (char)(t);
        %>
        <p>Converted character: <%= ans %></p>
        <%
        } else {
        %>
        <p>Not an alphabet</p>
        <%
        }
        %>
    </body>
</html>
