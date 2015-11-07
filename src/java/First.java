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
import java.sql.*;

/**
 *
 * @author User
 */
public class First extends HttpServlet {

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
        String type=request.getParameter("opt");
        String uname=request.getParameter("uname");
           String pass=request.getParameter("pass");
        try {
           
          Connection con=null;   
            con=connect();
            ResultSet rs;
            PreparedStatement st=null;
   String sql="select * from login where tid=? and username=? and password=?";
    st=con.prepareStatement(sql);
   st.setString(1,type);
   st.setString(2,uname);
   st.setString(3,pass);
  String a="A";
  String u="U";
   rs=st.executeQuery();
   String a3=null;
   String a1=null;
   String a2=null;
       int count=0;
       
       while(rs.next())
       {
           a3=rs.getString(1);
           a1=rs.getString(2);
           a2=rs.getString(3);
          count++;
       }
      
            if(count==1)
                    {
                     if(a3.equals(u))
                     {
                         
                         
           System.out.println("success");
               HttpSession session=request.getSession();
               session.setAttribute("user", uname);
               RequestDispatcher rq=request.getRequestDispatcher("Second");
               rq.forward(request,response);
                     }
                     if(a3.equals(a))
                     {
                         HttpSession session=request.getSession();
                         session.setAttribute("admin",uname);
                         RequestDispatcher rq=request.getRequestDispatcher("third");
                         rq.forward(request,response);
                     }
             
              
   
                    }
            else
            {
                 
                 response.sendRedirect("index.jsp");
            }
       
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
