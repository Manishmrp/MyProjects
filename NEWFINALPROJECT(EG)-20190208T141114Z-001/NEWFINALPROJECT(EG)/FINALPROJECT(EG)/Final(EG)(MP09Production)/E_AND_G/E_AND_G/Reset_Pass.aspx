<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reset_Pass.aspx.cs" Inherits="E_AND_G.Reset_Pass" %>

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
        <asp:HyperLink ID="HyperLink2" runat="server" class="c_home" NavigateUrl="~/WebForm1.aspx">HOME</asp:HyperLink></center></div>
    <div></div>

    <center><div id="div_center" style="box-shadow:0px 0px 20px 3px black">
    <h1 align="center">RESET PASSWORD</h1>
    <div>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Arial" ForeColor="#20BEC9" Text="Question"></asp:Label>
        <br />
        <asp:TextBox ID="txt_answer" runat="server" placeholder="Enter Answer"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Check" onclick="Button2_Click" />
        <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial" 
                ForeColor="#20BEC9"></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="txt_pass" runat="server" placeholder="New Password" 
            TextMode="Password"></asp:TextBox>
        <br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txt_pass" ErrorMessage="enter password" 
            Font-Names="Arial" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
        <asp:TextBox ID="txt_cpass" runat="server" placeholder="Confirm Password" 
                TextMode="Password" MaxLength="20" MinLength="8" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txt_cpass" ErrorMessage="password is mandatory" 
                Font-Names="Arial" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        
        <br />
        <div>
            <asp:Button ID="Btn_Reset" CssClass="btn_sign_css" runat="server" 
                Text="Reset" />
            <br />
            <br />
        </div>
    </div></center>
    </form>
</body>
</html>
