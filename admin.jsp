<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.name.value==""){
alert("Please Enter Name");
document.f.name.setFocus=true;
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
}
</script>
<BODY background="y1.jpg" style=" background-repeat=no-repeat" >

<center>
<BR><BR>
 
 <font size="+2" color="#FF5C0F"><h2><b>ADMIN LOGIN
 </b></h2></font>
<br>
 



<form  method=post action="admincheck.jsp" name="f" onSubmit='return call()'>
 <table>
 <tr>
 <td><b>Name:</b></td><td><input type="text" name="name" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr> 
<td><b> Password:</b></td><td><input type="password" name="pwd"></td>
</tr>
</table>
<br> <BR>
 <input type="submit" value="submit"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home" onClick="window.location='home.jsp'">
 
 </form>
<br>

</center>

</BODY>
</HTML>
