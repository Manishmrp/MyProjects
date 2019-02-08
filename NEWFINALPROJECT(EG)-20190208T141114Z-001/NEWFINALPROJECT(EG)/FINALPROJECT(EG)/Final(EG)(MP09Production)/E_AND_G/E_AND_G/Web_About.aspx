<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_About.aspx.cs" Inherits="E_AND_G.Web_About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.img_logo_c
{
    border-radius:80px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<center>
        <asp:Label ID="Label19" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="ABOUT" 
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
<div style="height: 482px; background-color:White; padding:14px; border-radius:20px; box-shadow:0px 0px 20px 3px black; ">
        <div style="border-radius:6px; height: 383px; border:solid 1px grey;">
            <br />
            <center style="box-shadow:0px 0px 20px 3px grey;">
               <asp:Image ID="Image1" runat="server" class="img_logo_c" Height="160px" 
                    ImageUrl="~/images/eg_logo (2).jpg"/><hr />
                <asp:Label ID="Label1" runat="server" Text="E_AND_G is an MP_09 Production." 
                    Font-Names="Arial" Font-Size="X-Large" ForeColor="Teal"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" ForeColor="Teal" 
                    Text="This is an concept of 'ELECTRONICS AND GADGETS REPAIRING PROGRAM'."></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Font-Names="Arial" ForeColor="Teal" 
                    Text="Mainly Initiated for resolving roaming problem in the market."></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Font-Names="Arial" ForeColor="Teal" 
                    Text="We ensure to be connected with the brands/company we are associated to fulfill end user care management, all love coming through Company's."></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Font-Names="Arial" ForeColor="Teal" 
                    Text="All we do, we provide customer care facility from their respected Companies to one place i.e Our Website."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="SPONSORED BY HCTH_UNITY" 
                    Font-Names="Arial" Font-Size="X-Large" ForeColor="Teal"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Font-Names="Arial" ForeColor="Teal" 
                    Text="All Rights Reserved @mp_09 production 2018."></asp:Label>
            </center>
        </div>
    </div>
</asp:Content>
