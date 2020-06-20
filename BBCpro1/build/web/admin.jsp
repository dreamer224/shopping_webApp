<%-- 
    Document   : admin
    Created on : 11 May, 2020, 8:34:41 AM
    Author     : AMISHA GUPTA
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
.tree2 {
	float: right;
}
body {
  font-family: Arial;
  margin: 0;
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

.main {
    padding: 16px;
    flex:70%;
    background-color:white;
    padding:20px;
    font-family:Arial;
}
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
.column3 {
	margin-top:-30px;
	margin-left:250px;
	 float:left;
	padding:100px;
	height:700px;
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
  margin-left: 2px;
  margin-right: 8px;
  padding: 7px 12px 14px 17px;
  font: 25px Helvetica;
background-color:#1abc9c;
color:black;
}
.card {
  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.2);
}
.button1 {
    background-color:#1abc9c;
    color:white;
    padding:14px 20px;
    margin:8px 0px 10px 4px;
    border:none;
    cursor:pointer;
    width:30%;
    opacity:0.9;
}
.p5 {
   font:30px  Helvetica;
  text-align:center;
  margin-top:10px;
  margin-bottom:10px;
background-color:8FBC8F;
padding: 7px 2px 2px 2px;
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
            
                      <a href="loginPage.jsp"><h3>Logout</h3></a>
                  </div>
                 </div>
   <p style="text-align:right">Welcome <%=session.getAttribute("user")%> !!</p>
</div>
<!-- navbar -->
<div class="topnav">
       <a href="admin.jsp">HOME</a>
  <a href="registerationPage.jsp">SIGNUP</a>
  <a href="loginPage.jsp">LOGIN</a>

  
</div>
<!-- sidebar -->
  <div class="sidenav">
    <a href="stationaryadmin.jsp">Stationary</a>
    <a href="bagsadmin.jsp">Bags</a>
    <a href="art_and_craftadmin.jsp">Art & Craft</a>
    <a href="giftsadmin.jsp">Gifts</a>
    <a href="booksadmin.jsp">Books</a>

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
    <a href="productsadmin.jsp?id=<%=rst.getString(1)%>"><img src="retrieve.jsp?id=<%=rst.getString(1)%>" class="centerimage" width="95" height="145" align="center"></a>
    <a href="productsadmin.jsp?id=<%=rst.getString(1)%>"></a>
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

 <div class="register">
     <form method="post" id="register" action="">
            <div class="main">
                <div class="column3">
                    <div class="card">
                        <p class="p5 columns">PRODUCT DETAILS</p>
                        <center><button class="button1" type="submit" name="insert" value="insert" id="butt"> insert </button>
                            </center><br><center><button class="button1" type="submit" name="update" value="update" id="butt"> update </button>
                        </center><br><center><button class="button1" type="submit" name="delete" value="delete" id="butt"> delete </button>
                        </center>
                         </center><br><center><button class="button1" type="submit" name="order" value="orders" id="butt"> order </button>
                        </center>
                    </div>
                    </div>
            </div>
     </form>
 </div>
</body></html>
<%
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
%>