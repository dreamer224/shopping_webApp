<%-- 
    Document   : registerationPage.jsp
    Created on : 11 May, 2020, 4:07:09 PM
    Author     : AMISHA GUPTA
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
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



.header {
  padding: 15px;
  text-align: left;
  background: #1abc9c;
  color: white;
  font-size: 10px;
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
  width:40%;
  margin-bottom: 100px;
  margin-left:250px;
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

.p5{
   font:30px  Helvetica;
  text-align:center;
  margin-top:10px;
  margin-bottom:10px;
  background-color: #1abc9c;
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
  top: 200px;
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
  top: 410px;
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




</style>
</head>
<body>
<form name="f">
<div class="header">
  <img src="Picture5.png" height="100" width="250">
</div>
<!-- navbar -->
<div class="topnav">
  <a href="home.jsp">HOME</a>
  <a href="registrationPage.jsp" class="active">SIGNUP</a>
  <a href="loginPage.jsp">LOGIN</a>
  <a href="aboutus.jsp">ABOUT US</a>
</div>
<!-- sidebar -->
  <div class="sidenav">
    <a href="stationary.jsp">Stationary</a>
    <a href="bags.jsp">Bags</a>
    <a href="art_and_craft.jsp" >Art & Craft</a>
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
	<p class="p5">REGISTRATION FORM</p>
	<div class="card">
	<center>
	<br>
	<table>
			<tr>
				<td><b>FIRST NAME:</b></td>
                <td><input type="text"  name="fname" required> </td>
				<br>
			</tr>
            <tr>
				<td><b>LAST NAME:</b></td> 
                <td><input type="text" name="lname" required> </td>
			</tr>
			<tr>
				<td><b>E-MAIL:</b></td> 
                <td><input type="text" name="email" required> </td>
			</tr>
			<tr>
				<td><b>USERNAME:</b></td> 
                <td><input type="text" name="cid" required> </td>
			</tr>
			
			<tr>
				<td><b>PASSWORD:</b></td> 
                <td><input type="text" name="cpass" required> </td>
			</tr>
			
			<tr>
				<td><b>GENDER:</b></td>
				<td><input type="radio" value="Male" name="gnd">Male</td>
				<td><input type="radio" value="Female" name="gnd">Female</td>
			</tr>
			<tr>
				<td><b>DOB:</b></td> 
                <td><input type="text" name="dob" required> </td>
			</tr>
			<tr>
                <td><b>PHONE NO:</b></td> 
                <td><input type="text" name="pno" required> </td>
			</tr>
			<tr>
				<td><b>ADDRESS:</b></td> 
                <td><input type="textarea" name="add" required> <td>
			</tr>
        </center>
        </table>
        <br>
        <center><b><u>SECRET QUESTIONS</u></b></center>
        <br>
                <table>          
                    <center>
                <tr>
                <td><b>Which city you were born in?</b></td> 
                <td><input type="text" name="q1" required> </td>
		</tr>
                
                <tr>
                <td><b>Which is your favourite cartoon?</b></td> 
                <td><input type="text" name="q2" required> </td>
		</tr>
		
                <tr>
                <td><b>Who is your idol?</b></td> 
                <td><input type="text" name="q3" required> </td>
		</tr>
                    </center>
		</table>
		<button class="button1" name="register" type="submit">REGISTER</button>
				<br>
	



<%
    
    try
    {
        if(request.getParameter("register")!=null)
        {
            String fn=request.getParameter("fname");
            String ln=request.getParameter("lname");
            String ei=request.getParameter("email");
            String un=request.getParameter("cid");
            String pw=request.getParameter("cpass");
            String g=request.getParameter("gnd");
            String db=request.getParameter("dob");
            String pn=request.getParameter("pno");
            String ad=request.getParameter("add");
            String x1=request.getParameter("q1");
            String x2=request.getParameter("q2");
            String x3=request.getParameter("q3");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
            Statement st=conn.createStatement();
            
            int x=st.executeUpdate("insert into cust values('"+un+"','"+pw+"','"+fn+"','"+ln+"','"+ei+"','"+g+"','"+db+"','"+pn+"','"+ad+"','"+x1+"','"+x2+"','"+x3+"') ");
            if(x>0)
            { %> 
            <p style="text-align:center">inserted...</p>
                <% }
            else
            { %> 
            <p style="text-align:center">not inserted...</p>
                <% }
        }
    
    }
    catch(Exception ex)
    {
        
    }
    %>
</center>
	</div>
	</div>
	</div>
</form>
</body>
</html>