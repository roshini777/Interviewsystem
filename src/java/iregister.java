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
public class iregister extends HttpServlet {

    public static Connection connect()
{Connection con=null;
    try{
        
   
     Class.forName("com.mysql.jdbc.Driver");
            con=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
  
    }
    catch(ClassNotFoundException e)
    {
        System.out.println("bad");
        System.out.println(e);
        
    }   catch (SQLException e) {
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
              RequestDispatcher rd=request.getRequestDispatcher("ireg.jsp");
              rd.include(request,response);
             
              
          }
        else
          {
              System.out.println("failure");
          }
              
String b=request.getParameter("username");
String e=request.getParameter("iname");
String f=request.getParameter("ibranch");
String g=request.getParameter("itype");
String h=request.getParameter("idate");
String i=request.getParameter("itime");
             
             
            Connection con;   
            con=connect();
            ResultSet rs;
            PreparedStatement s;
               ResultSet rs1;
            PreparedStatement s1=null;
               ResultSet rs2;
            PreparedStatement s2=null;
               ResultSet rs3;
            PreparedStatement s3=null;
            
                int k;
             int c=0;
       int count=0;
       String c1="R";
 int a3=0; 
          String sql="select seats from ibranch where iid=? and bid=? and itype=? and idate=? and itime=?";
    s=con.prepareStatement(sql);
s.setString(1,e);
s.setString(2,f);
s.setString(3,g);
s.setString(4,h);
s.setString(5,i);
 
    rs=s.executeQuery();

         
             if(rs.next())
                    a3=rs.getInt(1);
       
    
             if(a3>count)
                    {
           
                      sql="update ibranch set seats=seats-1 where iid=? and bid=? and itype=? and idate=? and itime=? and seats>0";
                           s1=con.prepareStatement(sql);
                         
                            s1.setString(1,e);
                            s1.setString(2,f);
                            s1.setString(3,g);
                            s1.setString(4,h);
                            s1.setString(5,i);
                          
                     c1="A";
                    s1.executeUpdate();

                            
                    }
            
             
        rs.close();
  
                          
    sql="select email from user where username=?";
    s2=con.prepareStatement(sql);
    s2.setString(1,b);
    rs2=s2.executeQuery();
String A=null;
String B=null;
String C=null;
                
    if(rs2.next())
         A=rs2.getString(1);
       
        sql="insert into email(iid,email,subject,text) values(?,?,?,?)";
         s3=con.prepareStatement(sql);
       s3.setString(1,e);
         s3.setString(2,A);
        if(a3 >= 1 )
        {s3.setString(3,"ACCEPTED");
             s3.setString(4,"Application APPROVED");
       
           }
        else
        {  s3.setString(3,"REJECTED");
            s3.setString(4,"NO SEAT AVAILABILITY. SORRY."); 
        }
        
        s3.executeUpdate();     
        
        String Display = null;
          sql="select max(orderid) from email where email=?";
           s2=con.prepareStatement(sql);
            s2.setString(1,A);
            rs2=s2.executeQuery();
            if(rs2.next())
                Display=rs2.getString(1);
        out.println ("<html><body><script>alert('SCROLL DOWN TO VIEW ORDERID');</script></body></html>");
       
        out.println("<center><h1>ORDER ID: " + Display+"</h1></center>" );
         out.println("<br/><br/><br/><br/>");
          out.println("<br/><br/><br/><br/>");
           out.println("<br/><br/><br/><br/>");
        RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
            rd.include(request, response);
            
            
    //rs.close();
   // s.close();
   // rs1.close();
    //s1.close();
      rs2.close();
    s2.close();
     // rs3.close();
    //s3.close();
    con.close();
            
    }
            
 
        catch(ServletException e)
        {
           System.out.println(e.getMessage());
        } catch (IOException e) {
            System.out.println(e.getMessage());
        } catch (SQLException e) {
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