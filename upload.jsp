<%
   String pname=request.getParameter("id");
   session.setAttribute("PID",pname);
%>
            <form action="uploadFile1.jsp" method="post" name="upform"  enctype="multipart/form-data">
                         
							<input type="file" name="uploadfile" size="50">  
                            </td>  
                        </tr>  
                        <tr>  
                            <td align="left">  
                                <input type="submit" name="Submit" value="Upload">  
                                <input type="reset" name="Reset" value="Cancel">  
                            </td>  
                        </tr>  
                    </table>  
                