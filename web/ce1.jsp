<%-- 
    Document   : reg
    Created on : Sep 30, 2014, 6:14:33 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%ResultSet rs=null;%>
<!DOCTYPE html>
<html>
    <title>
        F2S registration
    </title>
    <body>
        <link rel="stylesheet" href="trycss.css">
        <form class="sign-up" action="ce2.jsp" method="post">
    <h1 class="sign-up-title">CONFIRMATION EMAIL</h1>
    <br/>
    <center><a href="ihome.jsp"><h1 clas="sign-up-title" > Home Page</h1></a></center>
<%
response.setIntHeader("refresh",2);
    try{
           Connection connection = null;
            Statement statement = null;
    Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
      statement = connection.createStatement();
          String iid=(String) session.getAttribute("insti");
           PreparedStatement st=null;
      String sql1 = "select orderid from email where iid=?";
         st=connection.prepareStatement(sql1);
        st.setString(1,iid);
     rs=st.executeQuery();
%>
 
  
    <select name="u">
        <%  while(rs.next()){ %>
             <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
        <% } %>
      </select>
  <% sql1 = "select email from email where iid=?";
         st=connection.prepareStatement(sql1);
        st.setString(1,iid);
     rs=st.executeQuery();
   %>
        <br/><br/>
      <select name="to">
        <%  while(rs.next()){ %>
             <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
        <% } %>
      </select>
      
      
        <% sql1 = "select subject from email where iid=?";
         st=connection.prepareStatement(sql1);
        st.setString(1,iid);
     rs=st.executeQuery();
   %>
        <br><br>
        <select name="subject">
        <%  while(rs.next()){ %>
              <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
            <% } %>
        </select>
            <% sql1 = "select text from email where iid=?";
         st=connection.prepareStatement(sql1);
        st.setString(1,iid);
     rs=st.executeQuery();
   %>
        <br><br>
        
        <select name="message">
        <%  while(rs.next()){ %>
              <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
            <% } %>
        </select>
     
    <input type="submit" value="Send Email!" class="sign-up-button">
    <center><a href="confirm.jsp">View Orders></a>
  </form>
          <%
//**Should I input the codes here?**
        rs.close();
    statement.close();
    connection.close();}
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
    </body>
</html>