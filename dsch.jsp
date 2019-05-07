 <%@page import="java.sql.*,java.text.*,java.util.*"%>
 <BODY bgcolor="yellow"><BR><BR><BR>
 <center>
 <h2><u><center><font size="+2" color="purple">  Doctors's Schedule </font></u></h2>
  <table width="60%" border="1" align="center">
<tr align="center">
<td><font size="4" color="black">Name</font></b></td>
<td><font size="4" color="black">DoctorName</b></td>
<td><font size="4" color="black">Date</b></td> 
<td><font size="4" color="black">Time</b></td> 
<td><font size="4" color="black">Reason</b></td> 
</tr><%    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");   PreparedStatement st=con.prepareStatement("select * from consultationdetails ");

	ResultSet rs=st.executeQuery();
	while(rs.next()){
java.sql.Date sd=rs.getDate(3);
java.util.Date ud=(java.util.Date)sd;
SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yy");
String ddate=sdf.format(ud);
%>
<tr align="center">

<td><font size="3" color="purple"><%=rs.getString(1)%></font></td>
<td><font size="3" color="purple"><%=rs.getString(2)%></font></td>
<td><font size="3" color="purple"><%= ddate %></font></td>
<td><font size="3" color="purple"><%=rs.getString(4)%></font></td>
<td><font size="3" color="purple"><%=rs.getString(5)%></font></td>
</tr> 
<BR><BR><%}%>
<center></table><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='hhome.jsp'">
 

