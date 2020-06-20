<%-- 
    Document   : insert
    Created on : 11 May, 2020, 8:48:46 AM
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
.columnin {
	margin-top:-10px;
	margin-left:350px;
	 float:left;
	padding:80px;
	height:400px;
}


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
  margin-left: 0px;
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
    margin:8px 0;
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
.p7{
    font:30px  Helvetica;
  text-align:center;
  margin-top:10px;
  margin-left:250px;
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
            <div class="main">
                <div class="column3">
                    <div class="card">
                       
                            <p class="p5 columns">INSERT PRODUCT DETAILS</p>
                            <center>
         <form method="post" id="register" action="">
	    <label>ID</label><br>
            <input type="text" name="id" id="id" placeholder="Enter id"><br><br>
            <label>Name</label><br>
            <input type="text" name="name" id="name" placeholder="Enter the name"><br><br>  
            <label>Category</label>
            <select name="category" size="1">
                <option>Stationary</option>
                <option>Bags</option>
                <option>Art & Crafts</option>
                <option>Gifts</option>
                <option>Books</option>
                </select> 
            <br><br>
              <label>Price</label><br>
            <input type="text" name="price" id="price" placeholder="In Rupees"><br><br> 
            <label>Upload Your Photo</label><br>
            <input type="file" name="img"><br><br>
            
            <label>Item details</label><br>
            <textarea name="details" rows="4" cols="20">
            </textarea><br><br>
            <button class="button1" type="submit" name="done" value="done" id="butt"> done </button>
           
         


<%
    try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
        //Statement stmt=conn.createStatement();
      
        if(request.getParameter("done")!=null)
        {
              
            String pic=request.getParameter("img");
            String id=request.getParameter("id");
            String name=request.getParameter("name");
            String category=request.getParameter("category");
            String details=request.getParameter("details");
            String price=request.getParameter("price");
             
            
            
            File file=new File(pic);
            FileInputStream fis=new FileInputStream(file);
            //out.println("1");
            PreparedStatement ps=conn.prepareStatement("insert into ITEMS(ID,NAME,TYPE,PHOTO,DETAILS,PRICE,TIME)values(?,?,?,?,?,?,?)");
           // out.println("new");
            ps.setString(1,id);
            ps.setString(2,name);
            ps.setString(3,category);
            ps.setBinaryStream(4,fis,(int)file.length());
            ps.setString(5,details);
            ps.setString(6,price);
            ps.setTimestamp(7, new java.sql.Timestamp(new java.util.Date().getTime()));
            //out.println("1");
            
            int x=ps.executeUpdate();
            //int x=stmt.executeUpdate("insert into educational_details(examrollno,tenmarks,twemarks,photo)values(("+roll+","+num+","+num1+")");
            
            if(x>0)
            {
                %> <br><br> <%
               out.println("Details have been uploaded");
               ps.close();
               fis.close();
            }
            
            else
                System.out.println("Please enter your details carefully");
          
        }
         
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>   
 </center>
                    </div>
                </div>
            </div>
</form>  
        </div>
</body></html>