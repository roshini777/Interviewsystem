<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
    <title>Display data from the table using jsp</title>
</head>
<body>
<h2 align="center">MODI-FIED :-) </h2>
<%
      try {
          Connection connection = null;
          Statement statement = null;
          ResultSet rs = null;
          ResultSet rs1=null;
        
         PreparedStatement st=null;
        PreparedStatement s=null;
        
          // Load JBBC driver "com.mysql.jdbc.Driver"
         Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
        statement = connection.createStatement();
        String a=request.getParameter("uname");
        
         String sql1 = "select * from status where orderid=?";
         st=connection.prepareStatement(sql1);
        st.setString(1,a);
        rs=st.executeQuery();
     
     %>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
        <TD>ORDER ID</TD>
        <TD>IID</TD>        
        <TD>Email-Id</TD>        
	<TD>Subject</TD>
        <TD>Text</TD>
     
  <%
    while (rs.next()) {
    %>
    
    <TR>
        <TD><%=rs.getString(1)%></TD>
        <TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
         <TD><%=rs.getString(4)%></TD>
         <TD><%=rs.getString(5)%></TD>
         <%   }   
  
    rs.close();
    rs1.close();
    statement.close();
    connection.close();
      }catch (Exception ex) {
            }
        %>
    </TABLE><TABLE align="center">
        <TR>
            <TD><FORM ACTION="status1.jsp" method="get" >
            <button type="submit"><-- back </button></TD>
        </TR>
    </TABLE>
</font>
</body>
</html>