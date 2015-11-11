<%-- 
    Document   : reg
    Created on : Sep 30, 2014, 6:14:33 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <title>
        F2S registration
    </title>
    <body>
        <link rel="stylesheet" href="trycss.css">
        <form class="sign-up" action="register" method="post">
    <h1 class="sign-up-title">Sign up in seconds</h1>
    <br/>
   <a href="index.jsp"><h1 class="sign-up-title" > Take me to Login page</h1></a>

    <input type="text" name="uname" class="sign-up-input" placeholder="Choose a username?" autofocus>
    <input type="password" name="pass" class="sign-up-input" placeholder="Choose a password">
    <input type="text" name="name" class="sign-up-input" placeholder="What's your full name?" autofocus>
    <input type="text" class="sign-up-input" placeholder="Where do you live?" autofocus name="address">
    <input type="text" class="sign-up-input" placeholder="What have you completed?" autofocus name="qual">
    <input type="email" class="sign-up-input" placeholder="Email address" autofocus name="email">
    <input type="password" class="sign-up-input" placeholder="YOUR UNIQUE CODE INCASE YOU FORGET" autofocus name="lost">
    <input type="submit" value="Sign me up!" class="sign-up-button">
    
    
  </form>
        
 
        
    </body>
</html>