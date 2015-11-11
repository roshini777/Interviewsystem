<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html> 
    <head> 
        <title>Display Institution details</title>
    </head> 
     <link rel="stylesheet" href="new.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<body>
  <h1 class="register-title">FORMULA TO SUCCESS WELCOMES YOU!</h1>
  <form class="register" action="cp2.jsp" method="post">
          
           <%
                          String uname= (String) session.getAttribute("insti");
           %>
         
   <input type="text" name="username" class="sign-up-input" 
          placeholder="What's your Username?"  value="<%=uname %>">
    <input type="password" class="register-input" placeholder="Current Password" name="cpass">
    <input type="password" class="register-input" placeholder="New Password" name="npass">
    <input type="submit"  value="CHANGE PASSWORD!" class="register-button">
    <a href="ehome.jsp">Back home</a>
  </form>
             
</body>
        
</html>
                