﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_History.aspx.cs" Inherits="E_AND_G.Web_History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <asp:Label ID="Label19" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="SERVICE CENTER'S" 
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
                <hr />
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Consolas" 
                    Text="Service Applied For::"></asp:Label>
                <asp:Label ID="l_service" runat="server" Font-Names="Arial"></asp:Label>
                <br />
                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Consolas" 
                    Text="Model No./Name::"></asp:Label>
                <asp:Label ID="l_model" runat="server" Font-Names="Arial"></asp:Label>
                <br />
                <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Consolas" 
                    Text="Warranty Status::"></asp:Label>
                <asp:Label ID="l_warranty" runat="server" Font-Names="Arial"></asp:Label>
                <br />
                <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Consolas" 
                    Text="Problem::"></asp:Label>
                <asp:Label ID="l_problem" runat="server" Font-Names="Arial"></asp:Label>
                <br />
                <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Consolas" 
                    Text="Charge::"></asp:Label>
                <asp:Label ID="l_charge" runat="server" Font-Bold="True" Font-Names="Arial"></asp:Label>
                <br />
                <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Consolas" 
                    Text="Date Time::"></asp:Label>
                <asp:Label ID="l_datetime" runat="server" Font-Names="Arial"></asp:Label>
                <br />
                <br />
            </center>
            <br />
        </div>
    </div>
</asp:Content>
