<%-- 
    Document   : query
    Created on : Oct 12, 2014, 7:57:22 PM
    Author     : User
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
    <title>Comments and Queries</title>
</head>
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

    <body>
       <div id="tooplate_wrapper">

<h2 align="center">Comments and Queries</h2>
<%
      try {
          /* Create string of connection url within specified format with machine name, port number and database name. Here machine name id localhost and database name is student. */
          String connectionURL = "jdbc:mysql://localhost:3306/interview";

          // declare a connection by using Connection interface
          Connection connection = null;

          // declare object of Statement interface that is used for executing sql statements.
          Statement statement = null;

          // declare a resultset that uses as a table for output data from tha table.
          ResultSet rs = null;

          // Load JBBC driver "com.mysql.jdbc.Driver"
          Class.forName("com.mysql.jdbc.Driver").newInstance();

          /* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database. */
          connection = DriverManager.getConnection(connectionURL, "root", "roshini");

          /* createStatement() is used for create statement object that is used for sending sql statements
          to the specified database. */
          statement = connection.createStatement();

          // sql query to retrieve values from the secified table.
          String QueryString = "SELECT * from comment";
          rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
   
        <TD >USERNAME</TD>
         <TD >COMMENT/QUERY</TD>
         <TD>CLICK TO REPLY</TD>
    <%
    while (rs.next()) {
    %>
    <TR>
        <TD HEIGHT="100" WIDTH="100"><%=rs.getString(1)%></TD>
        <TD HEIGHT="100" WIDTH="100"><%=rs.getString(2)%></TD>
        <% String name=rs.getString(1);
         session.setAttribute( "user", name );
%>
       <TD HEIGHT="100" WIDTH="100"><A HREF="reply.jsp">CLICK HERE TO REPLY</a></TD>
        
    </TR>
    <%   }    %>
    <%
    // close all the connections.
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
    %>
    </font>
    <font size="+3" color="red"></b>
        <%
                out.println("Unable to connect to database.");
            }
        %>
    </TABLE><TABLE align="center">
        <TR>
            <TD><FORM ACTION="adhome.jsp" method="get" >
            <button type="submit"><-- back</button></TD>
        </TR>
    </TABLE>
</font>
       </div>
    <div id="tooplate_footer_wrapper">
    <div id="tooplate_footer">
    
        Copyright © 2014 <a href="#">F2S-Formula To Success</a> - Designed by <a rel="nofollow" href="http://www.tooplate.com" target="_parent">F2S Solutions</a>
    
    </div> <!-- end of tooplate_footer -->
</div>
</body>
</html>