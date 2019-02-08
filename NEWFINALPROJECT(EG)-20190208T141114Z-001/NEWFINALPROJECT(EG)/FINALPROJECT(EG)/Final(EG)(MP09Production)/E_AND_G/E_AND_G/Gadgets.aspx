<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gadgets.aspx.cs" Inherits="E_AND_G.Gadgets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 169px;
        }
        .style3
        {
            width: 155px;
        }
        .c_name:hover
        {
            background-color:#20BEC9;
            border-radius:20px;
            color:White;
        }
        .c_name
        {
            color:#20BEC9;
            border-radius:20px;
            border:solid 2px #20BEC9;
        }
        .c_img:hover
        {
            box-shadow:0px 0px 20px 3px grey;
            border-radius:6px;
            
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <asp:Label ID="Label1" runat="server" BackColor="#0899AC" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Gadgets Repair" 
        Width="178px" CssClass="c_sthead"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <center>
    <asp:Label ID="Label2" runat="server" BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Service Center's" 
        Width="124px" CssClass="c_option"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <center>
    <asp:Label ID="Label3" runat="server" BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Shop Parts" 
        Width="124px" CssClass="c_option"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <center>
    <asp:Label ID="Label4" runat="server" BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="List" 
        Width="124px" CssClass="c_option"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    <center>
    <asp:Label ID="Label5" runat="server" BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Hyperlink" 
        Width="124px" CssClass="c_option"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <center>
    <asp:Label ID="Label6" runat="server" BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Feedback" 
        Width="124px" CssClass="c_option"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder8" runat="server">
    <center>
    <asp:Label ID="Label7" runat="server" BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Contact Us" 
        Width="124px" CssClass="c_option"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="ContentPlaceHolder9" runat="server">
    <center>
    <asp:Label ID="Label8" runat="server" BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="About" 
        Width="124px" CssClass="c_option"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="elect_head" 
        style="background-color:White; border-radius:20px; height: 478px;">
        <br />
        <div style="height: 178px;  border:solid 2px #DEE1E7; margin:10px; border-radius:20px;">
            <table class="style2">
                <tr>
                    <td class="style3">
                       <div class="c_img"><center>
                            <a href="Web_Pages/Web_Desktop.aspx">
                            <asp:Image ID="Image3" runat="server" Height="100px" 
                            ImageUrl="~/icons/computer.png" ToolTip="Desktop" /></a></center>
                     <br />
                            <center>
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Desktop.aspx" >DESKTOP</asp:HyperLink></center>
                     </div></td>
                    <td class="style3">
                            <div class="c_img"><center>
                                <a href="Web_Pages/Web_Mobile.aspx">
                                <asp:Image ID="Image4" runat="server" Height="100px" 
                            ImageUrl="~/icons/icon_mobile.png" ToolTip="Mobile" /></a></center>
                   <br />
                            <center>
                                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Mobile.aspx" >MOBILE</asp:HyperLink></center>
                     </div></td>
                    <td class="style3">
                       <div class="c_img"> <center>
                           <a href="Web_Pages/Web_Tab.aspx">
                           <asp:Image ID="Image1" runat="server" Height="100px" 
                                ImageUrl="~/icons/icon_tab.png" ToolTip="Tab" /></a></center>
                                <br />
                            <center>
                                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Tab.aspx" >TAB</asp:HyperLink></center>
                    </div> </td>
                    <td class="style3">
                        <div class="c_img"><center>
                            <a href="Web_Pages/Web_Tab.aspx">
                            <asp:Image ID="Image2" runat="server" Height="100px" 
                                ImageUrl="~/icons/icon_laptop.png" ToolTip="Laptop" /></a></center>
                                <br />
                            <center>
                                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Laptop.aspx" >LAPTOP</asp:HyperLink></center>
                     </div></td>
                </tr>
            </table>
&nbsp;</div>
        <div style="height: 178px;  border:solid 2px #DEE1E7; margin:10px; border-radius:20px;">
            <table class="style2">
                <tr>
                    <td class="style3">
                        <div class="c_img"><center>
                            <a href="Web_Pages/Web_Cooler.aspx">
                            <asp:Image ID="Image5" runat="server" Height="100px" 
                            ImageUrl="~/icons/icon_cooler.png" ToolTip="Cooler" /></a></center>
                     <br />
                            <center>
                                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Cooler.aspx" >COOLER</asp:HyperLink></center>
                     </div></td>
                    <td class="style3">
                            <div class="c_img"><center>
                               <a href="Web_Pages/Web_CPU.aspx">
                                <asp:Image ID="Image6" runat="server" Height="100px" 
                            ImageUrl="~/icons/icon_cpu.jpg" ToolTip="CPU" /></a></center>
                   <br />
                            <center>
                                <asp:HyperLink ID="HyperLink7" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_CPU.aspx" >CPU</asp:HyperLink></center>
                     </div></td>
                    <td class="style3">
                       <div class="c_img"> <center>
                            <a href="Web_Pages/Web_Printer.aspx">
                            <asp:Image ID="Image7" runat="server" Height="100px" 
                                ImageUrl="~/icons/icon_printer2.jpg" ToolTip="Printer" /></a></center><br />
                            <center>
                                <asp:HyperLink ID="HyperLink8" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    NavigateUrl="Web_Pages/Web_Printer.aspx" Font-Underline="False" >PRINTER</asp:HyperLink></center>
                    </div> </td>
                    <td class="style3">
                        <div class="c_img"><center>
                            <a href="Web_Pages/Web_Inverter.aspx">
                            <asp:Image ID="Image8" runat="server" Height="100px" 
                                ImageUrl="~/icons/inverter-icon.png" ToolTip="Inverter" /></a></center><br />
                            <center>
                                <asp:HyperLink ID="HyperLink9" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    NavigateUrl="Web_Pages/Web_Inverter.aspx" Font-Underline="False">INVERTER</asp:HyperLink></center>
                    </div> </td>
                </tr>
            </table>
&nbsp;</div>
<div>
<center> 
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="c_sthead" 
        Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" 
        Font-Underline="False" NavigateUrl="~/Electronics.aspx" Width="120px">Back</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLinknext" runat="server" CssClass="c_sthead" 
        Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" 
        Width="120px">Next</asp:HyperLink> </center>
</div>
</div>
</asp:Content>
