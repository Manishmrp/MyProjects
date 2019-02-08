<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gadgets.aspx.cs" Inherits="E_AND_G.Web_Pages.Gadgets" %>
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
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="GADGETS" 
            Width="178px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <center>
       <a href="../Web_Service.aspx"> <asp:Label ID="Label12" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" 
            Text="Service Center's" Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <center>
    <a href="../Web_Account.aspx"><asp:Label ID="Label13" runat="server" 
            BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Account Setting" 
        Width="124px" CssClass="c_option" Font-Underline="False"></asp:Label></a></center>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <center>
       <a href="../Web_SiteMap.aspx"> <asp:Label ID="Label6" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="SiteMap" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    <center>
      <a href="Web_Help.aspx">  <asp:Label ID="Label15" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Help" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <center>
        <a href="../Web_Feedback.aspx"><asp:Label ID="Label16" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Feedback" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder8" runat="server">
    <center>
       <a href="../Web_Contact.aspx"> <asp:Label ID="Label17" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Contact Us" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="ContentPlaceHolder9" runat="server">
    <center>
      <a href="../Web_About.aspx">  <asp:Label ID="Label18" runat="server" 
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
                            <a href="Web_Desktop.aspx">
                            <asp:Image ID="Image3" runat="server" Height="100px" 
                            ImageUrl="~/icons/camcorder.jpg" ToolTip="Desktop" /></a></center>
                     <br />
                            <center>
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Desktop.aspx" >CAMCORDER</asp:HyperLink></center>
                     </div></td>
                    <td class="style3">
                            <div class="c_img"><center>
                                <a href="Web_Mobile.aspx">
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
                           <a href="Web_Tab.aspx">
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
                            <a href="Web_Tab.aspx">
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
                            <a href="Web_Bluetooth.aspx">
                            <asp:Image ID="Image5" runat="server" Height="100px" 
                            ImageUrl="~/icons/bluetooth.png" ToolTip="Bluetooth Speaker" /></a></center>
                     <br />
                            <center>
                                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="c_name" Width="160px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Bluetooth.aspx" >BLUETOOTH SPEAKER</asp:HyperLink></center>
                     </div></td>
                    <td class="style3">
                            <div class="c_img"><center>
                               <a href="Web_Camera.aspx">
                                <asp:Image ID="Image6" runat="server" Height="100px" 
                            ImageUrl="~/icons/camera.png" ToolTip="Camera" /></a></center>
                   <br />
                            <center>
                                <asp:HyperLink ID="HyperLink7" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    Font-Underline="False" NavigateUrl="~/Web_Pages/Web_Camera.aspx" 
                                    ToolTip="Camera" >CAMERA</asp:HyperLink></center>
                     </div></td>
                    <td class="style3">
                       <div class="c_img"> <center>
                            <a href="Web_CCTV.aspx">
                            <asp:Image ID="Image7" runat="server" Height="100px" 
                                ImageUrl="~/icons/cctv.png" ToolTip="CCTV" /></a></center><br />
                            <center>
                                <asp:HyperLink ID="HyperLink8" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                     Font-Underline="False" 
                                    ToolTip="CCTV" NavigateUrl="~/Web_Pages/Web_CCTV.aspx" >CCTV</asp:HyperLink></center>
                    </div> </td>
                    <td class="style3">
                        <div class="c_img"><center>
                            <a href="Web_Monitor.aspx">
                            <asp:Image ID="Image8" runat="server" Height="100px" 
                                ImageUrl="~/icons/monitor.png" ToolTip="Monitor" /></a></center><br />
                            <center>
                                <asp:HyperLink ID="HyperLink9" runat="server" CssClass="c_name" Width="90px" 
                                    Font-Bold="True" Font-Names="Consolas" Font-Size="Medium" 
                                    NavigateUrl="~/Web_Pages/Web_Monitor.aspx" Font-Underline="False">MONITOR</asp:HyperLink></center>
                    </div> </td>
                </tr>
            </table>
&nbsp;</div>
<div>
<center> 
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="c_sthead" 
        Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" 
        Font-Underline="False" NavigateUrl="~/WebForm1.aspx" Width="120px">Back</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLinknext" runat="server" CssClass="c_sthead" 
        Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" 
        Width="120px" Font-Underline="False" NavigateUrl="~/Gadget_Page2.aspx">Next</asp:HyperLink> </center>
</div>
</div>
</asp:Content>
