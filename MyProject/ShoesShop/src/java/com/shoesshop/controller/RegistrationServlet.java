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

public class RegistrationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();

//            out.println("ashsu");
            String name = request.getParameter("fullname");
            String userName = request.getParameter("username");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String address = request.getParameter("address");
            String password = request.getParameter("password");
            String gender = request.getParameter("gender");

            UserDAO udao = new UserDAO(name, userName, email, mobile, gender, password, address);
            UserDTO udto = new UserDTO();
            out.print(password);
            if (udto.insert(udao)) {
                session.setAttribute("rError", "&nbsp");
                session.setAttribute("error", "&nbsp");
//                response.sendRedirect("LoginServlet");
                response.sendRedirect("./Viewpack/Login.jsp");

            } else {

                session.setAttribute("rError", "invalid Value");
                response.sendRedirect("./Viewpack/Registration.jsp");
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
