<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/grocery";%>
<%!String user = "root";%>
<%!String psw = "Divya@582";%>
<%
String sq_no = request.getParameter("SQ_NO");
String name = request.getParameter("NAME");
String qty=request.getParameter("QTY");
String price=request.getParameter("PRICE");

if(sq_no != null)
{
Connection con = null;
PreparedStatement ps = null;
int SQ_NO = Integer.parseInt(sq_no);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update fruits set SQ_NO=?,NAME=?,QTY=?,PRICE=? where SQ_NO="+sq_no;
ps = con.prepareStatement(sql);
ps.setString(1,sq_no);
ps.setString(2,name);
ps.setString(3,qty);
ps.setString(4,price);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>