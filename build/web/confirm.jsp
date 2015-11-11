<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
    <title>Display data from the table using jsp</title>
</head>
<body>
<h2 align="center">ORDER DETAILS</h2>
<%
      try {
                Connection connection = null;
            Statement statement = null;
          ResultSet rs = null;

          // Load JBBC driver "com.mysql.jdbc.Driver"
               
    Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
      statement = connection.createStatement();
          String iid=request.getParameter("uname");
        String pass=request.getParameter("pass");

          // sql query to retrieve values from the secified table.
           PreparedStatement st=null;
        String sql = "select * FROM email";
         st=connection.prepareStatement(sql);
     rs=st.executeQuery();
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
        <TD>ORDER ID</TD>
        <TD>IID</TD>
	<TD>EMAIL</TD>
        <TD>SUBJECT</TD>
        <TD>TEXT</TD>
        
       
    <%
    while (rs.next()) {
    %>
    <TR>
        <TD><%=rs.getString(1)%></TD>
        <TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
         <TD><%=rs.getString(4)%></TD>
              <TD><%=rs.getString(5)%></TD>
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
            <TD><FORM ACTION="ce1.jsp" method="get" >
            <button type="submit"><-- back</button></TD>
        </TR>
    </TABLE>
</font>
</body>
</html>