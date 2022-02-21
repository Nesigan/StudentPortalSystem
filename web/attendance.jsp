<%@page import="java.util.List"%>
<%@page import="votingsystem.domain.Vote"%>
<%@page import="votingsystem.database.attendance"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://fonts.googleapis.com/css?family=Rock+Salt' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="styles/table.css" />
    </head>
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
		response.sendRedirect("login.jsp");

    attendance a = new attendance();
    int[] presentCount = new int[5];
    int[] absentCount = new int[5];
    double[] percentage = new double[5];
    presentCount[0] = a.checkPresentTOC(userName);
    absentCount[0] = a.checkAbsentTOC(userName);
    presentCount[1] = a.checkPresentCN(userName);
    absentCount[1] = a.checkAbsentCN(userName);
    presentCount[2] = a.checkPresentPOAI(userName);
    absentCount[2] = a.checkAbsentPOAI(userName);
    presentCount[3] = a.checkPresentIP(userName);
    absentCount[3] = a.checkAbsentIP(userName);
    presentCount[4] = a.checkPresentDM(userName);
    absentCount[4] = a.checkAbsentDM(userName);
    for(int i=0;i<5;i++)
        percentage[i] = ((presentCount[i])*100)/(presentCount[i]+absentCount[i]);

%>
    <body>
        <h2 style="text-align: left; color: #fff;">Subject wise Attendance</h2>
        <table style="width:100%">
            <tr>
                <th>Subject Code</th>
                <th>Subject Name</th>
                <th>Present Count</th>
                <th>Absent Count</th>
                <th>Percentage</th>
            </tr>
             <tr>
                <td>CS19501</td>
                <td>Theory of Computations</td>
                <td><%=presentCount[0]%></td>
                <td><%=absentCount[0]%></td>
                <td><%=percentage[0]%>%</td>
            </tr>
            <tr>
                <td>CS19541</td>
                <td>Computer Networks</td>
                <td><%=presentCount[1]%></td>
                <td><%=absentCount[1]%></td>
                <td><%=percentage[1]%>%</td>
            </tr>
             <tr>
                <td>AI19341</td>
                <td>Principle of Artificial Intelligence</td>
                <td><%=presentCount[2]%></td>
                <td><%=absentCount[2]%></td>
                <td><%=percentage[2]%>%</td>
            </tr>
             <tr>
                <td>CS19542</td>
                <td>Internet Programming</td>
                <td><%=presentCount[3]%></td>
                <td><%=absentCount[3]%></td>
                <td><%=percentage[3]%>%</td>
             </tr>
             <tr>
                <td>CS19P15</td>
                <td>Data Mining</td>
                <td><%=presentCount[4]%></td>
                <td><%=absentCount[4]%></td>
                <td><%=percentage[4]%>%</td>
            </tr>
</table>
    </body>
</html>
