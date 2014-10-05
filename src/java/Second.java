/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
public class Second extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(false);
        
        try {
          /*if (session!=null)
          {
             
               out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet third</title>");            
            out.println("</head>");
            out.println("<body background="+"vector-wallpaper-colorful-background.jpg"+" >");
           
            out.println("<h1><font color="+"red"+">"+"HOLA! :D"+"\n"+session.getAttribute("user")+"</font>");
             out.println("<font color="+"blue"+">"+"<h3>"+"ABOUT US</h3><br/>");
            out.println("<p>");
            out.println("Our primary motive is to give everyone an ultimate interview experience before going for the real deal!</p>");
              out.println("</font>");      
            out.println("<font color="+"red>");
            out.println("<p align="+"center"+">");
            out.println("Read Success stories<br/>"+"</p>");
            out.println("<p align="+"center"+">");
            out.println("learn tutorials<br/>");
            out.println("<p align="+"center"+">");
            out.println("Take quiz<br/>"+"</p>");
            out.println("<p align="+"center"+">");
            out.println("Register for institutions<br/>"+"</p>");
            out.println("</font>");
            out.println("</body>");
            out.println("</html>");
              
          }
        else
          {
              RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
              rd.include(request,response);
          }
        */
           /*out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet third</title>");            
            out.println("</head>");
            out.println("<form action="+"home"+"method="+"post"+"></form>");
            out.println("</html>");*/
            if (session!=null)
          {
             
              RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
              rd.include(request,response);
             
              
          }
            
            
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
