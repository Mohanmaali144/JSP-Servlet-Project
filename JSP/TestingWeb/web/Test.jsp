<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Retrieve Data from MySQL</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </head>
    <body>

        <form action="" method="post">
            <input type="text" name="myname">
            <input type="text" name="fname">
            <input type="submit" value="submit">
        </form>

        <%
        if(request.getParameter("myname")!=null)
        { %>

        <sql:setDataSource
            var="dataSource"
            driver="com.mysql.cj.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/Myproject"
            user="root"
            password="root"
            />

        <sql:update dataSource="${dataSource}">
            INSERT INTO user_details (userName, fullName, email, mobile, gender, password, address)
            VALUES (?, ?, 'Sjohdoe@example.com', '1234545890', 'male', 'password123', '123 Main Street')
            <sql:param value="${param.myname}" />
            <sql:param value="${param.fname}" />
        </sql:update>

        <% }
        %>
         </body>
</html>
