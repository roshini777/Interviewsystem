<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html> 
    <head> 
        <title>display registration</title>
    </head> 
     <link rel="stylesheet" href="new.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<body>
  <h1 class="register-title">FORMULA TO SUCCESS WELCOMES YOU!</h1>
  <form class="register" action="sixth" method="post">
             <input type="text" class="register-input" placeholder="IID" name="uname">
    <input type="password" class="register-input" placeholder="Password" name="pass">
    <input type="submit"  value="Login" class="register-button">
     <a href="/Interviewsystem/ihome.jsp">Back home</a>
  </form>
             
</body>
        
</html>