<%-- 
    Document   : Jsp19
    Created on : 13-Oct-2023, 11:40:26 am
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
            int n1 = 36; 
            int n2 = 4;
            int hcf = 0;
            while (n1 != n2) {
                if (n1 > n2) {
                    n1 = n1 - n2;
                } else {
                    n2 = n2 - n1;
                }
            }
            hcf = n1;
        %>

        <h3>HCF :</h3>
        <p><%= hcf %></p>
    </body>
</html>
