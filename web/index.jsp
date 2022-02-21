<%@page import="votingsystem.domain.Vote"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="styles/style.css" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function setURL(url,menu){
                document.getElementById('iframe').src = url;
                documnet.getElementById(menu).style.backgroundColor = "#94618E";
            }
            </script>
    </head>
    <body>
        <div class="header">
            <h1>Rajalakshmi Engineering College</h1>
        </div>
        <div >
            <button class="headerMenu" id="Attendance" onclick="setURL('attendance.jsp','Attendance')" >Attendance</button>
            <button class="headerMenu" id="Vote" onclick="setURL('vote.jsp','Vote')">Vote</button>
            <button class="headerMenu" id="Stat" onclick="setURL('vote-stats.jsp','Stat')">Statistics</button>
            <form action="logoutServlet" method="get">
            <input type="submit" class="headerMenu" id="Logout" value="Logout">
            </form>
        </div>
            <iframe class="frame" src="attendance.jsp" id="iframe" title="Iframe Example"></iframe>
        
        
    </body>
</html>
