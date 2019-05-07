
<%@ page import="java.sql.*" %>
<%@include file="DBConn.jsp" %>
<%
    int ind=0;
    String cname=request.getParameter("cid");
    String password=request.getParameter("pwd");
//session.setAttribute("agencyid",cid);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");
   PreparedStatement st=con.prepareStatement("select * from patientdetails where patientname=? and password=?");
	st.setString(1,cname);
	st.setString(2,password);
	ResultSet rs=st.executeQuery(); 
	if(rs.next()){
		session.setAttribute("PatientName",cname);
 		response.sendRedirect("phome.jsp");
}else{ response.sendRedirect("loginfailure.jsp");}
	%>