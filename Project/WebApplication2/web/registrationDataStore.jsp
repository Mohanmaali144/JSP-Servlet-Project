<%-- 
    Document   : registrationDataStore
    Created on : 21-Oct-2023, 12:42:24?am
    Author     : Mohan_Maali
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@page import = "java.sql.*" %>

<%

    String firstName = request.getParameter("name");
    String lastName = request.getParameter();
    String userName = request.getParameter();
    String email = request.getParameter();
    String mobile = request.getParameter();
    String gender = request.getParameter();
    String dob = request.getParameter();
    String passwprd = request.getParameter();
    

    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = null;
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shashwat", "root", "root");
        System.out.println("Connection succes1");

        String sql= insert into UserInfo(firstName) ;
        
        

    
    }catch(Exception e){
    
    
    }




%>

