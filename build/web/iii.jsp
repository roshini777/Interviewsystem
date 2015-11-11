<%-- 
    Document   : index
    Created on : Sep 29, 2014, 7:37:12 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>F2S-Formula to Success</title>
    </head>
    
    
    
  <link rel="stylesheet" href="new.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<body>
  <h1 class="register-title">FORMULA TO SUCCESS WELCOMES YOU!</h1>
  <form class="register" action="instilogin" method="post">
  
    
      <%--Username:<input type="text"  name="uname"/><br/>
             Password:<input type="password"  name="pass"/><br/>
             <input type="submit" value="login" /> --%>
             <input type="text" class="register-input" placeholder="Username" name="uname">
    <input type="password" class="register-input" placeholder="Password" name="pass">
   <input type="submit"  value="LOG IN!" class="register-button">
   <br>
   <center><h3><a href="userpw1.jsp">Forgot Password? </a></h3></center>
   
    <br>
   <center><h3><a href="index.jsp">Not an Institute Admin?</a></h3></center>
   <br>
  </form>
              
  

             
</body>
</html>