 <%@page import="java.sql.*,java.text.*,java.util.*"%>
 <BODY><BR><BR><BR>
 <center><%    
 String dname=request.getParameter("did");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");   
PreparedStatement pst=con.prepareStatement("delete from hospitaldetails where patientname=?");
pst.setString(1,dname);
pst.executeUpdate();
out.println("<h1><center>Doctor details deleted,<a href='adminhome.jsp'>back</a>");
%>