<%-- 
    Document   : home
    Created on : 11 May, 2020, 9:36:18 AM
    Author     : AMISHA GUPTA
--%>

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
/* slideshow */
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width:1090px;
  max-height:400px;
  position: sticky;
  margin: 10px 5px 15px 150px;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 7.5px;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}



/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/*button over image */
.container {
  position: relative;
  width: 50%;
}

/* Style the button and place it in the middle of the container/image */
.container .btn {
  position: absolute;
  top: 65%;
  left: 25%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #ddd;
  color: black;
  font-size: 16px;
  padding: 15px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  font-family: Geneva;
  font-weight: bolder;
}

.container .btn:hover {
  background-color: white;
  
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
                      <a href="viewProfile.jsp"><h3>View Profile</h3></a>
                      <a href="changePassword.jsp"><h3>Change Password</h3></a>
                      <a href="loginPage.jsp"><h3>Logout</h3></a>
                  </div>
                 </div>
   

   <p style="text-align:right">Welcome <%=session.getAttribute("user")%> !!</p>
</div>
<!-- navbar -->
<div class="topnav">
  <a href="home.jsp" class="active">HOME</a>
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
      <a href="stationary.jsp" >Stationary</a>
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

<!-- slideshow -->

<div class="slideshow-container">

<div class="mySlides fade container">
  <img src="12.png" style="width:220%" >
</div>

<div class="mySlides fade container">
  <img src="34.png" style="width:220%">
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
<!-- DEALS OF THE DAY -->
<div class="column1">
    <div class="card">
   <p class="p5">PRODUCTS</p>
</div>
</div>
    <%
  try{      
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
    Statement stmt=con.createStatement();
   // String strQuery = "select * from items where type= stationary'";
    String e= "Stationary";
    ResultSet rs = stmt.executeQuery("select * from items where TYPE='"+e+"'");
    if(rs.next()){
       %>
  <div class="column2">
    <div class="card">
      <img src="retrieve.jsp?id=<%=rs.getString(1)%>"  width="150" height="150" class="centerimage3" align="middle">
      <br>
        <a href="products.jsp?id=<%=rs.getString(1)%>"><p align="center"><%=rs.getString("name")%></p></a>
        <p align="center">₹<%=rs.getString("price")%></p>

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
    <%
  try{      
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
    Statement stmt=con.createStatement();
   // String strQuery = "select * from items where type= stationary'";
    String e= "Bags";
    ResultSet rs = stmt.executeQuery("select * from items where TYPE='"+e+"'");
    if(rs.next()){
       %>
  <div class="column2">
    <div class="card">
        <img src="retrieve.jsp?id=<%=rs.getString(1)%>"  width="150" height="150" class="centerimage3" align="middle">
      <br>
        <a href="products.jsp?id=<%=rs.getString(1)%>"><p align="center"><%=rs.getString("name")%></p></a>
        <p align="center">₹<%=rs.getString("price")%></p>

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
     <%
  try{      
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
    Statement stmt=con.createStatement();
   // String strQuery = "select * from items where type= stationary'";
    String e= "Books";
    ResultSet rs = stmt.executeQuery("select * from items where TYPE='"+e+"'");
    if(rs.next()){
       %>
  <div class="column2">
    <div class="card">
      <img src="retrieve.jsp?id=<%=rs.getString(1)%>"  width="150" height="150" class="centerimage3" align="middle">
      <br>
        <a href="products.jsp?id=<%=rs.getString(1)%>"><p align="center"><%=rs.getString("name")%></p></a>
        <p align="center">Rs.<%=rs.getString("price")%></p>
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
</body>
</body></html>
<%
  
  try
  {
  if (request.getParameter("btnshop")!=null)
          {
              response.sendRedirect("products.jsp?id=rs.getString(1)");
          }
  }catch(Exception e)
  {
      e.getMessage();
  }
  %>