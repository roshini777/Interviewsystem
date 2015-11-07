<html>
<head>
<title>JSP JavaMail Example </title>
</head>
<body>


<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<%

      try {
                Connection con = null;
            Statement s = null;

          ResultSet rs = null;

         Class.forName("com.mysql.jdbc.Driver");
            con=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
          s = con.createStatement();
       String host ="localhost";
    String apple=(String) session.getAttribute("insti");   
String id= request.getParameter("u");
String to = request.getParameter("to");
String from="f2s@gmail.com";
String subject = request.getParameter("subject");
String message = request.getParameter("message");
    
           PreparedStatement st=null;
                   String sql="delete from email where orderid=?";
    st=con.prepareStatement(sql);
       st.setString(1,id);  
    st.executeUpdate();
    st=null;
        sql="insert into status values(?,?,?,?,?)";
    st=con.prepareStatement(sql);
    st.setString(1,id);    
    st.setString(2,apple);
    st.setString(3,to);
    st.setString(4,subject);
    st.setString(5,message);
    st.executeUpdate();
     
       out.println ("<html><body><script>alert('EMAIL SUCCESSFULLY SENT');</script></body></html>");
                
out.println("Mail was sent to " + to);
out.println(" from " + from);
out.println(" using host " + host + ".");
%>

<br/><br/>
<center><h2><a href="ce1.jsp">BACK</a></h2></center>

<%


  
    rs.close();
    s.close(); st.close();
    con.close();
      }catch (Exception ex) {  }
       

%>
</table>
</body>
</html>