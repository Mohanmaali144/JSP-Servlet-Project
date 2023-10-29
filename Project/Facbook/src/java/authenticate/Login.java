/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package authenticate;

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
public class Login extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<head>");
            out.println(" <title>FacebookHome page</title>");
            out.println("<link rel='stylesheet' href='fbstyle.css'>");
            out.println("</head>");
            out.println("<body>");
            out.println(" <header class='fb-header'>");
            out.println(" <div class='inner-header'>");
            out.println(" <img class='fb-header-logo' src='' alt='not found'>");
            out.println(" <form class='login-line'>");
            out.println(" <label class='email-label' for='email or phone'>Email or Phone</label>");
            out.println(" <input class='email-input' type='text' name='text'>");
            out.println(" <label class='pass-label' for='password'>Password</label>");
            out.println(" <input class='pass-input' type='password' name='password'>");
            out.println(" <span class='Forgotten-item'><a href='#'>Forgotten account?</a></span>");
            out.println(" <button type='submit'>Log In</button>");
            out.println(" </form>");
            out.println(" </div>");
            out.println(" </header>");

            //----------------------container----------------------------------------------------------
            out.println(" <main id='fb-main'>");
            out.println(" <div class='fb-container'>");
            out.println(" <section class='fb-connect'>");
            out.println(" <span>Facebook helps you connect and share with the people in your life.</span>");
            out.println(" </section>");
            out.println(" <section class='fb-form'>");
            out.println(" <span class='frm-header'>Create an account</span><br>");
            out.println(" <span class='frm-spn1'>It's free and always will be.</span>");
            out.println(" <form class='sign-up'>");
            out.println(" <input class='frm-textbox textbox-width' type='text' name='text' placeholder='First name'>");
            out.println(" <input class='frm-textbox textbox-width' type='text' name='text' placeholder='Surname'>");
            out.println(" <input class='frm-textbox' type='text' name='text' placeholder='Mobile number or email address'><br>");
            out.println(" <input class='frm-textbox' type='password' name='password' placeholder='New password'><br>");
            out.println(" <div class='form-div'>");
            out.println(" <span class='birthday'>Birthday</span><br>");
            out.println(" <input type='date' name='dob'>");
            out.println(" <a class='why-link' href='#'>Why do I need to provide my date of birth?</a><br>");
            out.println(" <div class='frm-radio'>");
            out.println(" <input type='radio' name='gender'>");
            out.println(" <label>Female</label>");
            out.println(" <input type='radio' name='gender'>");
            out.println(" <label>Male</label>");
            out.println(" </div>");
            out.println(" <p>By clicking Sign Up, you agree to our <a href='#'>Terms, Data Policy</a> and <a href='#'>Cookie Policy</a>. You may receive SMS notifications from us and can opt out at any time.</p>");
            out.println(" <button>Sgin Up</button><br>");
            out.println(" <span class='form-last-child'><a href='#'>Create a Page</a> for a celebrity, band or business.</span>");
            out.println(" </div>");
            out.println(" </form>");
            out.println(" </section>");
            out.println(" </div>");
            out.println(" </main>");

            out.println(" <footer class='fb-footer'>");
            out.println(" <div class='div-footer'>");
            out.println(" <ul class='ul1'>");
            out.println(" <li>English (UK)</li>");
            out.println(" <li><a href='#'>العربية</a></li>");
            out.println(" <li><a href='#'>Français (France)</a></li>");
            out.println(" <li><a href='#'>Italiano</a></li>");
            out.println(" <li><a href='#'>Deutsch</a></li>");
            out.println(" <li><a href='#'>Русский</a></li>");
            out.println(" <li><a href='#'>Español</a></li>");
            out.println(" <li><a href='#'>Bahasa Indonesia</a></li>");
            out.println(" <li><a href='#'>Türkçe</a></li>");
            out.println(" <li><a href='#'>Português (Brasil)</a></li>");
            out.println(" <li><a href='#'>हिन्दी</a></li>");
            out.println(" </ul>");

            out.println(" <div class='ho-rule'></div>");
            out.println(" <ul class='ul2'>");
            out.println(" <li><a href='#'>Sign Up</a></li>");
            out.println(" <li><a href='#'>Log In</a></li>");
            out.println(" <li><a href='#'>Massenger</a></li>");
            out.println(" <li><a href='#'>Favebook Lite</a></li>");
            out.println(" <li><a href='#'>Mobile</a></li>");
            out.println(" <li><a href='#'>Find Friends</a></li>");
            out.println(" <li><a href='#'>People</a></li>");
            out.println(" <li><a href='#'>Pages</a></li>");
            out.println(" <li><a href='#'>Video interests</a></li>");
            out.println(" <li><a href='#'>Places</a></li>");
            out.println(" <li><a href='#'>Ganess</a></li>");
            out.println(" <li><a href='#'>Locations</a></li>");
            out.println(" <li><a href='#'>Marketplace</a></li>");
            out.println(" <li><a href='#'>Grups</a></li>");
            out.println(" <li><a href='#'>Instagram</a></li>");
            out.println(" <li><a href='#'>Local</a></li>");
            out.println(" <li><a href='#'>About</a></li>");
            out.println(" <li><a href='#'>Create ad</a></li>");
            out.println(" <li><a href='#'>Crnate Page</a></li>");
            out.println(" <li><a href='#'>Developers</a></li>");
            out.println(" <li><a href='#'>Careers</a></li>");
            out.println(" <li><a href='#'>Privacy</a></li>");
            out.println(" <li><a href='#'>Cookies</a></li>");
            out.println(" <li><a href='#'>AdChoices</a></li>");
            out.println(" <li><a href='#'>Terms</a></li>");
            out.println(" <li><a href='#'>Hepl</a></li>");
            out.println(" <li><a href='#'>Settings</a></li>");
            out.println(" <li><a href='#'>Activity log</a></li>");
            out.println(" </ul>");
            out.println(" <p>Facebook © 2018</p>");
            out.println(" </div>");
            out.println(" </footer>");
            out.println("</body>");

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
