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
<BODY background="pl.jpg" style="background-repeat=no-repeat">

<center>
<BR><BR>
 
 <font size="+2" color="#FF5C0F"><h2><b>PATIENT'S LOGIN</b></h2></font>
<br>
 
<form  method=post action="logincheck.jsp" name="f" onSubmit='return call()'>
 <table>
 <tr>
 <td><b>Patient Name:</b></td><td><input type="text" name="cid" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><b> Password:</b></td><td><input type="password" name="pwd"></td>
</tr>
</table>
<br> 
<tr>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home" onClick="window.location='home.jsp'"></tr>
 <tr><td><a href="newpatient.jsp"><h2><BR><BR>New Patient Registration</a></td></tr><tr></tr>

 </form>
<br>

</center>

</BODY>
</HTML>