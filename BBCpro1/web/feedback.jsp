<%-- 
    Document   : feedback
    Created on : 8 Jun, 2020, 8:04:23 AM
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

.p5 {
 font:30px  Helvetica;
  text-align:center;
  margin-top:10px;
  margin-bottom:10px;
background-color: #1abc9c;
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
<div class="header">
  <img src="Picture5.png" height="100" width="250">
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
    <a href="stationary.jsp">Stationary</a>
    <a href="bags.jsp">Bags</a>
    <a href="art_and_craft.jsp">Art & Craft</a>
    <a href="gifts.jsp">Gifts</a>
    <a href="books.jsp" class="active">Books</a>

</div>
 <div class="sidenav2">
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
            <center> <h2><p class="p5">FEEDBACK FORM</p></h2></center>
<div class="card">
            <center>
               
            <br>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><%=session.getAttribute("name1")%> <%=session.getAttribute("name2")%></td>
                </tr>
                <tr>
                    <td>User Id:</td>
                    <td><%=session.getAttribute("user")%></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="number" name="age"></td>
                </tr>
                 <tr>
                    <td>Product Id:</td>
                    <td><%=session.getAttribute("item_id")%></td>
                </tr>
                <tr>
                    <td>Product Quality:</td>
                    <td>Good<input type="checkbox" value="Good" name="r1">   Average<input type="checkbox" value="Average" name="r1">   Poor<input type="checkbox" value="Poor" name="r1"></td>
                   
                </tr>
                <tr>
                    <td>Order Accuracy:</td>
                    <td>Good<input type="checkbox" value="Good" name="r2">   Average<input type="checkbox" value="Average" name="r2">   Poor<input type="checkbox" value="Poor" name="r2"></td>
                   
                </tr>
               
                <tr>
                    <td>Website experience:</td>
                    <td>Good<input type="checkbox" value="Good" name="r3">   Average<input type="checkbox" value="Average" name="r3">   Poor<input type="checkbox" value="Poor" name="r3"></td>
                   
                </tr>
                <tr>
                    <td>Any other suggestions:</td>
                    <td><textarea rows = "5" cols = "40" name = "des"></textarea> </td>
                </tr>
            </table>
                <form>    <button class="button1" name="submit" type="submit">Submit</button></form>
            </center>
</div>
</div>
</div>
</body>
</html>

<%
   
 
    try
    {
        if(request.getParameter("submit")!=null)
        {
           
            String n=request.getParameter("name");
            String e=request.getParameter("uid");
            int a=Integer.parseInt(request.getParameter("age"));
            String p=request.getParameter("r1");
            String o=request.getParameter("r2");
            String w=request.getParameter("r3");
            String s=request.getParameter("des");
            String pi=request.getParameter("pid");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BBCpro","daabshop","daabshop");
            Statement st=conn.createStatement();
            int x=st.executeUpdate("insert into feedback values('"+n+"','"+e+"',"+a+",'"+p+"','"+o+"','"+w+"','"+s+"','"+pi+"')");
            if(x>0)
            { %>
            <center> <p>inserted...</p></center>
                <% }
            else
            { %>
            <center> <p>inserted...</p></center>
                <% }
                   
        }

   
    }
    catch(Exception ex)
    {
       
    }
    %>
