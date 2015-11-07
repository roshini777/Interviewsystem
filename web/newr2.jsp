<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
    <title>Display data from the table using jsp</title>
</head>
<body>
<h2 align="center">New registrations</h2>
<%
      try {
          /* Create string of connection url within specified format with machine name, port number and database name. Here machine name id localhost and database name is student. */
          String connectionURL = "jdbc:mysql://localhost:3306/trial";

          // declare a connection by using Connection interface
          Connection connection = null;

          // declare object of Statement interface that is used for executing sql statements.
          Statement statement = null;

          // declare a resultset that uses as a table for output data from tha table.
          ResultSet rs = null;

          // Load JBBC driver "com.mysql.jdbc.Driver"
         Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/trial", "root", "ohgod");
          statement = connection.createStatement();
          String iid=request.getParameter("uname");
        String pass=request.getParameter("pass");

          // sql query to retrieve values from the secified table.
           PreparedStatement st=null;
         String sql="select FNAME,LNAME,EMAL,IINAME,IBRANCH,ITYPE,THEDATE,THETIME from REGPEND,INSTITUTE where REGPEND.IID=? AND INSTITUTE.IID=? AND INSTITUTE.PASSWORD=?";
         st=connection.prepareStatement(sql);
        st.setString(1,iid);
        st.setString(2,iid);
        st.setString(3,pass);
     rs=st.executeQuery();
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
    <TD>FNAME</TD>
        <TD>LNAME</TD>
        <TD>EMAIL</TD>
        <TD>INAME</TD>
         <TD>BRANCH</TD>
        <TD>TYPE</TD>
        <TD>DATE</TD>
        <TD>TIME</TD>
       
    <%
    while (rs.next()) {
    %>
    <TR>
        <TD><%=rs.getString(1)%></TD>
        <TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
         <TD><%=rs.getString(4)%></TD>
        <TD><%=rs.getString(5)%></TD>
        <TD><%=rs.getString(6)%></TD>
        <TD><%=rs.getString(7)%></TD>
         
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
            <TD><FORM ACTION="newr1.jsp" method="get" >
            <button type="submit"><-- back</button></TD>
        </TR>
    </TABLE>
</font>
</body>
</html>