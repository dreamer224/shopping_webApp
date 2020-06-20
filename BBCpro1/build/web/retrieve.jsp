<%-- 
    Document   : retrieve_image
    Created on : 11 May, 2020, 8:49:50 AM
    Author     : AMISHA GUPTA
--%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
     String id=request.getParameter("id");
 // if(request.getParameter("Submit")!=null)
    {
    
    try{
        
                       
                      //  id="S1";
                      //  String query="select photo from items where id='"+id+"'";
                        
			Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
			PreparedStatement ps = con.prepareStatement("select photo from items where id=?");
                        ps.setString(1, id);
                        ResultSet rs = ps.executeQuery();
                        out.println(id);
                        if(rs.next()){
                        Blob blob = rs.getBlob("photo");
                        byte byteArray[] = blob.getBytes(1, (int)blob.length());
                        response.setContentType("image/gif");
                        OutputStream os = response.getOutputStream();
                        os.write(byteArray);
                        os.flush();
                        os.close();
                        }
    }catch(Exception e){
			e.printStackTrace();
		}
    }
%>

 

