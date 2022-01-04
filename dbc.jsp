<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String SQ_NO=request.getParameter("sq_no");
String NAME=request.getParameter("name");
String QTY=request.getParameter("qty");
String PRICE=request.getParameter("price");


try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/grocery", "root", "Divya@582");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into fruits(SQ_NO,NAME, QTY, PRICE) values('"+SQ_NO+"','"+NAME+"','"+QTY+"','"+PRICE+"')");
}



catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>Fruits are Successfully added !!!!</h1>
</body>
</html>