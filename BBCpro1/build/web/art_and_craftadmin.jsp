<%-- 
    Document   : art_and_craftsadmin
    Created on : 11 May, 2020, 12:37:10 PM
    Author     : AMISHA GUPTA
--%>

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


.sidenav a.active {
  background-color: #666;
  color: white;
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
text-align: centre;
padding: 5px 18px 10px 16px;
}

.centerimage {
margin-left:15px
}

body {
 overflow: auto;
}

/*DEALS OF THE DAY*/

/* Three columns side by side */


.column1 {
  float: left;
  width:100%;
  margin-bottom: 20px;
  margin-left:70px;
  padding: 0px 100px;
}

.column2 {
  float: left;
  width:20%;
  margin-bottom: 14px;
  margin-left:150px;
  padding: 0px 20px;
}
.column {
  float: left;
  width:20%;
  margin-bottom: 14px;
  margin-left:10px;
  padding: 0px 20px;
}

.centerimage2 {
 margin-left:75px
}
.centerimage3 {
 margin-left:39px
}

/* Display the columns below each other instead of side by side on small screens */
@media screen and (max-width: 650px) {
  .column {
    width: 50%;
    display: block;
  }
}

/* Add some shadows to create a card effect */
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

/*FOOTER*/
.footer {
  padding:30px;
  margin-left:150px;
  background:#ddd;
margin-top:700px;
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
    <a href="art_and_craftadmin.jsp" class="active">Art & Craft</a>
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
<!-- DEALS OF THE DAY -->

  
<div class="column1">
    <div class="card">
   <p class="p5">ART AND CRAFTS</p>
</div>
     <%
  try{      
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
    Statement stmt=con.createStatement();
   // String strQuery = "select * from items where type= stationary'";
    String e= "Art & Crafts";
    ResultSet rs = stmt.executeQuery("select * from items where TYPE='"+e+"'");
    while(rs.next()){
       %>
</div>
  <div class="column2">
    <div class="card">
      <img src="retrieve.jsp?id=<%=rs.getString(1)%>" width="100" height="145"  class="centerimage2" align="center" >
      <br>
        <a href="productsadmin.jsp?id=<%=rs.getString(1)%>"><p align="center"><%=rs.getString("name")%></p></a>
        <p align="center">Rs.<%=rs.getString("price")%> </p>
 
  </div>
</div>
           <%
    }
    rs.close();
    con.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  %>
<br><br>
</body></html>
