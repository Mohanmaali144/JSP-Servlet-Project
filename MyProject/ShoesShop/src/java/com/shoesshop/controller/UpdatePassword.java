package com.shoesshop.controller;

import com.shoesshop.model.UserDAO;
import com.shoesshop.model.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class UpdatePassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String oldpassword = request.getParameter("oldpassword");
            String newpassword = request.getParameter("newpassword");

            HttpSession session = request.getSession();
            UserDAO udao = (UserDAO) session.getAttribute("udao");
            String password = udao.getPassword();

            System.out.println("old ==== " + password);

            if (oldpassword.equals(password)) {

                udao.setPassword(newpassword);

                UserDTO udto = new UserDTO();

                if (udto.updatePassword(udao)) {

                    session.setAttribute("perror", "password chnaged successfuly");
                    response.sendRedirect("./Viewpack/EditeProfile.jsp");

                }

            } else {

                session.setAttribute("perror", "old password incorrect");
                response.sendRedirect("./Viewpack/PasswordUpdate.jsp");
            }

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