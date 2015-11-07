import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
public class valid extends HttpServlet {

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
        String uname=(String) session.getAttribute("user");
           String query=request.getParameter("comment");
        try {
           
          Connection con=null;   
            con=connect();
            ResultSet rs;
            PreparedStatement st=null;
   String sql="insert into comment values(?,?)";
     st=con.prepareStatement(sql);
             st.setString(1,uname);//check for session
             st.setString(2,query);
           int l=st.executeUpdate();
            out.println ("<html><body><script>alert('Your query has been recorded.We will get back to you shortly');</script></body></html>");
                 RequestDispatcher rd=request.getRequestDispatcher("contact.html");
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
