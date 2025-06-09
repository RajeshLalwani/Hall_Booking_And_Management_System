<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
           
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
        .logo{
    order: 1;
    font-size: 2.3rem;
    color: #ff3e55;
    font-family:Tahoma;
        }
        body {
  margin: 0; 
  font-family: font-family:impact, "times", serif;
  font-size: 1.3rem;
  background-color: #fefff4;
}

.border
{
     border-radius: 10px; /* Adjust the value to control the roundness */
    background-color: #f1cdda; /* Optional: Add background color for better visibility */
    padding: 100px; /* Optional: Add padding for spacing */
    }

    
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="container">
            <center>
                <h3 class="logo">Ganesh Hall </h3>
            </center>
           <div class="border">
           
            <label for="uname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox> <br /> 
       <asp:HyperLink ID="HyperLink1" runat="server" Text="Dont have an Account? click to Create" NavigateUrl="~/Admin/Register.aspx" style="color:black; text-decoration: underline orange;"></asp:HyperLink> <br />
       <br />
       
       <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" 
                onclick="btn_Login_Click" BackColor="#0099FF" />
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn" 
                BackColor="#FF6600" onclick="btn_cancel_Click" />
        </div></div>
    </form>
</body>
</html>
