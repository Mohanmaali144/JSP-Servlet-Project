package authentication;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Mohan_Maali
 */
public class RegistrationWork extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {

//            out.print("<form action='test'>");
//
//            out.print(" <input type='submit'>");
//            out.print("</form>");
            Connection con = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ librarydata", "root", "root");

                System.out.println("Connection succes");

                String sql = "select * from registrationdata where email=? OR mobile=?";

                String email = request.getParameter("email");
                String mobile = request.getParameter("mobile");
                String password = request.getParameter("password");
                String cpassword = request.getParameter("cpassword");

                if (!password.equals(cpassword)) {
                    System.out.println("conferm password not match");
                    response.sendRedirect("RegistrationPage");
                    return;
                }
                out.println(email);
                out.println(mobile);

                PreparedStatement ps = con.prepareStatement(sql);

                ps.setString(1, email);
                ps.setString(2, mobile);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    System.out.println("same data");
                    response.sendRedirect("RegistrationPage");

                } else {

                    sql = "insert into registrationdata (name,email,password, mobile, DOB,gender) values(?,?,?,?,?,?)";

                    String name = request.getParameter("name");
                    email = request.getParameter("email");
                    password = request.getParameter("password");
                    mobile = request.getParameter("mobile");
                    String dob = request.getParameter("dob");
                    String gender = request.getParameter("gender");

                    ps = con.prepareStatement(sql);

                    ps.setString(1, name);
                    ps.setString(2, email);
                    ps.setString(3, password);
                    ps.setString(4, mobile);
                    ps.setString(5, dob);
                    ps.setString(6, gender);

                    int a = ps.executeUpdate();
                    if (a > 0) {
                        System.out.println("Inserted data");
                        out.print("done");
//                        response.sendRedirect("LoginPage");
                    }
                }

            } catch (IOException | ClassNotFoundException | SQLException e) {

                response.sendRedirect("RegistrationPage");
            } finally {
                try {
                    con.close();
                } catch (SQLException ex) {

                }
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
