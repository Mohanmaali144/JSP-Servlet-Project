<%-- 
    Document   : Login
    Created on : 28-Oct-2023, 11:09:50 am
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
// Check if the user is logged in
boolean isLoggedIn = true; // You can replace this with your login logic

if (isLoggedIn) {
    // Forward the request to the welcome page
    // Note that you can also use an absolute URL for the target page
    // like "/yourWebAppName/welcome.jsp" if necessary.
    pageContext.forward("Welcome.jsp");
}
%>
