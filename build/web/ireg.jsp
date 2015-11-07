
<%-- 
    Document   : reg
    Created on : Sep 30, 2014, 6:14:33 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%ResultSet rs=null;%>

<%
    try{

Connection connection=null;
     Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
  
       Statement statement = connection.createStatement() ;

       rs =statement.executeQuery("select * from inames") ;
%>
<html>
    <title>
        F2S registration
    </title>
    <body>
        <link rel="stylesheet" href="trycss.css">
        <form class="sign-up" action="iregister" method="post">
    <h1 class="sign-up-title">Register in Seconds!</h1>
    <br/>
    <center><a href="home.jsp"><h1 clas="sign-up-title" > Home Page</h1></a></center>
    <br><br><center><a href="userview.jsp"><h1 class="sign-up-title" > View Institute Details!</h1></a></center>

           <%
                          String uname= (String) session.getAttribute("user");
           %>
         
   <input type="text" name="username" class="sign-up-input" 
          placeholder="What's your Username?"  value="<%=uname %>">
     <select name="iname">
        <%  while(rs.next()){ %>
             <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
        <% } %>
        </select>
        <%rs=statement.executeQuery("select * from bnames") ;%>
        <br><br>
        <select name="ibranch">
        <%  while(rs.next()){ %>
              <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
            <% } %>
        </select>
         <%rs=statement.executeQuery("select distinct(itype) from ibranch");%>
        <br><br>
        
        <select name="itype">
        <%  while(rs.next()){ %>
              <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
            <% } %>
        </select>
        
            <%rs=statement.executeQuery("select distinct(idate) from ibranch");%>
        <br><br>
        
        <select name="idate">
        <%  while(rs.next()){ %>
              <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
            <% } %>
        </select>
        
         <%rs=statement.executeQuery("select distinct(itime) from ibranch");%>
        <br><br>
        
        <select name="itime">
        <%  while(rs.next()){ %>
              <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
            <% } %>
        </select>
        
        
        <br><br><input type="submit" value="Register!" class="sign-up-button">
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