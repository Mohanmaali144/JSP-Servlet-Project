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
public class RegistrationPage extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

//   ---------------------------------------------------------
            out.print("<head>");
            out.print(" <title>Registration</title>");
            out.print("<link rel='stylesheet' href='Registrerstyle.css'>");
            out.print("</head>");

            out.print("<body>");

            out.print("<div id='image-contener'>");
            out.print(" <img src'./imges/regisr.sv' alt='Image not loaded'>");
            out.print("</div>");

            out.print("    <div class='container'>");
            out.print("        <div class='title'>Registration</div>");
            out.print("        <div class='content'>");
            out.print("            <form action='RegistrationWork'>");
            out.print("                <div class='user-details'>");
            out.print("                    <div class='input-box'>");
            out.print("                        <span class='details'>Full Name</span>");
            out.print("                        <input type='text' name='name' placeholder='Enter your name' required>");
            out.print("                    </div>");
            out.print("                    <div class='input-box'>");
            out.print("                        <span class='details'>Date Of Birth</span>");
            out.print("                        <input type='date' name='dob' required>");
            out.print("                    </div>");
            out.print("                    <div class='input-box'>");
            out.print("                        <span class='details'>Email</span>");
            out.print("                        <input type='text' name='email' placeholder='Enter your email' required>");
            out.print("                    </div>");
            out.print("                    <div class='input-box'>");
            out.print("                        <span class='details'>Phone Number</span>");
            out.print("                        <input type='text' name='mobile' placeholder='Enter your number' required>");
            out.print("                    </div>");
            out.print("                    <div class='input-box'>");
            out.print("                        <span class='details'>Password</span>");
            out.print("                        <input type='text' name='password' placeholder='Enter your password' required>");
            out.print("                    </div>");
            out.print("                    <div class='input-box'>");
            out.print("                        <span class='details'>Confirm Password</span>");
            out.print("                        <input type='text' name='cpassword' placeholder='Confirm your password' required>");
            out.print("                    </div>");
            out.print("                </div>");
            out.print("                <div class='gender-details'>");
            out.print("                    <input type='radio' name='gender' value='male' id='dot-1'>");
            out.print("                    <input type='radio' name='gender' value='female' id='dot-2'>");
            out.print("                    <input type='radio' name='gender' value='other' id='dot-3'>");
            out.print("                    <span class='gender-title'>Gender</span>");
            out.print("                    <div class='category'>");
            out.print("                        <label for='dot-1'>");
            out.print("                            <span class='dot one'></span>");
            out.print("                            <span class='gender'>Male</span>");
            out.print("                        </label>");
            out.print("                        <label for='dot-2'>");
            out.print("                            <span class='dot two'></span>");
            out.print("                            <span class='gender'>Female</span>");
            out.print("                        </label>");
            out.print("                        <label for='dot-3'>");
            out.print("                            <span class='dot three'></span>");
            out.print("                            <span class='gender'>Other</span>");
            out.print("                        </label>");
            out.print("                    </div>");
            out.print("                </div>");
            out.print("                <div class='button'>");
            out.print("                    <input type='submit' value='Register'>");
            out.print("                </div>");
            out.print("            </form>");
            out.print("        </div>");
            out.print("    </div>");
            out.print("</body>");

            //   ------------------------------------------------------------------------------------        
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
