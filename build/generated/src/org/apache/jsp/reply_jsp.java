package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class reply_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>About us</title>\n");
      out.write("<link href=\"tooplate_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("       <div id=\"tooplate_wrapper\">\n");
      out.write("           <BR/>\n");
      out.write("\n");
      out.write("           <CENTER> <h1> REPLY PAGE</h1></CENTER>\n");
      out.write("           <BR/>\n");
      out.write("<BR/>\n");
      out.write("<BR/>\n");
      out.write("\n");
      out.write("           <form action=\"message\" method=\"post\">\n");
      out.write("               <center>\n");
      out.write("                   ");
      out.write("\n");
      out.write("     <br/>MESSAGE:<br/><BR/>\n");
      out.write("<textarea name=\"reply\" rows=\"12\" cols=\"100\"></textarea><BR/>\n");
      out.write("<br/><input type=\"submit\"  VALUE=\"SEND\" name=\"Send\"/>\n");
      out.write("</center>\n");
      out.write("</form>\n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("           </form>\n");
      out.write("           \n");
      out.write("           \n");
      out.write("           \n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("<div id=\"tooplate_footer_wrapper\">\n");
      out.write("    <div id=\"tooplate_footer\">\n");
      out.write("    \n");
      out.write("        Copyright © 2014 <a href=\"#\">F2S-Formula To Success</a> - Designed by <a rel=\"nofollow\" href=\"http://www.tooplate.com\" target=\"_parent\">F2S Solutions</a>\n");
      out.write("    \n");
      out.write("    </div> <!-- end of tooplate_footer -->\n");
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
