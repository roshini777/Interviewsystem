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
        <form class="sign-up" action="editr2" method="post">
    <h1 class="sign-up-title">ADD NEW SESSION</h1>
    <br/>
    <center><a href="ihome.jsp"><h1 clas="sign-up-title" > Home Page</h1></a></center>
<%
    try{
           Connection connection = null;
            Statement statement = null;
    Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
      statement = connection.createStatement();
          String iid=(String) session.getAttribute("insti");
           PreparedStatement st=null;
      String sql1 = "select iid,iname from inames where iid=?";
         st=connection.prepareStatement(sql1);
        st.setString(1,iid);
     rs=st.executeQuery();
%>
 

    <select name="iid">
        <%  while(rs.next()){ %>
             <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
        <% } %>
    
    
      </select>
        <%sql1 = "select a.bid,bname from bnames a,main b where b.bid=a.bid and b.iid=?";
         st=connection.prepareStatement(sql1);
        st.setString(1,iid);
     rs=st.executeQuery();%>
        <br><br>
        <select name="ibranch">
        <%  while(rs.next()){ %>
              <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
            <% } %>
        </select>
        
        <%sql1 = "select distinct(itype) from ibranch where iid=?";
         st=connection.prepareStatement(sql1);
        st.setString(1,iid);
     rs=st.executeQuery();%>
        <br><br>
        
        <select name="itype">
        <%  while(rs.next()){ %>
              <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
            <% } %>
        </select>
     
     <input type="date" name="thedate" class="sign-up-input" placeholder="THEDATE">
     <input type="time" name="thetime" class="sign-up-input" placeholder="THETIME" autofocus>
    <input type="text" name="sl" class="sign-up-input" placeholder="SL" autofocus>

    <input type="submit" value="ADD!" class="sign-up-button">
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