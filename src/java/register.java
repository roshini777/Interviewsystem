/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
- */



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
             
            
              RequestDispatcher rd=request.getRequestDispatcher("reg.jsp");
              rd.include(request,response);
             
              
          }
        else
          {
              System.out.println("failure");
          }
             String a="U";
String b=request.getParameter("uname");
String c=request.getParameter("pass");
String d=request.getParameter("name");
String g=request.getParameter("address");
String h=request.getParameter("qual");
String i=request.getParameter("email");
String j=request.getParameter("lost");
             Connection con=null;   
            con=connect();
            ResultSet rs;
            PreparedStatement st=null,st1=null;
            PreparedStatement s=null,s1=null;
             String sq="insert into login values(?,?,?)";
             st=con.prepareStatement(sq);
             st.setString(1,a);
             st.setString(2,b);
             st.setString(3,c);
        int l=st.executeUpdate();
        st=null; String sql1;
            String sql="insert into user values(?,?,?,?,?)";
    s=con.prepareStatement(sql);
s.setString(1,b);
s.setString(2,d);
s.setString(3,i);
s.setString(4,g);
s.setString(5,h);
sql1="insert into lostpassword values(?,?)";
    s1=con.prepareStatement(sql1);
s1.setString(1,b);
s1.setString(2,j);
int k=s.executeUpdate();
            int v=s1.executeUpdate();
            out.println ("<html><body><script>alert('REGISTERED SUCCESSFULLY!!!');</script></body></html>");
                 RequestDispatcher rd=request.getRequestDispatcher("First");
            rd.include(request, response);
            
        }
        catch(Exception e)
        { out.println ("<html><body><script>alert('ENTER UNIQUE USERNAME and CODE');</script></body></html>");
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
