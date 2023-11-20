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

public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

//            out.println("Call to ho riya hai");
            String userName = request.getParameter("username");
            String password = request.getParameter("password");

            UserDAO udao = new UserDAO();

            udao.setUserName(userName);
            udao.setPassword(password);

            UserDTO udto = new UserDTO();
            HttpSession session = request.getSession();
            System.out.println(password);
            boolean b = udto.login(udao);
            if (b) {

                ResultSet rs = udto.getInfo(udao);
                session.setAttribute("rs", rs);
                session.setAttribute("udao", udao);

//                ----------------------
                response.sendRedirect("ProductController");
//                ----------------------
//                response.sendRedirect("./Viewpack/Home.jsp");
            } else {
                session.setAttribute("error", "Account not found");
                response.sendRedirect("./Viewpack/Login.jsp");
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
    }// </editor-fold>

}
