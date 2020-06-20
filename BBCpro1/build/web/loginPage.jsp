<%-- 
    Document   : loginPage
    Created on : 11 May, 2020, 3:43:28 PM
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

.header {
  padding: 15px;
  text-align: left;
  background: #1abc9c;
  color: white;
  font-size: 10px;
}

.rt
{
    padding: 0px;
    text-align: right;
}

.tree1 {
    padding: 15px;
float: left;
width: 100px;
height: 100px;
}

.tree2 {
float: right;
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
   <img src="Picture5.png" height="100" width="250" >
   <img src="bu.jpeg" height="100" width="100" class="tree2">
</div>
<!-- navbar -->
<div class="topnav">
   <a href="home.jsp">HOME</a>
  <a href="registerationPage.jsp">SIGNUP</a>
  <a href="loginPage.jsp" class="active">LOGIN</a>
  <a href="aboutus.jsp">ABOUT US</a>
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
<div class="card">

<center>
<img src="login.jpeg" width="90" height="90" align="center">
<label><h2>LOGIN AS</h2></label>
<table>
<tr>
<td>CUSTOMER</td>
<td><input type="radio" name="chk1" value="customer"></td>
</tr>
<tr>
<td>ADMIN</td>
<td><input type="radio" name="chk1" value="admin"></td>
</tr>
</table>
<br>
<label><b>USERNAME</b></label>
                <input type="text" placeholder="Enter Username" name="cid">
<br>
<br>
                <label><b>PASSWORD</b></label>
                <input type="password" placeholder="Enter Password" name="cpass">
<br>
<br>
                <button class="button1" name="login" type="submit">Login</button>
<button class="button1" name="newuser" type="submit">New User</button>
<br>
                <input type="checkbox" checked="checked"> Remember me
<br>
<br>
<span class="psw">Forgot <a href="forgotPassword.jsp">password?</a></span>
<br>
<br>


<%
    if(request.getParameter("newuser")!=null)
        {
            response.sendRedirect("registerationPage.jsp");
        }
    String a=request.getParameter("chk1");
    String i=request.getParameter("cid");
    String p=request.getParameter("cpass");
    String n1=null,n2=null,e1=null,p1=null,g1=null,d1=null,a1=null;
    try
    {
        session.setAttribute("user", i);
        if(a.equals("admin") && request.getParameter("login")!=null)
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from admin where aid='"+i+"' and apass='"+p+"'");
            if(rs.next())
                response.sendRedirect("admin.jsp");
            else
                request.setAttribute("errorMessage", "Invalid user or password");
        }
       
        if(a.equals("customer") && request.getParameter("login")!=null)
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro1","daabshop","daabshop");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select * from cust where cid='"+i+"' and cpass='"+p+"'");
            while(rs.next())
            {
                n1=rs.getString(3);
                n2=rs.getString(4);
                e1=rs.getString(5);
                g1=rs.getString(6);
                d1=rs.getString(7);
                p1=rs.getString(8);
                a1=rs.getString(9);
            }
           session.setAttribute("name1",n1 );     
           session.setAttribute("name2",n2 );
           session.setAttribute("email1",e1 );
           session.setAttribute("gender1",g1 );
           session.setAttribute("dob1",d1 );
           session.setAttribute("pno1",p1 );
           session.setAttribute("add1",a1 );
           
           ResultSet rs1=st.executeQuery("select * from cust where cid='"+i+"' and cpass='"+p+"'");
            if(rs1.next())
                response.sendRedirect("home.jsp");
            else
                out.println("wrong id or password !!");
        } 
        
        if(request.getParameter("newuser")!=null)
        {
            response.sendRedirect("registerationPage.jsp");
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