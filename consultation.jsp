<%@page import="java.sql.*" %>
<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.cid.value==""){
alert("Please Enter Customer Id");
document.f.cid.setFocus=true;
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
}
</script>
<BODY background="op.jpg" style="background-repeat=no-repeat">

<center>
<BR><BR>
 
 <font size="+2" color="#FF5C0F"><h2><b>Welcome To First-Rate Sanatorium</b></h2></font>
<br>
 <form  method=post action="consultaion1.jsp" name="f" onSubmit='return call()'>

 <table>
 <tr>
 <td><b>Doctor:</b></td><td><select name="dname">
<%
String PName=(String)session.getAttribute("PatientName");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");

PreparedStatement st=con.prepareStatement("select patientname from hospitaldetails");
ResultSet rs=st.executeQuery();
while(rs.next())
{
%>


 <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %>
<%
}
%>
</select>
 </td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><b> Date:</b></td><td><input type="text" name="date">(dd-mm-yy)</td>
</tr>
<tr> 
<td><b> Time:</b></td><td>
<select name="hours">
  <option value="1">1
  <option value="2">2
  <option value="3">3
  <option value="4">4
  <option value="5">5
  <option value="6">6
  <option value="7">7
  <option value="8">8
  <option value="9">9
  <option value="10">10
  <option value="11">11
  <option value="12">12
  </select>: 
  <select name="minutes">
<option value="10">10
<option value="20">20
<option value="30">30
<option value="40">40
<option value="50">50
</select>
<select name="a">
  <option value="am">AM
  <option value="pm">PM
</select>
</td>
</tr>
<tr> 
<td><b> Reason:</b></td><td><input type="text" name="reason"></td></tr>
</table>
<br> <BR>

 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home" onClick="window.location='phome.jsp'">
 
 </form>
<br>

</center>

</BODY>
</HTML>