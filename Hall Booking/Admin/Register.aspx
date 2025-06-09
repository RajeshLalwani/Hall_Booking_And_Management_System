<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Admin_Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         .container{
    max-width: 1200px;
    width: 90%;
    margin: auto;
}

.navbar{
    box-shadow: 0px 5px 10px 0px #aaa;
    position: fixed;
    width: 100%;
    background: #fff7f8;
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
.cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        
.style1
{
    border-collapse: collapse;
    border-radius: 10px;
    overflow: hidden;
    background-color: #ffffcc; /* Light yellow background color */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
    }


        
        
        body {
  margin: 0; 
  font-family: font-family:impact, "times", serif;
  font-size: 1.3rem;
  background-color: #fefff4;  
        }   
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <nav class="navbar">
     <div class="navbar-container container">
     <h1 class="logo" href="AdminPanleHome.aspx">Ganesh Hall </h1>
     <ul class="menu-items">
                <li><a href="login.aspx">Log In</a></li>
        </ul>
     </div>
    </nav>
    <div style="position:absolute; top:25%; left:25%;">
    <table align="center" class="style1" style="border: thin solid #008080; width:200%;">
<tr>
<td colspan="3" 
style="border-bottom: thin solid #008080; font-weight: 700; font-family: MV Boli; text-align: center; background-color:#E96F99; color:#fff; padding:10px 5px;">
Admin Registration</td>
</tr>
<tr>
<td class="style5">
&nbsp;</td>
<td class="style4">
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr ">
<td class="style6">
         
</td>
<td class="style4">
<asp:TextBox ID="txtfname" runat="server" Width="120px" placeholder="First Name" style="width: 100% !important;
  outline: none !important;
  background: none !important;
  border: none !important;
  border-bottom: 2px solid #000 !important;
  padding: 10px 0 !important;
  margin: 5px 0 !important;"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
ControlToValidate="txtfname" ErrorMessage="!FirstName is Required" ForeColor="Red" 
SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="style6">

</td>
<td class="style4">
<asp:TextBox ID="txtlname" runat="server" Width="120px" placeholder="Last Name" style="width: 100% !important;
  outline: none !important;
  background: none !important;
  border: none !important;
  border-bottom: 2px solid #000 !important;
  padding: 10px 0 !important;
  margin: 5px 0 !important;"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
ControlToValidate="txtlname" ErrorMessage="!LastName is Required" ForeColor="Red" 
SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="style6">

</td>
<td class="style4">
<asp:TextBox ID="txtcity" runat="server" Width="120px" placeholder="City" style="width: 100% !important;
  outline: none !important;
  background: none !important;
  border: none !important;
  border-bottom: 2px solid #000 !important;
  padding: 10px 0 !important;
  margin: 5px 0 !important;"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
ControlToValidate="txtcity" ErrorMessage="!City is Required" ForeColor="Red" 
SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="style6">

</td>
<td class="style4">
<asp:TextBox ID="txtemail" runat="server" Width="120px" placeholder="Email" style="width: 100% !important;
  outline: none !important;
  background: none !important;
  border: none !important;
  border-bottom: 2px solid #000 !important;
  padding: 10px 0 !important;
  margin: 5px 0 !important;"></asp:TextBox>
</td>
<td>
<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
ControlToValidate="txtemail" ErrorMessage="!Enter Valid Email" ForeColor="Red" 
SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Red" 
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td class="style6">
</td>
<td class="style4">
<asp:TextBox ID="txtpassword" runat="server" Width="120px" TextMode="Password" placeholder="Password" style="width: 100% !important;
  outline: none !important;
  background: none !important;
  border: none !important;
  border-bottom: 2px solid #000 !important;
  padding: 10px 0 !important;
  margin: 5px 0 !important;"></asp:TextBox>
</td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
ControlToValidate="txtpassword" ErrorMessage="!Password is required" ForeColor="Red" 
SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="style5">
&nbsp;</td>
<td class="style4">
<asp:Button ID="btnregistration" runat="server" Text="Register" 
onclick="btnregistration_Click" class=lgnbtn BackColor="#66CCFF" />
</td>
<td>
    <asp:Button ID="Button1" runat="server" Text="Cancel" class=cnbtn  
        CausesValidation="False" onclick="Button1_Click" BackColor="#FF6600" /></td>
</tr>
<tr>
<td class="style5">
&nbsp;</td>
<td class="style2" colspan="2">
<asp:Label ID="lblmsg" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td colspan="3">
&nbsp;</td>
</tr>
</table>
    </div>
    </form>
</body>
</html>
