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
            <h1>Please fill the below form to Register!</h1>
            <form method="post" action="RegistrationServlet">
                <table cellspacing=0 cellpadding="10">
                    <tr>
                        <td align="left" style="color: #F4DECB;"><b>FirstName:</b></td>
                        <td><input type="text" id="fname" name="fname" size="30"></td>
                    </tr>
                    <tr>
                        <td align=left style="color: #F4DECB"><b>LastName:</b></td>
                        <td><input type="text" id="lname" name="lname" size="30"></td>
                    </tr>
                    <tr>
                        <td align=left style="color: #F4DECB"><b>Username:</b></td>
                        <td><input type="text" id="uname" name="uname" size="30"></td>
                    </tr>
                    <tr>
                        <td align=left style="color: #F4DECB"><b>Password:</b></td>
                        <td><input type="text" id="regpwd" name="regpwd" size="30"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <Button name="register" type="submit" id="reg" value="Register" style="width: 96px; height: 36px; font-size: 16px; margin: 28px 0 0 0px;">Register</Button>
                        </td>
                    </tr>
		</table>
               
            </form>
        </div>

</html>