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
   <a href="/Interviewsystem/index.jsp"><h1 class="sign-up-title" > Take me to Login page</h1></a>

    <input type="text" name="uname" class="sign-up-input" placeholder="Choose a username?" autofocus>
     <input type="password" name="pass" class="sign-up-input" placeholder="Choose a password">
     <input type="text" name="fname" class="sign-up-input" placeholder="What's your first name?" autofocus>
    <input type="text" class="sign-up-input" placeholder="What's your lastname?" autofocus name="lname">
    <input type="text" class="sign-up-input" placeholder="How old are you?" autofocus name="age">
    <input type="text" class="sign-up-input" placeholder="Where do you live?" autofocus name="address">
    <input type="text" class="sign-up-input" placeholder="What have you completed?" autofocus name="qual">
    <input type="text" class="sign-up-input" placeholder="Email address" autofocus name="email">
    <input type="text" class="sign-up-input" placeholder="What's your number" autofocus name="pno">
    <input type="submit" value="Sign me up!" class="sign-up-button">
  </form>
        
    </body>
</html>