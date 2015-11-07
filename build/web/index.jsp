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
  <form class="register" action="First" method="post">
    <div class="register-switch">
               <input type="radio" name="opt" value="A" id="ADMIN" class="register-switch-input" checked>
      <label for="ADMIN" class="register-switch-label">Admin</label>
      <input type="radio" name="opt" value="U" id="USER" class="register-switch-input">
      <label for="USER" class="register-switch-label">User</label>
      
      
       

    </div>
    
      <%--Username:<input type="text"  name="uname"/><br/>
             Password:<input type="password"  name="pass"/><br/>
             <input type="submit" value="login" /> --%>
             <input type="text" class="register-input" placeholder="Username" name="uname">
    <input type="password" class="register-input" placeholder="Password" name="pass">
   <input type="submit"  value="LOG IN!" class="register-button">
   <br>
   <center><a href="userpw1.jsp">Forgot Password? </a></center>
   <br>
   <center><a href="iii.jsp"> INSTITUTE ADMIN? </a></center> 
  </form>
             <br>
             <br>
             <form class="register" action="reg.jsp" method="post">
                 <input type="submit"  value="OR SIGN UP NOW!" class="register-button">
             </form>
              
  

             
</body>
</html>