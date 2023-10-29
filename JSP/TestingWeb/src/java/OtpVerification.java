
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
import java.sql.*;

/**
 *
 * @author Mohan_Maali
 */
public class OtpVerification extends HttpServlet {

    SendMail sm = new SendMail();
    private String email;
    private String name;
    private int code;

    private int otp;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

//          -----------------------JDBC connection-------------------------------
            Connection con = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shashwat", "root", "root");
                System.out.println("Connection succes");

                String sql = "select * from userinfo where userEmail=?";

                this.email = request.getParameter("email");

                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, this.email);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {

                    this.name = rs.getString("firstName");
                    code = sm.otpGenerat();

                } else {

                    System.out.println("not found");
                    response.sendRedirect("ForgetPassword.jsp");
                    return;
                }
            } catch (Exception e) {

                System.out.println(e);
                response.sendRedirect("ForgetPassword.jsp");
                return;

            } finally {
                try {
                    con.close();
                } catch (SQLException e) {

                    System.out.println(e);

                }
            }

//           -----------------------------------------
            sm.setUserName(this.email);

//           sm.createAndSendEmail("mohanmaali143@gmail.com", "Account varification in Shashwat...", " Dear Shashwat user. the one time OTP to reset your password at (Shashwat Account) is"+code+"This OTP will expire in 5 minutes. ");
            sm.createAndSendEmail("mohanmaali143@gmail.com", "Hello " + this.name + "", " \n"
                    + "You have requested a one-time password  " + this.code + "  to verify your identity, reset your passwordn on  Shshawat.  Please use the following OTP to complete your action:\n"
                    + "\n"
                    + "OTP:  [ " + this.code + " ]\n"
                    + "\n"
                    + "Please enter this OTP within 5 minutes  to ensure it is valid. After this time, the OTP will expire, and you will need to request a new one.\n"
                    + "\n"
                    + "If you did not initiate this request or have any concerns about your account's security, please contact our support team immediately at   ajmeraaashu55@gmail.com .\n"
                    + "\n"
                    + "Thank you for using Shashwat\n"
                    + "\n"
                    + "Sincerely,\n"
                    + "The Tech Phoenix Team");
            System.out.println(this.code);

            this.otp = Integer.parseInt(request.getParameter("otp"));
            if (this.otp == this.code) {

                System.out.println("change the Password ");
            }
            else{
                    System.out.println("can't  change the Password ");
            }

        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
