<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sanjeet_WebApp.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .loginPanel
    {
        margin-top:100px;
        height:200px;
        width:400px;
        padding:40px;
        border-radius:20px;
        background-color:Teal;
        font-family:Arial;
        color:White;
        
    }
    .txt
    {
        padding:10px;
        text-align:center;
        border-radius:10px;
        border:solid 2px white;
        
    }
    .btn
    {
        padding:10px;
        border-radius:10px;
        background:teal;
        border:solid 2px white;
        color:White;
    }
    .btn:hover
    {
        padding:10px;
        border-radius:10px;
        background:White;
        border:solid 2px white;
        color:Teal;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div><center>
    
    <div class="loginPanel">
    LOG IN
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtLog" CssClass="txt" runat="server" 
            placeholder="Enter Passcode" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtLog" ErrorMessage="enter passcode" ForeColor="Yellow"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="btnLog" runat="server" CssClass="btn" Text="LOG IN" 
            onclick="btnLog_Click" /><br />
        <asp:Label ID="errorDisplay" runat="server" Font-Bold="True" ForeColor="Yellow"></asp:Label>
    </div></center>
    </div>
    </form>
</body>
</html>
