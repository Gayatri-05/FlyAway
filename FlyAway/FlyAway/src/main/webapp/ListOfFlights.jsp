<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Flights</title>
</head>
<body>
<a href=AdminHome.jsp style="color:black;font-size:20px;">Go back</a>
<br>
<br>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<form method="post">

<table border="2">
<tr>
<td>Flight Name </td>
<td>Source </td>
<td>Destination </td>
<td>Date of departure </td>
<td>Timings</td>
<td>Price </td>
</tr>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/FlyAway";
String username="root";
String password="Gayatri@05";
String query="select * from flights";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("fromf") %></td>
<td><%=rs.getString("tof") %></td>
<td><%=rs.getString("datef") %></td>
<td><%=rs.getString("timef") %></td>
<td><%=rs.getString("price") %></td>
</tr>

<%

}
%>
</table>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>
</body>
</html>