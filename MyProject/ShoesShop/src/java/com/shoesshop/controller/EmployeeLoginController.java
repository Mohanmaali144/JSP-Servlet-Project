package com.shoesshop.controller;

import com.shoesshop.model.EmployeeDAO;
import com.shoesshop.model.EmployeeDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class EmployeeLoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("DOCTYPE html");

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            EmployeeDAO edao = new EmployeeDAO();

            edao.setEmail(email);
            edao.setPassword(password);

            EmployeeDTO edto = new EmployeeDTO();
            HttpSession session = request.getSession();
            if (edto.loginEmployee(edao)) {

                session.setAttribute("edao", edao);

                response.sendRedirect("ProductController");

//                response.sendRedirect("./Viewpack/EmployeeProfileUpdate.jsp");
//                response.sendRedirect("./Employeeview/Dashboard.jsp");
            } else {
                out.print("Account not found");

                session.setAttribute("emsg", "Account not found");
                response.sendRedirect("./Employeeview/Login.jsp");
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
