<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanleHome.aspx.cs" Inherits="Admin_AdminPanleHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h2
        {
            text-align:center;}
.container1 ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 300px;
  background-color: #DC7D9E;
  border: 1px solid #555;
}

.container1 li a {
  display: block;
  color: #000;
  padding: 28px 16px;
  text-decoration: none;
}

.container1 li {
  text-align: center;
  border-bottom: 1px solid #555;
}

.container1 li:last-child {
  border-bottom: none;
}

.container1 li a.active {
  background-color: #E96F99; /* green */
  color: white;
}

.container1 li a:hover:not(.active) {
  background-color: #E96F99; /* green */
  color: white;
   border-radius: 10px; /* Adjust the value to control the roundness */
    background-color: #; /* Optional: Add background color for better visibility */
    padding: 28px; /* Optional: Add padding for spacing */
}
.container1
{
     border-radius: 10px; /* Adjust the value to control the roundness */
    border: 1.5px solid black; /* Add border for better visibility */
    padding: 15px; /* Optional: Add padding for spacing */
    
    display: flex;
    flex-direction: column;
    position: absolute;
    left: 40%;
    top: 20%;
    font-size: larger; 
    font-family:MV Boli ;
   
 }
 
 .container1 ul {
    border-radius: 10px; /* Adjust the value to control the roundness */
    background-color: #f0f0f0; /* Optional: Add background color for better visibility */
    padding: 10px; /* Optional: Add padding for spacing */
    background-color: #DC7D9E;
 }
   
  .container{
    max-width: 1200px;
    width: 90%;
    margin: auto;
}

.navbar{
    box-shadow: 0px 5px 10px 0px #aaa;
    position: fixed;
    width: 100%;
    background: #fff;
    color: #000;
    opacity: 0.85;
    z-index: 100;
}

.navbar-container{
    display: flex;
    justify-content: space-between;
    height: 64px;
    align-items: center;
}

.menu-items{
    order: 2;
    display: flex;
}
.logo{
    order: 1;
    font-size: 2.3rem;
    color: #ff3e55;
    font-family:Tahoma;
}
.menu-items li{
    list-style: none;
    margin-left: 1.5rem;
    font-size: 1.3rem;
}

.navbar a{
    color: #444;
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s ease-in-out;
}

.navbar a:hover{
    color: #e4001e;
}
body {
  margin: 0; 
  font-family: font-family: 'Montserrat', sans-serif;
  font-size: 1.5rem;
  background-color: #fefff4;
}
.admin
{
    font-family:MV Boli;
    }

</style>
</head>
<body bgcolor="#FEFCE9">                     
    <form id="form1" runat="server">
     <nav class="navbar">
     <div class="navbar-container container">
     <h1 class="logo">Ganesh Hall</h1>
     <ul class="menu-items">
                <li><a href="login.aspx">Log Out</a></li>
        </ul>
     </div>
    </nav>
    
    <div class=container1>
    <h2 class="admin">ADMIN MENU</h2>
    <ul style="color: #FFFFFF">
      <li><a href="AdminPannle.aspx"  color: #FFFFFF;">Add Cateory</a></li>
      <li><a href="ManageCat.aspx"  color: #FFFFFF;">Manage category</a></li>
      <li><a href="ManageContact.aspx"  color: #FFFFFF;">Manage Contact</a></li>
      <%--<li><a href="#about">About</a></li>--%>
    </ul>
    </div>
    </form>
</body>
</html>
