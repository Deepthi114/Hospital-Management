<%@ page import ="java.sql.*" %>
<%@include file="DBConn.jsp" %>
<%
   int i=0;
   String cname=request.getParameter("id");
   String password=request.getParameter("pwd");
   String mail=request.getParameter("mail");
   String contactno=request.getParameter("num");
  String spe=request.getParameter("cno");
   String add=request.getParameter("spec");
   Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");
PreparedStatement ps2=con.prepareStatement("insert into hospitaldetails values(?,?,?,?,?,?)");
ps2.setString(1,cname);
ps2.setString(2,password);
ps2.setString(3,mail);
ps2.setString(4,contactno);
ps2.setString(5,add);
ps2.setString(6,spe);
int j=ps2.executeUpdate();
response.sendRedirect("process2.jsp");
 %>