package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class uans_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Comments and Queries</title>\n");
      out.write("</head>\n");
      out.write("<link href=\"tooplate_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("       <div id=\"tooplate_wrapper\">\n");
      out.write("\n");
      out.write("<h2 align=\"center\">Reply For your Query</h2>\n");

      try {
          /* Create string of connection url within specified format with machine name, port number and database name. Here machine name id localhost and database name is student. */
          String connectionURL = "jdbc:mysql://localhost:3306/interview";

          // declare a connection by using Connection interface
          Connection connection = null;

          // declare object of Statement interface that is used for executing sql statements.
          PreparedStatement statement = null;

          // declare a resultset that uses as a table for output data from tha table.
          ResultSet rs = null;

          // Load JBBC driver "com.mysql.jdbc.Driver"
          Class.forName("com.mysql.jdbc.Driver").newInstance();

          /* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database. */
          connection = DriverManager.getConnection(connectionURL, "root", "roshini");

          /* createStatement() is used for create statement object that is used for sending sql statements
          to the specified database. */
         
  String uname=(String) session.getAttribute("user");
 
          // sql query to retrieve values from the secified table.
          String QueryString = "SELECT reply from answer where username=?;";
           statement=connection.prepareStatement(QueryString);
           statement.setString(1,uname);
          rs = statement.executeQuery();

      out.write("\n");
      out.write("<TABLE cellpadding=\"15\" border=\"1\" style=\"background-color: #ffffcc;\" align=\"center\">\n");
      out.write("   \n");
      out.write("        \n");
      out.write("    <TD>REPLY</TD>\n");
      out.write("        \n");
      out.write("    ");

    while (rs.next()) {
    
      out.write("\n");
      out.write("    <TR>\n");
      out.write("        <TD HEIGHT=\"100\" WIDTH=\"100\">");
      out.print(rs.getString(1));
      out.write("</TD>\n");
      out.write("    </TR>\n");
      out.write("    ");
   }    
      out.write("\n");
      out.write("    ");

    // close all the connections.
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
    
      out.write("\n");
      out.write("    </font>\n");
      out.write("    <font size=\"+3\" color=\"red\"></b>\n");
      out.write("        ");

                out.println("No replies available.");
            }
        
      out.write("\n");
      out.write("    </TABLE><TABLE align=\"center\">\n");
      out.write("        <TR>\n");
      out.write("            <TD><FORM ACTION=\"home.jsp\" method=\"get\" >\n");
      out.write("            <button type=\"submit\"><-- back</button></TD>\n");
      out.write("        </TR>\n");
      out.write("    </TABLE>\n");
      out.write("</font>\n");
      out.write("       </div>\n");
      out.write("    <div id=\"tooplate_footer_wrapper\">\n");
      out.write("    <div id=\"tooplate_footer\">\n");
      out.write("    \n");
      out.write("        Copyright © 2014 <a href=\"#\">F2S-Formula To Success</a> - Designed by <a rel=\"nofollow\" href=\"http://www.tooplate.com\" target=\"_parent\">F2S Solutions</a>\n");
      out.write("    \n");
      out.write("    </div> <!-- end of tooplate_footer -->\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
