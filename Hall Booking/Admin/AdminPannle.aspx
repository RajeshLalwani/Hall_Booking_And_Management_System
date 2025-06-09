<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPannle.aspx.cs" Inherits="Admin_AdminPannle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            position:absolute;
            top:20%;
            left:0;
            padding:20px;
        }
         form {
            border: 3px solid #f1f1f1;
        }
        .ip {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .ip2 {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
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
    <div>
    <nav class="navbar">
     <div class="navbar-container container">
     <h1 class="logo">Ganesh Hall</h1>
     <ul class="menu-items">
                <li><a href="AdminPanleHome.aspx">Home</a></li>
        </ul>
     </div>
    </nav>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Select category" class=ip2></asp:Label> &nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" class=ip onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                
                        <asp:ListItem>Conferences/Meetings</asp:ListItem>
                        <asp:ListItem>Concerts/Performances</asp:ListItem>
                        <asp:ListItem>Weddings</asp:ListItem>
                        <asp:ListItem>Receptions</asp:ListItem>
                        <asp:ListItem>Exhibitions</asp:ListItem>
                        <asp:ListItem>Educational Events</asp:ListItem>

                        <asp:ListItem>Birthday Party</asp:ListItem>
                        <asp:ListItem>Trade Shows</asp:ListItem>
                        <asp:ListItem>Religious Gatherings</asp:ListItem>
                        <asp:ListItem>Business Meeting</asp:ListItem>
                        <asp:ListItem>Social Gatherings</asp:ListItem>
                        <asp:ListItem>Corporate Events</asp:ListItem>

                        <asp:ListItem>Cultural Events</asp:ListItem>
                        <asp:ListItem>Sports Events</asp:ListItem>
                        <asp:ListItem>College Annual Day Event</asp:ListItem>
                        <asp:ListItem>Other Party</asp:ListItem>
                        

                    </asp:DropDownList> &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enter Price" class=ip2></asp:Label> &nbsp;</td>
                <td>
                     <asp:TextBox ID="TextBox1" runat="server" class=ip></asp:TextBox>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Upload Photos" class=ip2></asp:Label>&nbsp;</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" class=ip />              </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save" class=lgnbtn 
                        onclick="Button1_Click" BackColor="#33CCFF" /> &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Clear" class=cnbtn 
                        onclick="Button2_Click" BackColor="#FF6600" />  &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
