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

         Class.forName("com.mysql.jdbc.Driver");
            connection=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/trial", "root", "ohgod");
          statement = connection.createStatement();
          String iid=request.getParameter("uname");

    
           PreparedStatement st=null;
        String sql = "delete from REGPEND WHERE ROWID=?";
         st=connection.prepareStatement(sql);
        st.setString(1,iid);
        st.executeUpdate();
     
     %>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;" align="center">
        <TD>ROW ID</TD>        
	<TD> DATE</TD>
        <TD> TIME </TD>
     
  <%
    while (rs.next()) {
    %>
      
         <%   }   
  
    rs.close();
    statement.close();
    connection.close();
      }catch (Exception ex) {  }
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