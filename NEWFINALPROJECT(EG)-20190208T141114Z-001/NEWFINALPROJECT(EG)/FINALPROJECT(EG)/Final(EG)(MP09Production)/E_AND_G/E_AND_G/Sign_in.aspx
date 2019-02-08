<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="E_AND_G.Sign_in" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                ImageUrl="~/images/set.png" CssClass="css_logo" Width="100px" />
         <asp:Image ID="Image1" runat="server" CssClass="css_logo2" Height="100px" 
            ImageAlign="Right" ImageUrl="~/images/eg_logo (2).jpg" Width="100px" />
     <asp:Image ID="Image2" runat="server" ImageUrl="~/images/eg_heading.png" />
    
    </div>
    
    <marquee direction="left" bgcolor="#24C5CD">:: WELCOME TO E&G :: Online Repairing of Electronics and Gadgets !!</marquee>
    
    </div>
    <div>
    <br /><center>
        </center></div>
    <div></div>

    <center><div id="div_center" style="box-shadow:0px 0px 20px 3px black">
    <h1 align="center">SIGN IN</h1>
    <div>
        <asp:TextBox ID="txt_email" runat="server" placeholder=" email address" 
            TextMode="Email" 
            style="padding:10px; border-radius:6px; border:solid 1px grey; text-align:center;" Width="250px"></asp:TextBox>
        <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_email" ErrorMessage="enter email address" 
            Font-Names="Arial" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
        <asp:TextBox ID="txt_password" runat="server" placeholder=" password" 
                TextMode="Password" MaxLength="20" MinLength="8" 
                style="padding:10px; border-radius:6px; border:solid 1px grey; text-align:center;" Width="250px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txt_password" ErrorMessage="password is mandatory" 
                Font-Names="Arial" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        
        <asp:Label ID="Label1" runat="server" Font-Italic="False" Font-Names="Arial" 
            Font-Size="Small" ForeColor="Red"></asp:Label>
        
        <br />
        <div>
            <asp:Button ID="Btn_Signin" CssClass="btn_sign_css" runat="server" 
                Text="Sign in" onclick="Btn_Signin_Click" Height="35px" Width="66px" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Names="Arial" 
                Font-Size="Small" Font-Underline="True" ForeColor="#0899AC" 
                NavigateUrl="~/forg.aspx">Forgotten Password?</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" 
                Font-Size="Small" Font-Underline="True" ForeColor="#0899AC" 
                NavigateUrl="~/Registration.aspx">Register Here</asp:HyperLink>
        </div>
    </div></center>
    </form>
</body>
</html>
