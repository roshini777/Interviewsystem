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
                Connection con = null;
            Statement s = null;
          ResultSet rs = null;

         Class.forName("com.mysql.jdbc.Driver");
            con=  DriverManager.getConnection( "jdbc:mysql://localhost:3306/interview", "root", "roshini");
          s = con.createStatement();
         String a=request.getParameter("iid");
        String b=request.getParameter("ibranch");
        String c=request.getParameter("itype");
        String d=request.getParameter("idate");
        String e=request.getParameter("itime");
        String f=request.getParameter("sl"); 

    
           PreparedStatement st=null;
                   String sql="delete from ibranch where iid=? and bid=? and itype=? and idate=? and itime=? and seats=?;";
    st=con.prepareStatement(sql);
        st.setString(1,a);
    st.setString(2,b);
    st.setString(3,c);
    st.setString(4,d);
    st.setString(5,e);
    st.setString(6,f);
    st.executeUpdate();
     
     %>


      
         <%      
  
    rs.close();
    s.close(); st.close();
    con.close();
      }catch (Exception ex) {  }
        %>
    </TABLE><TABLE align="center">
        <TR>
            <TD><FORM ACTION="ehome.jsp" method="get" >
            <button type="submit"><-- back </button></TD>
        </TR>
    </TABLE>
</font>
</body>
</html>