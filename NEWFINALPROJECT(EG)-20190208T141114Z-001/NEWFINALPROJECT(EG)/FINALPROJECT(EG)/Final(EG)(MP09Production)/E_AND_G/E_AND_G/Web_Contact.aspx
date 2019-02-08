<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_Contact.aspx.cs" Inherits="E_AND_G.Web_Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <asp:Label ID="Label19" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="CONTACT US" 
            Width="178px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <center>
       <a href="Web_Service.aspx"> <asp:Label ID="Label12" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" 
            Text="Service Center's" Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <center>
    <a href="Web_Account.aspx"><asp:Label ID="Label13" runat="server" 
            BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Account Setting" 
        Width="124px" CssClass="c_option" Font-Underline="False"></asp:Label></a></center>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <center>
       <a href="Web_SiteMap.aspx"> <asp:Label ID="Label14" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="SiteMap" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    <center>
      <a href="Web_Pages/Web_Help.aspx">  <asp:Label ID="Label15" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Help" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <center>
        <a href="Web_Feedback.aspx"><asp:Label ID="Label16" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Feedback" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder8" runat="server">
    <center>
       <a href="Web_Contact.aspx"> <asp:Label ID="Label17" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Contact Us" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="ContentPlaceHolder9" runat="server">
    <center>
      <a href="Web_About.aspx">  <asp:Label ID="Label18" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="About" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
<head>
<title></title>
<style type="text/css">
    .send_c
{
    background-color:#20bec9;
    color:White;
    border-radius:3px;
    border:solid 1px #20bec9;
}
.send_c:hover
{
    background-color:white;
    color:#20bec9;
    border-radius:3px;
    border:solid 1px #20bec9;
}
</style>
</head>
<div style="height: 482px; background-color:White; border-radius:20px; box-shadow:0px 0px 20px 3px black; ">
        <div>
            <br />
            <center>
            </center>
        </div>
        <center style="box-shadow:0px 0px 20px 3px grey">
            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Arial" 
                Font-Size="X-Large" Text="CONTACT US"></asp:Label>
            <br />
        </center>
        <div><center>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtdescription" ErrorMessage="Enter Something" 
                Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="contact_group"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Enter Email" Font-Names="Arial" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="contact_group"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Name" Font-Names="Arial" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="contact_group"></asp:RequiredFieldValidator>
            </center></div>
        <div><center>
            <br />
            <asp:Label ID="Label2" runat="server" 
                Text="We can''t solve your problem if you don't tell us about it!" 
                Font-Names="Arial" ForeColor="Teal"></asp:Label></center>
        </div>
        <div><center>
            <asp:TextBox ID="txtname" runat="server" 
                style="padding:14px; border-radius:6px; border:solid 1px grey;" Width="460px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtemail" runat="server" 
                style="padding:14px; border-radius:6px; border:solid 1px grey;" Width="460px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtdescription" runat="server" 
                style="padding:14px; border-radius:6px; border:solid 1px grey;" Rows="10" 
                TextMode="MultiLine" Width="460px" placeholder="Type here..."></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Send" CssClass="send_c" 
                Height="37px" Width="67px" onclick="Button1_Click" 
                ValidationGroup="contact_group"/></center>
        </div>
    </div>
</html>
</asp:Content>
