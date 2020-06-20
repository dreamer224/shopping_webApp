<%-- 
    Document   : aboutus
    Created on : 12 May, 2020, 1:29:23 PM
    Author     : AMISHA GUPTA
--%>

<%@page contentType="text/html"  import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>DAAB-shop</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

body {
  font-family: Arial;
  margin: 0;
}
.tree3 {
	float: right;
}
.header {
  padding: 15px;
  text-align: left;
  background: #1abc9c;
  color: white;
  font-size: 10px;
}

.tree1 {
    padding: 15px;
	float: left;
	width: 100px;
	height: 100px;
}

.tree2 {
    padding: 10px;
	float: right;
	width: 100px;
	height: 100px;
}


.main {
	padding: 16px; 
  flex: 70%; 
  background-color: white; 
  padding: 20px;
  font-family: Arial;
  
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

.column {
  width:60%;
  margin-bottom: 100px;
  margin-left:150px;
  padding: 20px 100px ;
}
.card {
  box-shadow: 10px 10px 10px 10px rgba(0, 0, 0, 0.2);
}

.button1{
background-color: #1abc9c;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}

@media screen and (max-width: 850px) {
  .column {
    width: 70%;
    display: block;
  }
}

/* side bar */
.sidenav {
  flex:30%;
  width: 150px;
  position: fixed;
  z-index: 1;
  top: 250px;
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
  top: 460px;
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
margin-left: 15px
}

body {
 overflow: auto;
 background-image: url("back1.jpg");
 background-repeat: no-repeat,repeat;
}

.p5 {
  font:30px  Helvetica;
  text-align:center;
  margin-top:10px;
  margin-bottom:10px;
  background-color: #1abc9c;
}


.tclass
{
    width: 50%;
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
  right: -108.5px;
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
    <form name="f">
<<div class="header">
  <img src="Picture5.png" height="100" width="250">
  <div class="tree3 dropdown">
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
  <a href="aboutus.jsp" class="active">ABOUT US</a>
  <a href="cart.jsp">CART</a>
</div>
<!-- sidebar -->
  <div class="sidenav">
    <a href="stationary.jsp">Stationary</a>
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

<div class="main">
	<div class="column">
            <center> <h2><p class="p5">ABOUT US</p></h2></center>
	<div class="card">
            <center>
                <br>
                <p>
                     <h3>THE DAABSHOP STORY</h3>
                     <h4>Launched in April 2020</h4>
                </p>
                <img src="bv.jpg" alt="" width="500" height="300" align="center">
                </center>
                <p>
                    DaabShop is Banasthali's leading e-commerce marketplace with over 500 products across 5+ categories.
                </p>
                <p>
                    BBC Store been the main supplier of the products for the online order.
                </p>
                <p>
                    Online order by customers from all over the college for a fast and easy purchasing of the products.
                </p>
            
        </div>
            <div class="card">
                <center>
                    <br>
                <h3>DEVELOPERS TEAM</h3>
                 </center>
                <p>
                    Our website is managed by the team of 4 students of Bachelors of Technology Computer Science students
                </p>
                <p>The team consists of:-</p>
                <table class="tclass">
                    <tr>
                        <td>1.Amisha Gupta</td>
                        <td>2.Anshika Awasthi</td>
                    </tr>
                    <tr>
                        <td>3.Bharti Sharma</td>
                        <td>4.Divya Anand</td>
                    </tr>
                </table>
                
                <center> <p>Hope you have a Wonderful shopping experience at our website.</p>
                    <p>Thank You..!!</p></center>
           
	</div>
	</div>
</div>
</form>
</body>
</html>

