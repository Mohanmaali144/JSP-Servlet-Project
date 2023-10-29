/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
* Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package authentication;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Mohan_Maali
 */
public class LoginPage extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try (PrintWriter out = response.getWriter()) {

            out.print("<head>");
            out.print(" <title>Log-in</title>");
            out.print("<link rel='stylesheet' href='LoginPageStyle.css'>");
            out.print("</head>");
            out.print("<body>");
            out.print(" <div class='container'>");
            out.print(" <div class='wrapper'>");
            out.print(" <div class='title'><span>Login Form</span></div>");

            out.print(" <form action='LoginWork'>");
            out.print(" <div class='row'>");
            // out.print(" <lable class='lablet'>Enter Email </lable>");
            out.print(" <i class='fas fa-user'></i>");
            out.print(" <input type='text' name='email' placeholder='Enter Email ' required>");
            out.print(" </div>");
            out.print(" <div class='row'>");
            // out.print(" <lable class='lablet'>Enter Password </lable>");
            out.print(" <i class='fas fa-lock'></i>");
            out.print(" <input type='password' name='pass' placeholder=' Enter Password' required>");
            out.print(" </div>");
            out.print(" <div class='pass'><a href='#'>Forgot password?</a></div>");
            out.print(" <div class='row button'>");
            out.print(" <input type='submit' value='Login'>");
            out.print(" </div>");
            out.print(" <div class='signup-link'>Not a member? <a href='RegistrationPage'>Register now</a></div>");

            out.print(" </form>");
            out.print(" </div>");
            out.print(" </div>");
            out.print("</body>");
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
    }// </editor-fold>

}
