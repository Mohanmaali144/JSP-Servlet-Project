<%-- 
    Document   : Navvar
    Created on : 27-Oct-2023, 9:05:44 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
    <head>
          <% // ResultSet rs = (ResultSet)session.getAttribute("rs");%>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="NavvarStyle.css">
    </head>
    <body>
        <header>
            <nav>
                <ul class='nav-bar'>
                    <li class='logo'><a href='profile.jsp'><img src='./Images/mohan.jpg' /><span id="logoname">MP</span></a></li>
                    <input type='checkbox' id='check' />
                    <span class="menu">
                        <li><a href="Home.jsp">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="contect.html">Contect</a></li>
                        <li><a href="">Work</a></li>
                        <li><a href="">My Project</a></li>
                        <li><a href="Login.jsp">Log out</a></li>
                        <label for="check" class="close-menu"><i class="fas fa-times"></i></label>
                    </span>
                    <label for="check" class="open-menu"><i class="fas fa-bars"></i></label>
                </ul>
            </nav>
        </header>
    </body>
</html>