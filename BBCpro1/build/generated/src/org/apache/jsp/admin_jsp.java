package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
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
      out.write(".main {\n");
      out.write("    padding: 16px;\n");
      out.write("    flex:70%;\n");
      out.write("    background-color:white;\n");
      out.write("    padding:20px;\n");
      out.write("    font-family:Arial;\n");
      out.write("}\n");
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
      out.write("  top: 230px;\n");
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
      out.write("  top: 440px;\n");
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
      out.write("text-align: center;\n");
      out.write("padding: 5px 18px 10px 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".h5 {\n");
      out.write("    text-align: center;\n");
      out.write("    font-size: 20px;\n");
      out.write("}\n");
      out.write(".centerimage {\n");
      out.write("margin-left:15px\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write(" overflow: auto;\n");
      out.write("}\n");
      out.write("/*FOOTER*/\n");
      out.write(".footer {\n");
      out.write("  padding:30px;\n");
      out.write("  margin-left:150px;\n");
      out.write("  background:#ddd;\n");
      out.write("margin-top:700px;\n");
      out.write("}\n");
      out.write(".column3 {\n");
      out.write("\tmargin-top:-30px;\n");
      out.write("\tmargin-left:250px;\n");
      out.write("\t float:left;\n");
      out.write("\tpadding:100px;\n");
      out.write("\theight:700px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* COLUMN OF IMAGE */\n");
      out.write("\n");
      out.write(".column {\n");
      out.write("\tmargin-top:-30px;\n");
      out.write("\tmargin-left:150px;\n");
      out.write("\t float:left;\n");
      out.write("\tpadding:100px;\n");
      out.write("\theight:700px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".column1 {\n");
      out.write("\tmargin-top:5px;\n");
      out.write("\tmargin-left:200px;\n");
      out.write("\t float:left;\n");
      out.write("\tpadding:10px;\n");
      out.write("\theight:300px;\n");
      out.write("}\n");
      out.write(".left {\n");
      out.write("\twidth:25%;\n");
      out.write("}\n");
      out.write(".image1 {\n");
      out.write("   margin-top:45px;\n");
      out.write("   margin-left:45px;\n");
      out.write("}\n");
      out.write(".right {\n");
      out.write("   \twidth:350px;\n");
      out.write("}\n");
      out.write(".row:after {\n");
      out.write(" \tcontent: \" \";\n");
      out.write("\tdisplay: table;\n");
      out.write("\tclear:both;\n");
      out.write("}\n");
      out.write(".columnh {\n");
      out.write("  float: left;\n");
      out.write("  width:100%;\n");
      out.write("  margin-bottom: 20px;\n");
      out.write("  margin-left:70px;\n");
      out.write("  padding: 0px 100px;\n");
      out.write("}\n");
      out.write(".card {\n");
      out.write("  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.2);\n");
      out.write("}\n");
      out.write(".columns {\n");
      out.write("  float: left;\n");
      out.write("  width:100%;\n");
      out.write("  margin-bottom: 20px;\n");
      out.write("  margin-left: 2px;\n");
      out.write("  margin-right: 8px;\n");
      out.write("  padding: 7px 12px 14px 17px;\n");
      out.write("  font: 25px Helvetica;\n");
      out.write("background-color:#1abc9c;\n");
      out.write("color:black;\n");
      out.write("}\n");
      out.write(".card {\n");
      out.write("  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.2);\n");
      out.write("}\n");
      out.write(".button1 {\n");
      out.write("    background-color:#1abc9c;\n");
      out.write("    color:white;\n");
      out.write("    padding:14px 20px;\n");
      out.write("    margin:8px 0px 10px 4px;\n");
      out.write("    border:none;\n");
      out.write("    cursor:pointer;\n");
      out.write("    width:30%;\n");
      out.write("    opacity:0.9;\n");
      out.write("}\n");
      out.write(".p5 {\n");
      out.write("   font:30px  Helvetica;\n");
      out.write("  text-align:center;\n");
      out.write("  margin-top:10px;\n");
      out.write("  margin-bottom:10px;\n");
      out.write("background-color:8FBC8F;\n");
      out.write("padding: 7px 2px 2px 2px;\n");
      out.write("}\n");
      out.write(".button {\n");
      out.write("\tbackground-color:grey;\n");
      out.write("  color: white;\n");
      out.write("  text-align:center;\n");
      out.write("  padding: 12px 70px;\n");
      out.write("  margin: 10px 10px;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 100%;\n");
      out.write("  font:15px  Helvetica;\n");
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
      out.write("<div class=\"header\">\n");
      out.write("  <img src=\"Picture5.png\" height=\"100\" width=\"250\">\n");
      out.write("   <div class=\"tree2 dropdown\">\n");
      out.write("                     <button class=\"dropbtn\"><img src=\"login.jpeg\" width=\"70\" height=\"70\"></button>\n");
      out.write("                  <div class=\"dropdown-content\"> \n");
      out.write("            \n");
      out.write("                      <a href=\"loginPage.jsp\"><h3>Logout</h3></a>\n");
      out.write("                  </div>\n");
      out.write("                 </div>\n");
      out.write("   <p style=\"text-align:right\">Welcome ");
      out.print(session.getAttribute("user"));
      out.write(" !!</p>\n");
      out.write("</div>\n");
      out.write("<!-- navbar -->\n");
      out.write("<div class=\"topnav\">\n");
      out.write("       <a href=\"admin.jsp\">HOME</a>\n");
      out.write("  <a href=\"registerationPage.jsp\">SIGNUP</a>\n");
      out.write("  <a href=\"loginPage.jsp\">LOGIN</a>\n");
      out.write("\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("<!-- sidebar -->\n");
      out.write("  <div class=\"sidenav\">\n");
      out.write("    <a href=\"stationaryadmin.jsp\">Stationary</a>\n");
      out.write("    <a href=\"bagsadmin.jsp\">Bags</a>\n");
      out.write("    <a href=\"art_and_craftadmin.jsp\">Art & Craft</a>\n");
      out.write("    <a href=\"giftsadmin.jsp\">Gifts</a>\n");
      out.write("    <a href=\"booksadmin.jsp\">Books</a>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
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
      out.write("\n");
      out.write(" <div class=\"register\">\n");
      out.write("     <form method=\"post\" id=\"register\" action=\"\">\n");
      out.write("            <div class=\"main\">\n");
      out.write("                <div class=\"column3\">\n");
      out.write("                    <div class=\"card\">\n");
      out.write("                        <p class=\"p5 columns\">PRODUCT DETAILS</p>\n");
      out.write("                        <center><button class=\"button1\" type=\"submit\" name=\"insert\" value=\"insert\" id=\"butt\"> insert </button>\n");
      out.write("                            </center><br><center><button class=\"button1\" type=\"submit\" name=\"update\" value=\"update\" id=\"butt\"> update </button>\n");
      out.write("                        </center><br><center><button class=\"button1\" type=\"submit\" name=\"delete\" value=\"delete\" id=\"butt\"> delete </button>\n");
      out.write("                        </center>\n");
      out.write("                         </center><br><center><button class=\"button1\" type=\"submit\" name=\"order\" value=\"order\" id=\"butt\"> order </button>\n");
      out.write("                        </center>\n");
      out.write("                    </div>\n");
      out.write("                    </div>\n");
      out.write("            </div>\n");
      out.write("     </form>\n");
      out.write(" </div>\n");
      out.write("</body></html>\n");

    if(request.getParameter("insert")!=null)
        {
            response.sendRedirect("insert.jsp");
        }
    if(request.getParameter("update")!=null)
        {
            response.sendRedirect("update.jsp");
        }
    if(request.getParameter("delete")!=null)
        {
            response.sendRedirect("delete.jsp");
        }
    if(request.getParameter("order")!=null)
    {
        response.sendRedirect("order.jsp");
    }

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
