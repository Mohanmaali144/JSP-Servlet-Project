<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>

<html>
<head>
<title>PDF Viewer</title>
</head>
<body>

<%
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try {


 Class.forName("com.mysql.cj.jdbc.Driver");

        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/AppDB", "root", "root");

// Create the statement.
statement = connection.createStatement();

// Execute the query.
resultSet = statement.executeQuery("SELECT * FROM contacts");

// Get the PDF as a binary stream.
byte[] pdf = resultSet.getBinaryStream("photo");

// Write the PDF to the response output stream.
response.getOutputStream().write(pdf);
} catch (Exception e) {
e.printStackTrace();
} finally {
// Close the connection and statement.
if (connection != null) {
connection.close();
}
if (statement != null) {
statement.close();
}
if (resultSet != null) {
resultSet.close();
}
}
%>

</body>
</html>