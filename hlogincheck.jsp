
<%@ page import="java.sql.*" %>

<%
    int ind=0;
    String cname=request.getParameter("bid");
    String password=request.getParameter("pwd");
//session.setAttribute("agencyid",cid);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/frs","root","MANISHA");

   PreparedStatement st=con.prepareStatement("select * from hospitaldetails where patientname=? and password=?");
	st.setString(1,cname);
	st.setString(2,password);
	ResultSet rs=st.executeQuery(); 
	if(rs.next()){
 		response.sendRedirect("hhome.jsp");
		session.setAttribute("HospitalName",cname);
}else{ response.sendRedirect("loginfailure1.jsp");}
	%>