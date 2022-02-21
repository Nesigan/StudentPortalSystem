<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Voting System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="assets/css/style.css">
</head>
<body style="background-color:#94618e">
<div class="page-container">
<h1 style="padding: 0px 0px 40px 0;color: #fff;">Rajalakshmi Enginnering College</h1>
            <h1 style="margin: 0px 0px 16px 0px;">Login</h1>
            <form method="post" action="LoginServlet">
                <input type="text" name="username" class="username" placeholder="Username">
                <input type="password" name="password" class="password" placeholder="Password">
                <button type="submit">Sign me in</button>
                <button name="signup" type="button" id="signup" value="Sign Up" onclick="window.location.href='register.jsp'">Register me</button>
                <div class="error"><span>+</span></div>
            </form>
        </div>

        
</body>
</html>