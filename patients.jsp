 <%@page import="java.sql.*,java.text.*,java.util.*"%>
 <BODY bgcolor="yellow"><BR><BR><BR>
 <center>
 <h2><u><center><font size="+2" color="purple">  Patient's Details </font></u></h2>
  <table width="60%" border="1" align="center">
<tr align="center">

<td><font size="4" color="black">Name</b></td>
<td><font size="4" color="black">Email Id</b></td> 
<td><font size="4" color="black">Contanct Number</b></td> 
<td><font size="4" color="black">address</b></td> 
</tr><%    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");   PreparedStatement st=con.prepareStatement("select * from patientdetails ");
	ResultSet rs=st.executeQuery();
	while(rs.next()){
	String pname=rs.getString(1);
	%>
<tr align="center">

<td><font size="3" color="#DF4800"><%=rs.getString(1)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(3)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(4)%></font></td>
<td><font size="3" color="#DF4800"><%=rs.getString(5)%></font></td>

<BR><BR><%}%>
<center></table><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='hhome.jsp'">
 

