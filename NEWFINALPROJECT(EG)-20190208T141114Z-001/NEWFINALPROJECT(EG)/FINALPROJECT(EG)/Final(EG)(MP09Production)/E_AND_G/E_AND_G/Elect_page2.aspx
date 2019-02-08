<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Elect_page2.aspx.cs" Inherits="E_AND_G.Elect_page2" %>
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
        <asp:Label ID="Label19" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="ELECTRONICS" 
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
    <div class="elect_head" 
        style="background-color:White; border-radius:20px; height: 478px;">
        <br />
        <div style="height: 178px;  border:solid 2px #DEE1E7; margin:10px; border-radius:20px;">
            <table class="style2">
                <tr>
                    <td class="style3">
                       <div class="c_img"><center>
                            <a href="Web_Pages/Web_Iron.aspx">
                            <asp:Image ID="Image3" runat="server" Height="100px" 
                            ImageUrl="~/icons/iron.png" ToolTip="Iron" /></a></center>
                     <br />
                            <center>
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Iron.aspx" >IRON</asp:HyperLink></center>
                     </div></td>
                    <td class="style3">
                            <div class="c_img"><center>
                                <a href="Web_Pages/Web_Xerox.aspx">
                                <asp:Image ID="Image4" runat="server" Height="100px" 
                            ImageUrl="~/icons/Xerox.jpg" ToolTip="Xerox" /></a></center>
                   <br />
                            <center>
                                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Xerox.aspx" >Xerox</asp:HyperLink></center>
                     </div></td>
                    <td class="style3">
                       <div class="c_img"> <center>
                           <a href="Web_Pages/Web_Lamination.aspx">
                           <asp:Image ID="Image1" runat="server" Height="100px" 
                                ImageUrl="~/icons/lamination.png" ToolTip="Lamination" /></a></center>
                                <br />
                            <center>
                                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="c_name" Width="150px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Lamination.aspx" >Lamination.Mach</asp:HyperLink></center>
                    </div> </td>
                    <td class="style3">
                        <div class="c_img"><center>
                            <a href="Web_Pages/Web_Amplifier.aspx">
                            <asp:Image ID="Image2" runat="server" Height="100px" 
                                ImageUrl="~/icons/amplifier.png" ToolTip="Amplifier" /></a></center>
                                <br />
                            <center>
                                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Amplifier.aspx" >Amplifier</asp:HyperLink></center>
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
&nbsp;</center>
</div>
</div>
</asp:Content>
