<%@ page import="java.sql.*" %>
<%ResultSet rs =null;%>

<%
    try{

Connection connection=null;
     Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/trial", "root", "ohgod");
  
       Statement statement = connection.createStatement() ;

       rs =statement.executeQuery("SELECT DISTINCT(INAME) FROM INSTITUTE") ;
%>

        <select>
        <%  while(rs.next()){ %>
            <option><%=rs.getString(1)%></option>
        <% } %>
        </select>

<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</BODY>