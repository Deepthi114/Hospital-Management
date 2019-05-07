<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
 <%@ page import="java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
               	<table border="0" width="100%" id="table1">
			<tr>
				<td><b><font face="Tahoma" color="#E4DB6B">Reports</font></b></td>
				<td><b><font face="Tahoma" color="#E4DB6B">Download</font></b></td>
			</tr>
<%
File f1=new File("C:\\Files");
File []fn=f1.listFiles();
for(int i=0;i<fn.length;i++)
    {
    %>    		<tr>
				<td><%=fn[i].getName()%></td>
                                <td><a href="download1.jsp?fn=<%=fn[i].getName()%>">Download</a></td>
			</tr>
    <%
    }
%>    
	
		</table>
	</div>
        
    </body>
</html>
