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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UpdateController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

//            out.print("sdvdfvdfv");
            HttpSession session = request.getSession();
            UserDAO udao = (UserDAO) session.getAttribute("udao");
            String name = request.getParameter("fullname");
            String userName = request.getParameter("username");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String address = request.getParameter("address");

            udao.setName(name);
            udao.setUserName(userName);
            udao.setEmail(email);
            udao.setMobile(mobile);
            udao.setAddress(address);

            UserDTO udto = new UserDTO();

//            boolean a = udto.updateName(udao);
            if (udto.updateAll(udao)) {
             
                session.setAttribute("msg", "Update Succesfull");
                System.out.println("AFTER UPDATE");

            } else {
                session.setAttribute("msg", "faild to update details");
            }
            response.sendRedirect("./Viewpack/EditeProfile.jsp");
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
