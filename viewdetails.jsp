 <%@page import="java.sql.*"%>
 <BODY bgcolor="orange"><BR><BR><BR>
 <center>
 <h2><u><center><font size="+2" color="purple">  Patient Details </font></u></h2>
  <table width="60%" border="1" align="center">
<tr align="center">

<td><font size="4" color="black">Name</font></b></td>
<td><font size="4" color="black">EmailID</b></td>
<td><font size="4" color="black">Contact No</b></td> 
 <td><font size="4" color="black">Address</b></td> 


</tr><%    
String PatientName=(String)session.getAttribute("PatientName");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");	   PreparedStatement st=con.prepareStatement("select * from patientdetails where patientname=?");
	st.setString(1,PatientName);
	ResultSet rs=st.executeQuery();
	while(rs.next()){

%>
<tr align="center">

<td><font size="3" color="black"><%=rs.getString(1)%></font></td>
<td><font size="3" color="black"><%=rs.getString(3)%></font></td>
<td><font size="3" color="black"><%=rs.getString(4)%></font></td>
<td><font size="3" color="black"><%=rs.getString(5)%></font></td>
</tr> 
<BR><BR><%}%>
<center></table><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='phome.jsp'">
 

