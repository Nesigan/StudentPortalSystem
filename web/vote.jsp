<%@page import="votingsystem.domain.Vote"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/table1.css" />
<title>Voting System</title>
<%
	String userName = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username"))
				userName = cookie.getValue();
		}
	}
	if (userName == null)
		response.sendRedirect("login.jsp");%>

</head>
<body>
    <h2 style="text-align: left; color: #fff;">Please register your vote below</h2>
            <form method="POST" action="VotingServlet">
                <input type="hidden" name="username" id="username" value="<%=userName%>">
                <input type="hidden" name="id" id="id" value="1">
		<table style="width:100%">
                    <tr>
                        <th> Subject Name</th>
                        <th> Subject Code</th>
                        <th> Staff Name</th>
                    </tr>
                    <tr>
                        <td><input type="radio" name="vote" value="SCM"/>Supply Chain Management</td>
                        <td>OME1901</td>
                        <td>Dr.S.Dhandapani</td>
                    </tr>
                    <tr>
                            <td><input type="radio" name="vote"	value="B3D"/>Basics of 3D Printing</td>
                            <td>OME1902</td>
                            <td>Ms.R.Aruna</td>
                    </tr>
                    <tr>
                            <td><input type="radio" name="vote" value="BI" />Basic Bioinformatics</td>
                            <td>OBT1903</td>
                            <td>Mr.S.Arun Kumar</td>
                    </tr>
                </table>
                <center><Button name="submit" type="submit" id="submit" value="Submit" style="width: 96px; height: 36px; font-size: 16px; color: #fff; background-color: #49274A;margin-top: 16px">Submit</Button></center>
<%
								  
String msg="Status";
msg = (String) request.getAttribute("message");
if(msg==null){
    msg="";
}
%>
		<p style="width: 500px;font-size: 16px;color: #fff;"><%=msg%></p>
            </form>
	</div>
</body>
</html>