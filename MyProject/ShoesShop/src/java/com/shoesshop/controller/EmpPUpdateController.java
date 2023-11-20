package com.shoesshop.controller;

import com.shoesshop.model.EmployeeDAO;
import com.shoesshop.model.EmployeeDTO;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class EmpPUpdateController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();

            EmployeeDAO edao = (EmployeeDAO) session.getAttribute("edao");
            String name = request.getParameter("fullname");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");

            edao.setName(name);
            edao.setEmail(email);
            edao.setMobile(mobile);
            System.out.println(name);
            System.out.println(name);
            System.out.println(mobile);
            EmployeeDTO edto = new EmployeeDTO();

            if (edto.updateEmployee(edao)) {
                session.setAttribute("emsg", "Update Succesfull");
                System.out.println("AFTER UPDATE");

            } else {
                session.setAttribute("emsg", "faild to update details");
            }
            response.sendRedirect("./Viewpack/EmployeeProfileUpdate.jsp");

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
