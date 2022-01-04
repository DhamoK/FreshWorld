<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String sq_no = request.getParameter("SQ_NO");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "grocery";
String userid = "root";
String password = "Divya@582";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from fruits where sq_no="+sq_no;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update-process.jsp">
<input type="hidden" name="SQ_NO" value="<%=resultSet.getString("SQ_NO") %>">
<br>
sq_no:<br>
<input type="number" name="SQ_NO" value="<%=resultSet.getString("SQ_NO") %>">
<br>
name:<br>
<input type="text" name="NAME" value="<%=resultSet.getString("NAME") %>">
<br>
qty:<br>
<input type="number" name="QTY" value="<%=resultSet.getString("QTY") %>">
<br>
price:<br>
<input type="number" name="PRICE" value="<%=resultSet.getString("PRICE") %>">
<br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>