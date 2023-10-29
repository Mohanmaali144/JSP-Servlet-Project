<%
     
ServletOutputStream servletOutputStream = response.getOutputStream();


           Connection con = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AppDB", "root", "root");
                System.out.println("Connection succes");

                String sql = "select * from contacts where contact_id=?";
              
                PreparedStatement ps = con.prepareStatement(sql);

                ps.setInt(1, 1);
              
                ResultSet resultSet = ps.executeQuery();
        
              if (resultSet.next()) {
            // Get the PDF content from the result set
                 byte[] pdfData = resultSet.getBytes("photo");

            // Set the response content type to PDF
                 response.setContentType("application/pdf");

            // Write the PDF content to the response output stream
            response.getOutputStream().write(pdfData);
        } else {
            out.println("PDF not found.");
        }






%>