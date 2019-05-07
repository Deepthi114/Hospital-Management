 <%@page import="java.sql.*,java.text.*,java.util.*"%>
 <BODY bgcolor="yellow" style="background-repeat=no-repeat"><BR><BR><BR>
 <center>
 <h1><u><center><font size=="+2" color="purple">  Doctors's Details </font></u></h1>
  <table width="60%" border="1" align="center">
<tr align="center">

<td><b><font size="4" color="black">DoctorName</b></td>
<td><b><font size="4" color="black">Email Id</b></td> 
<td><b><font size="4" color="black">Contanct Number</b></td> 
<td><b><font size="4" color="black">Specialization</b></td> 
<td><b><font size="4" color="black">Operation</b></td> 


</tr><%    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");   PreparedStatement st=con.prepareStatement("select * from hospitaldetails ");
	ResultSet rs=st.executeQuery();
	while(rs.next()){
%>
<tr align="center">

<td><font size="4" color="black"><%=rs.getString(1)%></font></td>
<td><font size="4" color="black"><%=rs.getString(3)%></font></td>
<td><font size="4" color="black"><%=rs.getString(4)%></font></td>
<td><font size="4" color="black"><%=rs.getString(5)%></font></td>
<td><font size="4" color="purple"><a href="deletedoctors.jsp?did=<%=rs.getString(1)%> ">delete</a></font></td>
</tr> 
<BR><BR><%}%>
<center></table><BR><BR><BR>
<input type="button" name=back  value="   BACK   " onClick="window.location='adminhome.jsp'">
 

