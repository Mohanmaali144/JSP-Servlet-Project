<%-- 
    Document   : UserInfo
    Created on : 21-Oct-2023, 1:03:30 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@page import = "java.sql.*" %>

<%
  
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    

    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = null;
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shashwat", "root", "root");
        System.out.println("Connection succes1");

        String sqlGet = "select * from userInfo where userName=?  AND password=?";
              
         PreparedStatement ps;
         
                ps = con.prepareStatement(sqlGet);
                ps.setString(1, userName);
//                ps.setString(2, userName);
                ps.setString(2, password);
              
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {                   
                        System.out.println("LogIn Successfuly");                 
//                      response.sendRedirect("RegistrationData.jsp");
              
               /*If block*/  
                } else {
                         
                        System.out.println("Inccorect username or password");
                     }            
               
            }catch(Exception e){
    
                System.out.println("Error or  Exception");          
                System.out.println(e);
           }
           
%>

