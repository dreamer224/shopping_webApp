package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class stationaryadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>DAAB-shop</title>\n");
      out.write("<link rel=\"icon\" href=\"Picture7.png\" type=\"image/png\">\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<style>\n");
      out.write("* {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("/* Style the body */\n");
      out.write(".tree2 {\n");
      out.write("\tfloat: right;\n");
      out.write("}\n");
      out.write("body {\n");
      out.write("  font-family: Arial;\n");
      out.write("  margin: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Header */\n");
      out.write(".header {\n");
      out.write("  padding: 15px;\n");
      out.write("  text-align: left;\n");
      out.write("  background: #1abc9c;\n");
      out.write("  color: white;\n");
      out.write("  font-size: 10px;\n");
      out.write("}\n");
      out.write("/* navbar */\n");
      out.write("\n");
      out.write("\n");
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
      out.write("/* side bar */\n");
      out.write(".sidenav {\n");
      out.write("  flex:30%;\n");
      out.write("  width: 150px;\n");
      out.write("  position: fixed;\n");
      out.write("  z-index: 1;\n");
      out.write("  top: 190px;\n");
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
      out.write("\n");
      out.write(".sidenav a.active {\n");
      out.write("  background-color: #666;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("/* sidenav2 */\n");
      out.write(".sidenav2 {\n");
      out.write("  flex:30%;\n");
      out.write("  width: 150px;\n");
      out.write("  position: fixed;\n");
      out.write("  z-index: 1;\n");
      out.write("  top: 400px;\n");
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
      out.write("margin-left:15px\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write(" overflow: auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/*DEALS OF THE DAY*/\n");
      out.write("\n");
      out.write("/* Three columns side by side */\n");
      out.write("\n");
      out.write("\n");
      out.write(".column1 {\n");
      out.write("  float: left;\n");
      out.write("  width:100%;\n");
      out.write("  margin-bottom: 20px;\n");
      out.write("  margin-left:70px;\n");
      out.write("  padding: 0px 100px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".column2 {\n");
      out.write("  float: left;\n");
      out.write("  width:20%;\n");
      out.write("  margin-bottom: 14px;\n");
      out.write("  margin-left:150px;\n");
      out.write("  padding: 0px 20px;\n");
      out.write("}\n");
      out.write(".column {\n");
      out.write("  float: left;\n");
      out.write("  width:20%;\n");
      out.write("  margin-bottom: 14px;\n");
      out.write("  margin-left:10px;\n");
      out.write("  padding: 0px 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".centerimage2 {\n");
      out.write(" margin-left:75px\n");
      out.write("}\n");
      out.write(".centerimage3 {\n");
      out.write(" margin-left:39px\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Display the columns below each other instead of side by side on small screens */\n");
      out.write("@media screen and (max-width: 650px) {\n");
      out.write("  .column {\n");
      out.write("    width: 50%;\n");
      out.write("    display: block;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add some shadows to create a card effect */\n");
      out.write(".card {\n");
      out.write("  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.2);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".p5 {\n");
      out.write("   font:30px  Helvetica;\n");
      out.write("  text-align:center;\n");
      out.write("  margin-top:10px;\n");
      out.write("  margin-bottom:10px;\n");
      out.write("background-color:8FBC8F;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/*FOOTER*/\n");
      out.write(".footer {\n");
      out.write("  padding:30px;\n");
      out.write("  margin-left:150px;\n");
      out.write("  background:#ddd;\n");
      out.write("margin-top:700px;\n");
      out.write("}\n");
      out.write(".dropbtn {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("  padding: 16px;\n");
      out.write("  font-size: 16px;\n");
      out.write("  border: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown {\n");
      out.write("  position: relative;\n");
      out.write("  display: inline-block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content {\n");
      out.write("  display: none;\n");
      out.write("  position: absolute;\n");
      out.write("  background-color: #f1f1f1;\n");
      out.write("  min-width: 160px;\n");
      out.write("  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("  z-index: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a {\n");
      out.write("  color: black;\n");
      out.write("  padding: 12px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a:hover {background-color: #1abc9c ;}\n");
      out.write("\n");
      out.write(".dropdown:hover .dropdown-content {display: block;}\n");
      out.write("\n");
      out.write(".dropdown:hover .dropbtn {background-color: #3e8e41;}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"header\">\n");
      out.write("  <img src=\"Picture5.png\" height=\"100\" width=\"250\">\n");
      out.write("   <div class=\"tree2 dropdown\">\n");
      out.write("                     <button class=\"dropbtn\"><img src=\"login.jpeg\" width=\"70\" height=\"70\"></button>\n");
      out.write("                  <div class=\"dropdown-content\"> \n");
      out.write("                 \n");
      out.write("                      <a href=\"loginPage.jsp\"><h3>Logout</h3></a>\n");
      out.write("                  </div>\n");
      out.write("                 </div>\n");
      out.write("   <p style=\"text-align:right\">Welcome ");
      out.print(session.getAttribute("user"));
      out.write(" !!</p>\n");
      out.write("</div>\n");
      out.write("<!-- navbar -->\n");
      out.write("<div class=\"topnav\">\n");
      out.write("  <a href=\"admin.jsp\">HOME</a>\n");
      out.write("  <a href=\"registerationPage.jsp\">SIGNUP</a>\n");
      out.write("  <a href=\"loginPage.jsp\">LOGIN</a>\n");
      out.write(" \n");
      out.write("</div>\n");
      out.write("<!-- sidebar -->\n");
      out.write("  <div class=\"sidenav\">\n");
      out.write("    <a href=\"stationaryadmin.jsp\" class=\"active\">Stationary</a>\n");
      out.write("    <a href=\"bagsadmin.jsp\">Bags</a>\n");
      out.write("    <a href=\"art_and_craftadmin.jsp\">Art & Craft</a>\n");
      out.write("    <a href=\"giftsadmin.jsp\">Gifts</a>\n");
      out.write("    <a href=\"booksadmin.jsp\">Books</a>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("  ");

  try{      
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
    PreparedStatement pst = con.prepareStatement("select * from ITEMS where time = (select max(time) from items)");
    ResultSet rst = pst.executeQuery();
    
    while(rst.next()){
       
      out.write("\n");
      out.write("        \n");
      out.write("         <div class=\"sidenav2\">\n");
      out.write("    <p class=\"p1\">NEW ARRIVAL</p>\n");
      out.write("    <a href=\"productsadmin.jsp?id=");
      out.print(rst.getString(1));
      out.write("\"><img src=\"retrieve.jsp?id=");
      out.print(rst.getString(1));
      out.write("\" class=\"centerimage\" width=\"95\" height=\"145\" align=\"center\"></a>\n");
      out.write("    <a href=\"productsadmin.jsp?id=");
      out.print(rst.getString(1));
      out.write("\"></a>\n");
      out.write("</div>\n");
      out.write("<!-- DEALS OF THE DAY -->\n");
      out.write("   \n");
      out.write("           ");

    }
    rst.close();
    pst.close();
    con.close();
    
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  
      out.write("\n");
      out.write("<!-- DEALS OF THE DAY -->\n");
      out.write("\n");
      out.write("  \n");
      out.write("<div class=\"column1\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("   <p class=\"p5\">STATIONARY</p>\n");
      out.write("</div>\n");
      out.write("     ");

  try{      
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
    Statement stmt=con.createStatement();
   // String strQuery = "select * from items where type= stationary'";
    String e= "Stationary";
    ResultSet rs = stmt.executeQuery("select * from items where TYPE='"+e+"'");
    while(rs.next()){
       
      out.write("\n");
      out.write("</div>\n");
      out.write("  <div class=\"column2\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("      <img src=\"retrieve.jsp?id=");
      out.print(rs.getString(1));
      out.write("\" width=\"100\" height=\"145\"  class=\"centerimage2\" align=\"center\" >\n");
      out.write("      <br>\n");
      out.write("        <a href=\"productsadmin.jsp?id=");
      out.print(rs.getString(1));
      out.write("\"><p align=\"center\">");
      out.print(rs.getString("name"));
      out.write("</p></a>\n");
      out.write("        <p align=\"center\">Rs.");
      out.print(rs.getString("price"));
      out.write(" </p>\n");
      out.write(" \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("           ");

    }
    rs.close();
    con.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  
      out.write("\n");
      out.write("<br><br>\n");
      out.write("</body></html>\n");
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
