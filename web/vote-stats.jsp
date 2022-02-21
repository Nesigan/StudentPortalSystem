<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="votingsystem.database.VotingBin" %>
<%@page import="java.util.List" %>
<%@page import="votingsystem.domain.Vote" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/table1.css" />
<title>Voting System</title>
<%
		String userName = null;
		Cookie[] cookies = request.getCookies();
		if(cookies !=null){
			for(Cookie cookie : cookies){
			    if(cookie.getName().equals("username"))
			    	userName = cookie.getValue();
			}
		}
		if(userName == null)
			response.sendRedirect("login.jsp");
	%>
</head>
<body>
			<%
				VotingBin vb = new VotingBin();
				int scmCount=0, b3dCount=0, biCount=0;
				List<Vote> list = vb.displayVotingStatistics();
				for(Vote v:list) {
					scmCount = v.getSCMCount();
					b3dCount = v.getB3DCount();
					biCount = v.getBICount();
				}
			%>
        <h2 style="text-align: left; color: #fff;">Total number of Votes Registered :</h2>
        <table>
            <tr>
                <th> Subject Name</th>
                <th> Subject Code</th>
                <th> Total Count</th>
            </tr>
            <tr>
                <td>Supply Chain Management</td>
                <td>OME1901</td>
                <td><%=scmCount%></td>
            </tr>
            <tr>
                <td>Basics of 3D Printing</td>
                <td>OME1902</td>
                <td><%=b3dCount%></td>
            </tr>
            <tr>
                <td>Basic Bioinformatics</td>
                <td>OBT1903</td>
                <td><%=biCount%></td>
            </tr>
        </table>
				
</body>
</html>