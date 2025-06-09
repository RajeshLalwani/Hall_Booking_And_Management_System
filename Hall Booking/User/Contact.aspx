<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="User_Contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
      <style>
          *,
*::after,
*::before{
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

.html{
    font-size: 62.5%;
}

.navbar input[type="checkbox"],
.navbar .hamburger-lines{
    display: none;
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

@media (max-width: 768px){
    .navbar{
        opacity: 0.95;
    }

    .navbar-container input[type="checkbox"],
    .navbar-container .hamburger-lines{
        display: block;
    }

    .navbar-container{
        display: block;
        position: relative;
        height: 64px;
    }

    .navbar-container input[type="checkbox"]{
        position: absolute;
        display: block;
        height: 32px;
        width: 30px;
        top: 20px;
        left: 20px;
        z-index: 5;
        opacity: 0;
        cursor: pointer;
    }

    .navbar-container .hamburger-lines{
        display: block;
        height: 28px;
        width: 35px;
        position: absolute;
        top: 20px;
        left: 20px;
        z-index: 2;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .navbar-container .hamburger-lines .line{
        display: block;
        height: 4px;
        width: 100%;
        border-radius: 10px;
        background: #333;
    }
    
    .navbar-container .hamburger-lines .line1{
        transform-origin: 0% 0%;
        transition: transform 0.3s ease-in-out;
    }

    .navbar-container .hamburger-lines .line2{
        transition: transform 0.2s ease-in-out;
    }

    .navbar-container .hamburger-lines .line3{
        transform-origin: 0% 100%;
        transition: transform 0.3s ease-in-out;
    }

    .navbar .menu-items{
        padding-top: 100px;
        background: #fff;
        height: 100vh;
        max-width: 300px;
        transform: translate(-150%);
        display: flex;
        flex-direction: column;
        margin-left: -40px;
        padding-left: 40px;
        transition: transform 0.5s ease-in-out;
        box-shadow:  5px 0px 10px 0px #aaa;
        overflow: scroll;
    }

    .navbar .menu-items li{
        margin-bottom: 1.8rem;
        font-size: 1.1rem;
        font-weight: 500;
    }

    .logo{
        position: absolute;
        top: 10px;
        right: 15px;
        font-size: 2.5rem;
    }

    .navbar-container input[type="checkbox"]:checked ~ .menu-items{
        transform: translateX(0);
    }

    .navbar-container input[type="checkbox"]:checked ~ .hamburger-lines .line1{
        transform: rotate(45deg);
    }

    .navbar-container input[type="checkbox"]:checked ~ .hamburger-lines .line2{
        transform: scaleY(0);
    }

    .navbar-container input[type="checkbox"]:checked ~ .hamburger-lines .line3{
        transform: rotate(-45deg);
    }

}

.container1 {
  width: 100vw;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: sans-serif;
}

.card {
  background-color: #f4f0ec  ;
  padding: 1rem;
  border-radius: 5px;
  border: 1px solid #bbb;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 2rem;
}

.left {
  width: 25vw;
  overflow: hidden;
  border-radius: 5px;
}

.left img {
  width: ;
  object-fit: cover;
  transform: ;
}

.right .contact {
  display: flex;
  gap: 1rem;
  margin-right: 1rem;
}

.form, .address {
  display: flex;
  flex-direction: column;
  padding: 1rem 0 0;
}

.form input, textarea {
  width: 100%;
  outline: none;
  background: none;
  border: none;
  border-bottom: 2px solid #000;
  padding: 10px 0;
  margin: 5px 0;
}

.usersubmit input {
  background-color: #c46210;
  color: white;
  font-weight: bold;
  border-radius: 5px;
  border: none;
  width: min-content;
  padding: 15px;
  margin-bottom: 0;
  cursor: pointer;
  transition: 0.3s;
}

.usersubmit input:hover {
  background-color: #f55;
}

.address {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

h4 {
  margin-bottom: 5px;
}

@media screen and (max-width: 700px) {
  .card {
    flex-direction: column;
  }
  
  .left {
    width: 60vw;
    height: 40vh;
  }
}

@media screen and (max-width: 350px) {
  .container {
    overflow: hidden;
  }
  .left {
    height: 20vh;
  }
  .contact {
    flex-direction: column;
  }
}
body
{
    background-color: #fefff4;}

</style>
</head>
<body >
    <form id="form1" runat="server">
    <div>
     <nav class="navbar">
        <div class="navbar-container container">
            <input type="checkbox" name="" id="">
            <div class="hamburger-lines">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </div>
            <ul class="menu-items">
                <li><a href="./home.html">Home</a></li>
                <li><a href="About.html">About</a></li>
                <li><a href="Cat.aspx">Category</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <h1 class="logo">Ganesh Hall</h1>
        </div>
    </nav>
    </div>

    <div class="container1">
  <div class="card">
    <div class="left">
      <img src="../Assets/Ganesh.jpg" style="max-width: 100%; height: auto;">
    </div>
    <div class="right">
      <h2>Contact Us</h2>
      <div class="contact">
        <div class="form-container">
          <form class="form">
            <div class="username">
                <asp:TextBox ID="TextBox1" placeholder="Enter your Name" runat="server"  style=" width: 100%;
  outline: none;
  background: none;
  border: none;
  border-bottom: 2px solid #000;
  padding: 10px 0;
  margin: 5px 0;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Required" ControlToValidate="TextBox1" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </div>
            <div class="useremail">
                <asp:TextBox ID="TextBox2" runat="server" 
                    placeholder="Enter Your Mobile Number" style=" width: 100%;
  outline: none;
  background: none;
  border: none;
  border-bottom: 2px solid #000;
  padding: 10px 0;
  margin: 5px 0;" MaxLength="10"></asp:TextBox>
                              
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Number Required" ControlToValidate="TextBox1" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Contact Number" 
                    ForeColor="#FF3300" ValidationExpression="[0-9]{10}" 
                    ControlToValidate="TextBox2"></asp:RegularExpressionValidator>

            </div>
            <div class="usermessage">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" placeholder="Enter your Message" style=" width: 100%;
  outline: none;
  background: none;
  border: none;
  border-bottom: 2px solid #000;
  padding: 10px 0;
  margin: 5px 0;"></asp:TextBox>
        
            </div>
            <div class="usersubmit">
                <asp:Button ID="Button1" runat="server" Text="Contact Us" 
                    onclick="Button1_Click" />
             <%-- <input type="submit" value="Contact Us>--%>
            </div>
          </form>
        </div>
        <div class="address">
          <div class="email">
            <h4>Contact</h4>
            <p>rajlalwani511@gmail.com</p>
          </div>
          <div class="location">
            <h4>Based in</h4>
            <p>Anand,<br>Gujarat</p>
          </div>
          <div class="social">
            <span><a href="#"><i class="fab fa-facebook"></i></a></span>
            <span><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></span>
            <span><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></span>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
    </form>
</body>
</html>
