<%@ page import ="java.sql.*,java.text.*,java.util.*" %>
<%@include file="DBConn.jsp" %>
<%
   int i=0;
   String dname=request.getParameter("dname");
   String d=request.getParameter("date");
   SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yy");
   java.util.Date ud1=sdf.parse(d);
   long ms=ud1.getTime();
   java.sql.Date sd1=new java.sql.Date(ms);

   String hours=request.getParameter("hours");
   String minutes=request.getParameter("minutes");
   String a=request.getParameter("a");
   String reason=request.getParameter("reason");
  String time=hours+"."+minutes+" "+a;
   String PName=(String)session.getAttribute("PatientName");
   Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");
PreparedStatement ps2=con.prepareStatement("insert into consultationdetails values(?,?,?,?,?)");
ps2.setString(1,PName);
ps2.setString(2,dname);
ps2.setDate(3,sd1);
ps2.setString(4,time);
ps2.setString(5,reason);
int j=ps2.executeUpdate();
response.sendRedirect("process11.jsp");
 %>