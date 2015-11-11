/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 *
 * @author User
 */
public class editr2 extends HttpServlet {

    public static Connection connect()
{Connection con=null;
    try{
        
   
     Class.forName("com.mysql.jdbc.Driver");
            con=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
  
    }
    catch(Exception e)
    {
        System.out.println("bad");
        System.out.println(e);
        
    }
    return con;
}
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         HttpSession session=request.getSession(false);
        
        try {
           
             if (session!=null)
          {
             
              RequestDispatcher rd=request.getRequestDispatcher("editr1.jsp");
              rd.include(request,response);
             
              
          }
        else
          {
              System.out.println("failure");
          }
String a=request.getParameter("iid");
String b=request.getParameter("ibranch");
String c=request.getParameter("itype");
String d=request.getParameter("thedate");
String e=request.getParameter("thetime");
String f=request.getParameter("sl"); 
             
            Connection con=null;   
            con=connect();
            ResultSet rs;
            PreparedStatement s=null;
            String sql="insert into ibranch values(?,?,?,?,?,?)";
    s=con.prepareStatement(sql);
s.setString(1,a);
s.setString(2,b);
s.setString(3,c);
s.setString(4,d);
s.setString(5,e);
s.setString(6,f);
int k=s.executeUpdate();
            
                out.println ("<html><body><script>alert('Successfully Added');</script></body></html>");
                 RequestDispatcher rd=request.getRequestDispatcher("ehome.jsp");
            rd.include(request, response);
            
        }
        catch(Exception e)
        {
           System.out.println(e.getMessage());
        }
        finally {            
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