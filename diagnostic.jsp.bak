 <%@page import="java.sql.*,java.text.*,java.util.*"%>
 <BODy bgcolor="orange"><BR><BR><BR>
 <center>
 <h2><u><center><font size="+2" color="purple">  Diagnostic Details </font></u></h2>
  <table width="60%" border="1" align="center">
<tr align="center">

<td><b><font size="4" color="">Name</font></b></td>
<td><b><font size="4" color="">Date</b></td>
<td><b><font size="4" color="">time</b></td> 
 <td><b><font size="4" color="">Reason</b></td> 
 <td><b><font size="4" color="">Report</b></td> 

</tr><%    
String PatientName=(String)session.getAttribute("PatientName");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");	   PreparedStatement st=con.prepareStatement("select * from consultationdetails where patientname=?");
	st.setString(1,PatientName);
	ResultSet rs=st.executeQuery();
	while(rs.next()){
java.sql.Date sd=rs.getDate(3);
java.util.Date ud=(java.util.Date)sd;
SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yy");
String ddate=sdf.format(ud);
%>
<tr align="center">

<td><font size="3" color="black"><%=rs.getString(2)%></font></td>
<td><font size="3" color="black"><%= ddate %></font></td>
<td><font size="3" color="black"><%=rs.getString(4)%></font></td>
<td><font size="3" color="black"><%=rs.getString(5)%></font></td>
<td><a href="download.jsp?id=<%=rs.getString(2) %>"><font size="3" color="purple">Download</font></a></td>
</tr> 
<BR><BR><%}%>
<center></table><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='phome.jsp'">
 

