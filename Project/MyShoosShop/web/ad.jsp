<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Retrieve Data from MySQL</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <sql:setDataSource
        var="dataSource"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/Myproject"
        user="root"
        password="root"
    />

    <sql:query var="result" dataSource="${dataSource}">
        SELECT * FROM Registrationdata;
    </sql:query>

    <table class="table">
        <tr>
            <c:forEach var="column" items="${result.columnNames}">
                <th><c:out value="${column}" /></th>
            </c:forEach>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.sno}" /></td>
                <td><c:out value="${row.name}" /></td>
                <td><c:out value="${row.father}" /></td>
                <td><c:out value="${row.email}" /></td>
                <td><c:out value="${row.password}" /></td>
                <td><c:out value="${row.mobile}" /></td>
                <td><c:out value="${row.gender}" /></td>
            </tr>
        </c:forEach>
    </table>

    <!-- Add Bootstrap and JavaScript libraries here if needed -->
</body>
</html>
