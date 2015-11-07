<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
    <title>Display data from the table using jsp</title>
</head>
<body>
<h2 align="center">INSTITUTE DETAILS</h2>
<%
      try {
                Connection connection = null;
            Statement statement = null;
          ResultSet rs = null;

          // Load JBBC driver "com.mysql.jdbc.Driver"
               
    Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
      statement = connection.createStatement();
          String iid=(String) session.getAttribute("insti");

          // sql query to retrieve values from the secified table.
           PreparedStatement st=null;
        String sql = "select a.iid,iname,a.bid,bname,itype,idate,itime,seats from ibranch a,inames b, bnames c where a.iid=? and b.iid=a.iid and c.bid=a.bid;";
         st=connection.prepareStatement(sql);
        st.setString(1,iid);
     rs=st.executeQuery();
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
        <TD>IID</TD>        
	<TD>INAME</TD>
        <TD>BID</TD>
        <TD>BRANCH NAME</TD>
        <TD>TYPE</TD>
        <TD>DATE</TD>
        <TD>TIME</TD>
        <TD>SEATS</TD>
       
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
	<TD><%=rs.getInt(8)%></TD>
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
            <TD><FORM ACTION="ihome.jsp" method="get" >
            <button type="submit"><-- back</button></TD>
        </TR>
    </TABLE>
</font>
</body>
</html>