
<%@ page import="java.sql.*" %>
<%

String name=request.getParameter("name");
String pwd=(String)request.getParameter("pwd");
 	
    
if((name.equals("admin"))&&(pwd.equals("admin"))){
 response.sendRedirect("adminhome.jsp");
}else{response.sendRedirect("adminfailure.jsp");}


	%>