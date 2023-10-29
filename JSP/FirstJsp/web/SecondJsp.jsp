<%-- 
    Document   : SecondJsp
    Created on : 12-Oct-2023, 1:02:16 pm
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
<%		
                int n = 5;
                int i=1;			
                while(i<=n){    
                        int j=1;
                        while(j<=i)
                        { %>
<span>*</span>

<% j++;
                        }%>
<br><%
  i++;
}%>

