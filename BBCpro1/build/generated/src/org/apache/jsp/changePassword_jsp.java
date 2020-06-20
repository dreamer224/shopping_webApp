package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class changePassword_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>DAAB-shop</title>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<style>\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  font-family: Arial;\n");
      out.write("  margin: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".header {\n");
      out.write("  padding: 15px;\n");
      out.write("  text-align: left;\n");
      out.write("  background: #1abc9c;\n");
      out.write("  color: white;\n");
      out.write("  font-size: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".tree1 {\n");
      out.write("    padding: 15px;\n");
      out.write("\tfloat: left;\n");
      out.write("\twidth: 100px;\n");
      out.write("\theight: 100px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".tree2 {\n");
      out.write("    padding: 10px;\n");
      out.write("\tfloat: right;\n");
      out.write("\twidth: 100px;\n");
      out.write("\theight: 100px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".main {\n");
      out.write("\tpadding: 16px; \n");
      out.write("  flex: 70%; \n");
      out.write("  background-color: white; \n");
      out.write("  padding: 20px;\n");
      out.write("  font-family: Arial;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("/* navbar */\n");
      out.write(".topnav {\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: #333;\n");
      out.write("  position: sticky;\n");
      out.write("  position: -webkit-sticky;\n");
      out.write("  top: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a {\n");
      out.write("  float: left;\n");
      out.write("  display: block;\n");
      out.write("  color: white;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 20px 20px;\n");
      out.write("  text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a:hover {\n");
      out.write("  background-color: #ddd;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a.active {\n");
      out.write("  background-color: #666;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a.right {\n");
      out.write("  float:right\n");
      out.write("}\n");
      out.write(".topnav .search-container {\n");
      out.write("  float: right;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav input[type=text] {\n");
      out.write("  padding: 6px;\n");
      out.write("  margin-top: 10px;\n");
      out.write("  font-size: 17px;\n");
      out.write("  border: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav .search-container button {\n");
      out.write("    float: right;\n");
      out.write("  padding: 8.5px 10px;\n");
      out.write("  margin-top: 10px;\n");
      out.write("  margin-right: 16px;\n");
      out.write("  background: #ddd;\n");
      out.write("  font-size: 15px;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav .search-container button:hover {\n");
      out.write("  background: #ccc;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".column {\n");
      out.write("  width:60%;\n");
      out.write("  margin-bottom: 100px;\n");
      out.write("  margin-left:150px;\n");
      out.write("  padding: 20px 100px ;\n");
      out.write("}\n");
      out.write(".card {\n");
      out.write("  box-shadow: 10px 10px 10px 10px rgba(0, 0, 0, 0.2);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button1{\n");
      out.write("background-color: #1abc9c;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 30%;\n");
      out.write("  opacity: 0.9;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (max-width: 850px) {\n");
      out.write("  .column {\n");
      out.write("    width: 70%;\n");
      out.write("    display: block;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* side bar */\n");
      out.write(".sidenav {\n");
      out.write("  flex:30%;\n");
      out.write("  width: 150px;\n");
      out.write("  position: fixed;\n");
      out.write("  z-index: 1;\n");
      out.write("  top: 200px;\n");
      out.write("  background: #333;\n");
      out.write("  overflow-x: hidden;\n");
      out.write("  padding: 8px 0;\n");
      out.write("}\n");
      out.write(".sidenav a {\n");
      out.write("  padding: 10px 50px 10px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  color: white;\n");
      out.write("  display: block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav a:hover {\n");
      out.write("  background-color: #ddd;\n");
      out.write("  color:black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* sidenav2 */\n");
      out.write(".sidenav2 {\n");
      out.write("  flex:30%;\n");
      out.write("  width: 150px;\n");
      out.write("  position: fixed;\n");
      out.write("  z-index: 1;\n");
      out.write("  top: 410px;\n");
      out.write("  background: #333;\n");
      out.write("  overflow-x: hidden;\n");
      out.write("  padding: 8px 0;\n");
      out.write("}\n");
      out.write(".sidenav2 a {\n");
      out.write("  padding: 10px 10px 4px 1px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 15px;\n");
      out.write("  color: white;\n");
      out.write("  display: block;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".sidenav2 a:hover {\n");
      out.write("  background-color: #ddd;\n");
      out.write("  color:black;\n");
      out.write("}\n");
      out.write(".p1 {\n");
      out.write(" color: white;\n");
      out.write("text-align: centre;\n");
      out.write("padding: 5px 18px 10px 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".centerimage {\n");
      out.write("margin-left: 15px\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write(" overflow: auto;\n");
      out.write(" background-image: url(\"back1.jpg\");\n");
      out.write(" background-repeat: no-repeat,repeat;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".p5 {\n");
      out.write("  font:30px  Helvetica;\n");
      out.write("  text-align:center;\n");
      out.write("  margin-top:10px;\n");
      out.write("  margin-bottom:10px;\n");
      out.write("  background-color: #1abc9c;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".tclass\n");
      out.write("{\n");
      out.write("    width: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Next & previous buttons */\n");
      out.write(".prev, .next {\n");
      out.write("  cursor: pointer;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  width: auto;\n");
      out.write("  padding: 16px;\n");
      out.write("  margin-top: -22px;\n");
      out.write("  color: white;\n");
      out.write("  font-weight: bold;\n");
      out.write("  font-size: 18px;\n");
      out.write("  transition: 0.6s ease;\n");
      out.write("  border-radius: 0 3px 3px 0;\n");
      out.write("  user-select: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Position the \"next button\" to the right */\n");
      out.write(".next {\n");
      out.write("  right: -108.5px;\n");
      out.write("  border-radius: 3px 0 0 3px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* On hover, add a black background color with a little bit see-through */\n");
      out.write(".prev:hover, .next:hover {\n");
      out.write("  background-color: rgba(0,0,0,0.8);\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("/* Fading animation */\n");
      out.write(".fade {\n");
      out.write("  -webkit-animation-name: fade;\n");
      out.write("  -webkit-animation-duration: 1.5s;\n");
      out.write("  animation-name: fade;\n");
      out.write("  animation-duration: 1.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@-webkit-keyframes fade {\n");
      out.write("  from {opacity: .4} \n");
      out.write("  to {opacity: 1}\n");
      out.write("}\n");
      out.write("\n");
      out.write("@keyframes fade {\n");
      out.write("  from {opacity: .4} \n");
      out.write("  to {opacity: 1}\n");
      out.write("}\n");
      out.write("\n");
      out.write("/*button over image */\n");
      out.write(".container {\n");
      out.write("  position: relative;\n");
      out.write("  width: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the button and place it in the middle of the container/image */\n");
      out.write(".container .btn {\n");
      out.write("  position: absolute;\n");
      out.write("  top: 65%;\n");
      out.write("  left: 25%;\n");
      out.write("  transform: translate(-50%, -50%);\n");
      out.write("  -ms-transform: translate(-50%, -50%);\n");
      out.write("  background-color: #ddd;\n");
      out.write("  color: black;\n");
      out.write("  font-size: 16px;\n");
      out.write("  padding: 15px 24px;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("  border-radius: 5px;\n");
      out.write("  font-family: Geneva;\n");
      out.write("  font-weight: bolder;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container .btn:hover {\n");
      out.write("  background-color: white;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <form name=\"f\">\n");
      out.write("<div class=\"header\">\n");
      out.write("  <img src=\"Picture5.png\" height=\"100\" width=\"250\">\n");
      out.write("</div>\n");
      out.write("<!-- navbar -->\n");
      out.write("<div class=\"topnav\">\n");
      out.write("   <a href=\"home.jsp\">HOME</a>\n");
      out.write("  <a href=\"registrationPage.jsp\">SIGNUP</a>\n");
      out.write("  <a href=\"loginPage.jsp\">LOGIN</a>\n");
      out.write("  <a href=\"aboutus.jsp\">ABOUT US</a>\n");
      out.write("</div>\n");
      out.write("<!-- sidebar -->\n");
      out.write(" <div class=\"sidenav\">\n");
      out.write("    <a href=\"stationary.jsp\">Stationary</a>\n");
      out.write("    <a href=\"bags.jsp\">Bags</a>\n");
      out.write("    <a href=\"art_and_craft.jsp\" >Art & Craft</a>\n");
      out.write("    <a href=\"gifts.jsp\">Gifts</a>\n");
      out.write("    <a href=\"books.jsp\">Books</a>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write(" <div class=\"sidenav2\">\n");
      out.write("    <p class=\"p1\">NEW ARRIVAL</p>\n");
      out.write("    <img src=\"novel.jpeg\" class=\"centerimage\" width=\"95\" height=\"145\" align=\"center\">\n");
      out.write("\t<a href=\"#\">A Girl That Had<br> to be Strong</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"main\">\n");
      out.write("\t<div class=\"column\">\n");
      out.write("            <center> <h2><p class=\"p5\">CHANGE PASSWORD</p></h2></center>\n");
      out.write("\t<div class=\"card\">\n");
      out.write("            <center>\n");
      out.write("                <br>\n");
      out.write("                <table>\n");
      out.write("                     <tr>\n");
      out.write("                        <td><b>Username:</b></td> \n");
      out.write("                        <td><input type=\"text\" name=\"un\" required> </td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td><b>Old Password:</b></td> \n");
      out.write("                        <td><input type=\"text\" name=\"opw\" required> </td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td><b>New Password:</b></td> \n");
      out.write("                        <td><input type=\"text\" name=\"pw1\" required> </td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td><b>Confirm Password:</b></td> \n");
      out.write("                        <td><input type=\"text\" name=\"pw2\" required> </td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </table>\n");
      out.write("                <br>\n");
      out.write("               <button class=\"button1\" name=\"set\" type=\"submit\">Set</button>\n");
      out.write("            </center>\n");
      out.write("\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");

    try
    {
        if(request.getParameter("set")!=null)
        {
            String u=request.getParameter("un");
            String p0=request.getParameter("opw");
            String p1=request.getParameter("pw1");
            String p2=request.getParameter("pw2");
            String p00=null;
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from CUST where cid='"+u+"' ");
            while(rs.next())
            {
                p00=rs.getString(2);
            }
            
            if(p1.equals(p2) && p00.equals(p0))
            {
                int x=st.executeUpdate("update cust set cpass='"+p1+"' where cid='"+u+"'  ");
                if(x>0)
                { 
      out.write(" \n");
      out.write("                <center> <p>UPDATED...</p></center>\n");
      out.write("                    ");
 }
            }
            else
            {
                
      out.write(" \n");
      out.write("            <center> <p>NOT UPDATED...</p></center>\n");
      out.write("                ");

            }
        }
        
    }
    catch(Exception ex)
    {
        
    }
    
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
