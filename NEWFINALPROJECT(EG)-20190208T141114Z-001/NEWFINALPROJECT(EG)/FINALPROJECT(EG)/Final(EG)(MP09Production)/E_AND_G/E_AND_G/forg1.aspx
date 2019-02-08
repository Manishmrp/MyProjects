<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forg1.aspx.cs" Inherits="E_AND_G.forg1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Sign_in.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
    .lbl_rem
    {
        font-family:Arial;
        color:#20BEC9;
        font-size:smaller;
    }
    .c_home
        {
            background-color:#20bec9;
            padding:8px;
            text-align:center;
            border-radius:6px;
            font-family:Arial;
            weight:bold;
            color:White;
        }
        .c_home:hover
        {
            background-color:#20bec9;
            padding:8px;
            text-align:center;
            border-radius:6px;
            box-shadow:0px 0px 20px 3px black;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="div_header" bgcolor="#20BEC9">
           <asp:Image ID="img_logo" runat="server" Height="100px" 
                ImageUrl="~/images/eg_logo (1).jpg" CssClass="css_logo" Width="100px" />
         <asp:Image ID="Image1" runat="server" CssClass="css_logo2" Height="100px" 
            ImageAlign="Right" ImageUrl="~/images/eg_logo (2).jpg" Width="100px" />
     <asp:Image ID="Image2" runat="server" ImageUrl="~/images/eg_heading.png" />
    
    </div>
    
    <marquee direction="left" bgcolor="#24C5CD">:: WELCOME TO E&G :: Online Selling and Repairing of Electronics and Gadgets !!</marquee>
    
    </div>
    <div>
    <br /><center>
        </center></div>
    <div></div>

    <center><div id="div_center" style="box-shadow:0px 0px 20px 3px black">
    <h1 align="center">RESET PASSWORD</h1>
    <div style="margin-left: 40px">
        <asp:Label ID="que" runat="server" Font-Italic="True" Font-Names="Consolas" 
            ForeColor="#20BEC9"></asp:Label>
        <br />
        <center><div>
        <asp:TextBox ID="ans" runat="server" placeholder="Enter your answer" style="padding:10px; border-radius:6px; border:solid 1px grey;" Width="250px"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="ans" ErrorMessage="Enter Your answer" Font-Names="Arial" 
            Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator></div>
        </center>
        <center>
            <div>
        <asp:TextBox ID="pwd" runat="server" placeholder="Enter your New Password" 
            TextMode="Password" MinLength="8" style="padding:10px; border-radius:6px; border:solid 1px grey;" Width="250px" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="pwd" ErrorMessage="Enter New Password" Font-Names="Arial" 
            Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator></div></center>
       <center><div>
        
        <asp:TextBox ID="cpwd" runat="server" placeholder="Confirm Password" 
            TextMode="Password" MinLength="8" style="padding:10px; border-radius:6px; border:solid 1px grey;" Width="250px"></asp:TextBox>
        
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="pwd" ControlToValidate="cpwd" ErrorMessage="Check Password" 
            Font-Names="Arial" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Enter Password" Font-Names="Arial" ForeColor="Red" 
            Font-Size="X-Small" ControlToValidate="cpwd"></asp:RequiredFieldValidator></div></center>
        <br />
        <asp:Button ID="reset" runat="server" onclick="reset_Click" Text="Reset" />
        <br />
        <asp:Label ID="err2" runat="server" Font-Names="Arial" ForeColor="Red"></asp:Label>
        <br />
    </div>
        
        <br />
        <div>
            <br />
            <br />
        </div>
    </div></center>
    </form>
</body>
</html>