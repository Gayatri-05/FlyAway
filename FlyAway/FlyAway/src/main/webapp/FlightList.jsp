<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
</head>
<body >
<br>
<a href=HomePage.jsp style="color:black;font-size:20px;">Main menu</a>
<br><br>
<%
	@SuppressWarnings("unchecked")
	List<String[]> flight=(List<String[]>)session.getAttribute("flights");
	if(flight!=null){
%>

<h1>Available Flights</h1>

<center>
<table border="1">
<tr>
	<th>Flight Name</th>
	<th>Timing</th>
	<th>Price</th>
</tr>



<%
	for(String[] flights:flight){
%>

<tr>
<td><%=flights[0]%></td>
<td><%=flights[1]%></td>
<td><%=flights[2]%></td>
</tr>
</table>
</center>
<center><a href=RegisterPage.jsp>Book Now</a> </center>
<%
 }
%>


<%
	}
	else{
%>
<h1>There are no available flights</h1>
<%
	}
%>
</body>
</html>