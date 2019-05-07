<%@page import="java.sql.*" %>
<%
	//Connection con=null;
	try{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");
	}catch(Exception e)
	{ e.printStackTrace();}
%>