<%@ page import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE> </TITLE>
</HEAD>
<script >
function call()
{
if(document.f.bid.value==""){
alert("Please Enter Ur Name");
return false;
}
if(document.f.pwd.value==""){
alert("Please Enter Ur Password");
return false;
}
if((document.f.bid.value=="")||(document.f.pwd.value==""))
	{
alert("Please Enter Username& password");
return false;
}
}
</script>
<BODY background="z3.jpg"  style="background-repeat=no-repeat">
<br> 
<center>
<BR>
 
 <b><h2><u>DOCTOR'S LOGIN</u></h2></b></font>
<br>
 
 

<br>
<form  method=post action="hlogincheck.jsp" name="f" onSubmit='return call()'>
 <table width="40%" cellpadding="5" cellspacing="5">
 <colgroup span=2 >
 <tr>
 <td><b>Username:</b></td><td><input type="text" name="bid" ></td>
</tr>
 
<tr> 
<td><b> Password:</b></td><td><input type="password" name="pwd"></td>
</tr><tr> 

 </SELECT></td>
</tr>
</table>
<br> <BR><BR>
 <input type="submit" value="   Login   "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input type="reset" value="   reset   ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name=back  value="Home" onClick="window.location='home.jsp'"><BR><BR>
   
 </form>

 

</center>

</BODY>
</HTML>
