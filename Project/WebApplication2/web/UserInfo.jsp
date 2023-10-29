<%-- 
    Document   : UserInfo
    Created on : 21-Oct-2023, 1:03:30 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@page import = "java.sql.*" %>

<%

    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String userName = request.getParameter("userName");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobileNumber");
    String gender = request.getParameter("gender");
    String dob = request.getParameter("dob");
    String password = request.getParameter("password");
    

    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = null;
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shashwat", "root", "root");
        System.out.println("Connection succes1");

        String sqlGet = "select * from userInfo where userEmail=? OR phoneNo=? OR userName=?";
              
         PreparedStatement ps;
         
                ps = con.prepareStatement(sqlGet);
                ps.setString(1, email);
                ps.setString(2, mobile);
                ps.setString(3, userName);
              
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    System.out.println("same data");                 
                    response.sendRedirect("RegistrationData.jsp");
              
               /*If block*/  
                } else {
                          
                  String sql= "insert into UserInfo(firstName,lastName,userName,userEmail,phoneNo,gender,dob,password) values(?,  ?,  ?, ?,  ?,  ?,  ?,?)" ;             
                 ps = con.prepareStatement(sql);
                  ps.setString(1, firstName);
                  ps.setString(2, lastName);
                  ps.setString(3, userName);
                  ps.setString(4, email); 
                  ps.setString(5, mobile);
                  ps.setString(6, gender);  
                  ps.setString(7, dob);   
                  ps.setString(8, password);   

                  int a = ps.executeUpdate();

                  if(a>0)
                  {
                    System.out.println("Data insert Succesfuly");    
                  }

               } /*Else block end*/
               
            }catch(Exception e){
    
                System.out.println("Error");          
                System.out.println(e);
           }
           
%>

