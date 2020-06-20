<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %>

<html>
<head>
<title>DAAB-shop</title>
<link rel="icon" href="Picture7.png" type="image/png">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}
/* Style the body */
body {
  font-family: Arial;
  margin: 0;
}
.tree2 {
	float: right;
}
/* Header */
.header {
  padding: 15px;
  text-align: left;
  background: #1abc9c;
  color: white;
  font-size: 10px;
}
/* navbar */


.topnav {
  overflow: hidden;
  background-color: #333;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}

.topnav a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 20px 20px;
  text-decoration: none;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #666;
  color: white;
}

.topnav a.right {
  float:right
}
.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 10px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
    float: right;
  padding: 8.5px 10px;
  margin-top: 10px;
  margin-right: 16px;
  background: #ddd;
  font-size: 15px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}


table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

/* side bar */
.sidenav {
  flex:30%;
  width: 150px;
  position: fixed;
  z-index: 1;
  top: 230px;
  background: #333;
  overflow-x: hidden;
  padding: 8px 0;
}
.sidenav a {
  padding: 10px 50px 10px 16px;
  text-decoration: none;
  color: white;
  display: block;
}

.sidenav a:hover {
  background-color: #ddd;
  color:black;
}

/* sidenav2 */
.sidenav2 {
  flex:30%;
  width: 150px;
  position: fixed;
  z-index: 1;
  top: 440px;
  background: #333;
  overflow-x: hidden;
  padding: 8px 0;
}
.sidenav2 a {
  padding: 10px 10px 4px 1px;
  text-decoration: none;
  font-size: 15px;
  color: white;
  display: block;
  text-align: center;
}

.sidenav2 a:hover {
  background-color: #ddd;
  color:black;
}
.p1 {
 color: white;
text-align: center;
padding: 5px 18px 10px 16px;
}

.h5 {
    text-align: center;
    font-size: 20px;
}
.centerimage {
margin-left:15px
}

body {
 overflow: auto;
}
/*FOOTER*/
.footer {
  padding:30px;
  margin-left:150px;
  background:#ddd;
margin-top:700px;
}

/* COLUMN OF IMAGE */

.column {
	margin-top:-30px;
	margin-left:150px;
	 float:left;
	padding:100px;
	height:700px;
}

.column1 {
	margin-top:5px;
	margin-left:200px;
	 float:left;
	padding:10px;
	height:300px;
}
.left {
	width:25%;
}
.image1 {
   margin-top:45px;
   margin-left:45px;
}
.right {
   	width:350px;
}
.row:after {
 	content: " ";
	display: table;
	clear:both;
}
.columnh {
  float: left;
  width:100%;
  margin-bottom: 20px;
  margin-left:70px;
  padding: 0px 100px;
}
.card {
  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.2);
}
.columns {
  float: left;
  width:100%;
  margin-bottom: 20px;
  margin-left: 10px;
  padding: 7px 12px 15px 17px;
  font: 25px Helvetica;
background-color:8FBC8F;
color:black;
}
.card {
  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.2);
}
.p5 {
 font:30px  Helvetica;
  text-align:center;
  margin-top:10px;
  margin-bottom:10px;
background-color:8FBC8F;
}

.button {
	background-color:grey;
  color: white;
  text-align:center;
  padding: 12px 70px;
  margin: 10px 10px;
  border: none;
  cursor: pointer;
  width: 100%;
  font:15px  Helvetica;
}
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #1abc9c ;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
</head>
<body>
<div class="header">
  <img src="Picture5.png" height="100" width="250">
  <div class="tree2 dropdown">
                     <button class="dropbtn"><img src="login.jpeg" width="70" height="70"></button>
                  <div class="dropdown-content"> 
                      <a href="viewProfile.jsp"><h3>View Profile</h3></a>
                      <a href="changePassword.jsp"><h3>Change Password</h3></a>
                      <a href="loginPage.jsp"><h3>Logout</h3></a>
                  </div>
                 </div>
   <p style="text-align:right">Welcome <%=session.getAttribute("user")%> !!</p>
</div>
<!-- navbar -->
<div class="topnav">
  <a href="home.jsp">HOME</a>
  <a href="registerationPage.jsp">SIGNUP</a>
  <a href="loginPage.jsp">LOGIN</a>
  <a href="aboutus.jsp">ABOUT US</a>
<a href="cart.jsp">CART</a>
 <div class="search-container">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
       <button type="submit" name="s" value="search" formaction="search.jsp"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
<!-- sidebar -->
  <div class="sidenav">
    <a href="stationary.jsp" class="active">Stationary</a>
    <a href="bags.jsp">Bags</a>
    <a href="art_and_craft.jsp">Art & Craft</a>
    <a href="gifts.jsp">Gifts</a>
    <a href="books.jsp">Books</a>

</div>
 <%
  try{      
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
    PreparedStatement pst = con.prepareStatement("select * from ITEMS where time = (select max(time) from items)");
    ResultSet rst = pst.executeQuery();
    
    while(rst.next()){
       %>
        
         <div class="sidenav2">
    <p class="p1">NEW ARRIVAL</p>
    <a href="products.jsp?id=<%=rst.getString(1)%>"><img src="retrieve.jsp?id=<%=rst.getString(1)%>" class="centerimage" width="95" height="145" align="center"></a>
    <a href="products.jsp?id=<%=rst.getString(1)%>"></a>
</div>
<!-- DEALS OF THE DAY -->
   
           <%
    }
    rst.close();
    pst.close();
    con.close();
    
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  %>
   
      <%
           int totalamt=0;
try{
        
                       
                      //  id="S1";
                      //  String query="select photo from items where id='"+id+"'";
                        
			Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
                        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
			 Statement st=con.createStatement();
                        // out.println("hello");
                         %>
                         <div class="columnh">
                         <table>
                         <tr>
    <th>name</th>
    <th>item</th>
    <th>price</th>
    
  </tr>
      <%
                        
                        ResultSet rs1 = st.executeQuery("select * from cart where cust='"+session.getAttribute("user")+"'");
                        
                        while(rs1.next())
                        {//out.println(rs1.getString("cust"));
                        String id=rs1.getString("id");
                        //out.println(id);
                        out.println("<br>");
                         Statement stmt=con.createStatement();
   // String strQuery = "select * from items where type= stationary'";
                   
                         ResultSet rs = stmt.executeQuery("select * from items where id='"+id+"'");
                         if(rs.next())
                         {
      %>
                            
  <tr>
    <td><p><%=rs.getString("name")%></p></td>
    <td><img src="retrieve.jsp?id=<%=rs.getString(1)%>" width="250" height="310"  class="image1 card"></td>
    <td>   <h5 class="h5">Rs.<%=rs.getString("price")%></h5></td>
    <% totalamt= totalamt + Integer.parseInt(rs.getString("price"));%>
  <%
      }
                        }
}
      catch(Exception ex)
    {

    }
 %>

                         
      </table>
                         </div>
      <div class="columnh">
      <table>             
          <tr><td>
      <form>   <button class="button card" type="submit" name="bill"><b>CHECKOUT</b></button>
      </form></td><td></td><td>Rs.<% out.println(totalamt);%></td></tr>
      </table></div>
      <%
      session.setAttribute("tm",totalamt);
      try
    {
if(request.getParameter("bill")!=null)
{
    
    Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
            Statement stp=conn.createStatement();
            int x=0;
            x=stp.executeUpdate("insert into bill values('"+session.getAttribute("user")+"',"+session.getAttribute("tm")+")");
            if(x>0)
            {response.sendRedirect("bill.jsp");}
}
      }
      catch(Exception ex)
    {

    }
%>
 </body>
 </html>