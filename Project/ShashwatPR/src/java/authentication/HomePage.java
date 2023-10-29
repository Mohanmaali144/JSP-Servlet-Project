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
public class HomePage extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomePage</title>");

            out.print("<link rel='stylesheet' href='homestyle.css'>");

            out.println("</head>");

            out.print("<body>");
            out.print(" <div id='main-nav'>");
            out.print(" <div id='logo'>");
            out.print(" <h2>SHASHWAT</h2>");
             out.print("&nbsp &nbsp &nbsp<h5>NEVER STOP LEARNING</h5>");
            
            out.print(" </div>");
            out.print(" <div id='section-2'>");
            out.print(" <span>");
            out.print(" <i class='fa-solid fa-heart' style='color: #ff0000;'></i>Review & Rating</span>");
            out.print(" <span>");
            out.print(" <i class='fa-solid fa-circle-dollar-to-slot' style='color: #bd8a00;'></i>Donate</span>");
            out.print(" </div>");
            out.print(" </div>");
            //-----------------------------------nave var----------------------------------------------------
            out.print(" <nav class='main-nav'>");
            out.print(" <ul class='nav-bar'>");
            out.print(" <li><a class='logo1' href='index.html'> <h1>Shashwat</h1></a></li>");
            out.print(" <input type='checkbox' id='check' />");
            out.print(" <span class='menu'>");
            out.print(" <li><a href='HomePage'>Home</a></li>");
            out.print(" <li><a href='mybooks.html'>My Books</a></li>");
            out.print(" <li><a href='category.html'>Category</a></li>");
            out.print(" <li><a href='About.html'>About-us</a></li>");
            out.print(" <li><a href='Contact-us.html'>Contact-Us</a></li>");
            out.print(" <li><a href='signup.html'>Login</a></li>");
            out.print(" <label for='check' class='close-menu'><i class='fas fa-times'></i></label>");
            out.print(" </span>");
            out.print(" <label for='check' class='open-menu'><i class='fas fa-bars'></i></label>");
            out.print(" </ul>");
            out.print(" </nav>");
            // -------------------------------------

            // ----------------------- books catlogs--------------------------------
            out.print(" <div id='books-catlogs'>");

            //---------------------------- row 1 ----------------------------
            out.print(" <div class='row'>");

            // -------------------- books 1 -------------------
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/3934.jpg' alt='' height='200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");
            //------------------- - books 2 -----------
            out.print(" <div class='bookimg'>");
            out.print(" <img src='/img/img2.jpg' alt='' height='200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");

            //--------------- books 3 ------------
            out.print(" <div class='bookimg'>");
            out.print(" <img src='./img/img1.jpg' alt='' height='200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");

            //---------------- books 4 -----------------------
            out.print(" <div class='bookimg'>");
            out.print(" <img src='./img/img4.png' alt='' height='200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");
            out.print(" </div>");

            //----------------- row 2 ----------------------------
            //-------------- row 1 ----------
            out.print(" <div class='row'>");
            //------------------- books 1 ------------
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img1.jpg' alt='' height='200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");
            //------------------books 2--------
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img2.jpg' alt='' height='200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");
            //-----------------books 3 -->");
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img3.jpg' alt='' height='200' width='180'>");
            out.print("<div class='btn'><button>Borrow</button></div>");
            out.print("</div>");
            //------------------ books 4 -->");
            out.print(" <div class='bookimg'>");
            out.print("<img src='img/img4.png' alt='' height='200' width='180'>");
            out.print("<div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");
            out.print("</div>");

            //----------------------row 3 -------
            //--------------------row 1
            out.print(" <div class='row'>");

            //-------------- books 1
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img1.jpg' alt='' height=' 200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");

            //------------- books 2 --
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img2.jpg' alt='' height=' 200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");

            //---------------books 3 --
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img3.jpg' alt='' height=' 200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");

            //-------------- books 4
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img4.png' alt='' height=' 200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");
            out.print(" </div>");

            //--------------------row 1
            out.print(" <div class='row'>");
            ///--------------- books 1
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img1.jpg' alt='' height=' 200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");

            //-------------------- books 2
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img2.jpg' alt='' height=' 200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");

            //---------------- books 3
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img3.jpg' alt='' height=' 200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");

            //------------------ books 4
            out.print(" <div class='bookimg'>");
            out.print(" <img src='img/img4.png' alt='' height='200' width='180'>");
            out.print(" <div class='btn'><button>Borrow</button></div>");
            out.print(" </div>");
            out.print(" </div>");
            out.print(" </div>");

            //---------------Footer section
            out.print(" <footer>");

            out.print(" <div id='Quicklinks'>");

            out.print(" <h2>Quicklinks</h2>");
            out.print(" <a href='index.html'>Home</a>");
            out.print(" <a href='mybooks.html'>My Books</a>");
            out.print(" <a href='category.html'>Category</a>");
            out.print(" <a href='About.html'>About-us</a>");
            out.print(" <a href='Contact-us.html'>Contact-Us</a>");
            out.print(" <a href='Signup.html'>Login</a>");

            out.print(" </div>");

            out.print(" <div id='Socialmeadia'>");
            out.print(" <h2>Our Social Meadia</h2>");
            out.print(" <a href=''><i class='fa fa-instagram'></i><span>Instagram</span></a>");
            out.print(" <a href=''><i class='fa fa-facebook-f'></i><span>Facebook</span></a>");
            out.print(" <a href=''><i class='fa fa-twitter-square'></i><span>Twitter</span></a>");
            out.print(" <a href=''><i class='fa fa-linkedin'></i><span>Linkedin</span></a>");
            out.print(" </div>");

            out.print(" <div id='Contect'>");
            out.print(" <h2>Contect</h2>");
            out.print(" <a href=''><i class='fa fa-map-marker' aria-hidden='true'></i><span>Sector 11-A Greaternoida(U.P)</span></a>");
            out.print(" <a href=''><i class='fa fa-envelope'></i><span>shashwatmail123@gmail.com</span></a>");
            out.print(" </div>");

            out.print(" </footer>");

            out.print("</body>");
            out.println("</html>");
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
