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
int i,k,j;
    for(i=1; i<=5; i++)
    {
for(j=i; j<5; j++){
%>

<span>&nbsp;</span> 

<% }

for(k=1; k<=i; k++){
                                      
%>

<span>* </span>								
<%}%>
<br>
<%}
                    
%>

