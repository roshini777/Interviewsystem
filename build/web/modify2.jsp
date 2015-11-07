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

          // Load JBBC driver "com.mysql.jdbc.Driver"
         Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/trial", "root", "ohgod");
          statement = connection.createStatement();
          String iid=request.getParameter("uname");
        String pass1=request.getParameter("cpass");

          // sql query to retrieve values from the secified table.
           PreparedStatement st=null;
        String sql = "update INSTITUTE SET SL=? WHERE ROWID=?";
         st=connection.prepareStatement(sql);
         st.setString(1,pass1);
        st.setString(2,iid);
     
        st.executeUpdate();
        st=null;
         String sql1 = "SELECT ROWID,SL FROM INSTITUTE WHERE ROWID=?";
         st=connection.prepareStatement(sql1);
        st.setString(1,iid);
     rs=st.executeQuery();
     
     %>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
        <TD>ROW ID</TD>        
	<TD>SL</TD>
     
  <%
    while (rs.next()) {
    %>
    
    <TR>
        <TD><%=rs.getString(1)%></TD>
        <TD><%=rs.getString(2)%></TD>
        
         <%   }   
  
    rs.close();
    statement.close();
    connection.close();
      }catch (Exception ex) {
              out.println("Unable to connect to database.");
            }
        %>
    </TABLE><TABLE align="center">
        <TR>
            <TD><FORM ACTION="md1.jsp" method="get" >
            <button type="submit"><-- back </button></TD>
        </TR>
    </TABLE>
</font>
</body>
</html>