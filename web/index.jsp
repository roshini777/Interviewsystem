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
    <%-- <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/new.css" />
    <body>
       <div id=”container”>
Everything within my document is inside this division.

        <h1><Font color="Blue">Hello There! :D</font></h1>
        
        <h1>
            <span class=”greenboldtext”>
            Please Login to the world of interview frenzy! :D</span></h1>
        <form action="register" method="post">
            <p align="left">
                <font color="Red" size="15">
                NOT REGISTERED YET? CLICK SIGN UP NOW! :)
                 </div> 
                        </p>

                <input type="submit" value="sign up">
                </font>
        </form>

        <form action="First" method="post">
            
            <p align="center">
                <font color="Blue" size="20"> 
               
                Username:<input type="text" name="uname"/><br/>
             Password:<input type="password" name="pass"/><br/>
             <input type="submit" value="login" size="20" color="blue"/></font></p>
        </form>
       
          
    </body>--%>
    
    
  <link rel="stylesheet" href="new.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<body>
  <h1 class="register-title">FORMULA TO SUCCESS WELCOMES YOU!</h1>
  <form class="register" action="First" method="post">
    <div class="register-switch">
               <input type="radio" name="opt" value="ADMIN" id="ADMIN" class="register-switch-input" checked>
      <label for="ADMIN" class="register-switch-label">Admin</label>
      <input type="radio" name="opt" value="USER" id="USER" class="register-switch-input">
      <label for="USER" class="register-switch-label">User</label>

    </div>
    
      <%--Username:<input type="text"  name="uname"/><br/>
             Password:<input type="password"  name="pass"/><br/>
             <input type="submit" value="login" /> --%>
             <input type="text" class="register-input" placeholder="Username" name="uname">
    <input type="password" class="register-input" placeholder="Password" name="pass">
    <input type="submit"  value="Login" class="register-button">
    <a href="/Interviewsystem/reg.jsp">Sign up now!</a>
  </form>
             
</body>
</html>