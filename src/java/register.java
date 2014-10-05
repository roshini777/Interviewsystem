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
public class register extends HttpServlet {

    public static Connection connect()
{Connection con=null;
    try{
        
    Class.forName("com.mysql.jdbc.Driver");
            con=  DriverManager.getConnection( "jdbc:mysql://localhost/interview", "root", "roshini");
    
           
  
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
             
              RequestDispatcher rd=request.getRequestDispatcher("reg.jsp");
              rd.include(request,response);
             
              
          }
        else
          {
              System.out.println("failure");
          }
             String a="USER";
String b=request.getParameter("uname");
String c=request.getParameter("pass");
String d=request.getParameter("fname");
String e=request.getParameter("name");
String f=request.getParameter("age");
String g=request.getParameter("address");
String h=request.getParameter("qual");
String i=request.getParameter("email");
String j=request.getParameter("pno");
             Connection con=null;   
            con=connect();
            ResultSet rs;
            PreparedStatement st=null;
             String sq="insert into login values(?,?,?)";
             st=con.prepareStatement(sq);
             st.setString(1,a);
        st.setString(2,b);
        st.setString(3,c);
        int l=st.executeUpdate();
        st=null;
            String sql="insert into pregister values(?,?,?,?,?,?,?,?,?,?)";
    st=con.prepareStatement(sql);
    st.setString(1,a);
st.setString(2,b);
st.setString(3,c);
st.setString(4,d);
st.setString(5,e);
st.setString(6,f);
st.setString(7,g);
st.setString(8,h);
st.setString(9,i);
st.setString(10,j);
int k=st.executeUpdate();
            
                out.println ("<html><body><script>alert('REGISTERED SUCCESSFULLY!click on the take me to login page button');</script></body></html>");
                 RequestDispatcher rd=request.getRequestDispatcher("First");
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
