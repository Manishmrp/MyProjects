<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_SiteMap.aspx.cs" Inherits="E_AND_G.Web_SiteMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            width: 428px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<center>
        <asp:Label ID="Label19" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="SITEMAP" 
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
    <div style="height: 482px; background-color:White; border-radius:20px; box-shadow:0px 0px 20px 3px black; ">
        <div>
            <br />
            <center>
            </center>
        </div>
        <center>
            <table style="width: 100%; padding:14px; height: 240px;">
                <tr>
                    <td align="left" class="style3">
                        <asp:TreeView ID="TreeView1" runat="server" Font-Names="Arial" 
                            Font-Size="Small">
                            <Nodes>
                                <asp:TreeNode NavigateUrl="~/Electronics.aspx" Text="Electronics" 
                                    Value="New Node">
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_AC.aspx" Text="AC" Value="New Node">
                                    </asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Blender.aspx" Text="Blender" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Cooler.aspx" Text="Cooler" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Heater.aspx" Text="Heater" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Cooker.aspx" Text="Induction Cooker" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Inverter.aspx" Text="Inverter" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Iron.aspx" Text="Iron" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Xerox.aspx" Text="Xerox Machine" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Lamination.aspx" Text="Lamination " 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Amplifier.aspx" Text="Amplifier" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Oven.aspx" Text="Oven" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_TV.aspx" Text="TV" Value="New Node">
                                    </asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Machine.aspx" Text="Washing Machine" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Refrigerator.aspx" 
                                        Text="Refrigerator" Value="Refrigerator"></asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                        </asp:TreeView>
                    </td>
                    <td>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:TreeView ID="TreeView2" runat="server" Font-Names="Arial" 
                            Font-Size="Small">
                            <Nodes>
                                <asp:TreeNode NavigateUrl="~/Web_Pages/Gadgets.aspx" Text="Gadgets" 
                                    Value="New Node">
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Mobile.aspx" Text="Mobile" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Printer.aspx" Text="Printer" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Tab.aspx" Text="TAB" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Desktop.aspx" Text="Camcorder" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Laptop.aspx" Text="Laptop" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Camera.aspx" Text="Camera" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Projector.aspx" Text="Projector" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_CCTV.aspx" Text="CCTV" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Monitor.aspx" Text="Monitor" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Router.aspx" Text="Router" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_Bluetooth.aspx" 
                                        Text="Bluetooth Speaker" Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_STB.aspx" Text="Set-Top Box" 
                                        Value="New Node"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Web_Pages/Web_CPU.aspx" Text="CPU" Value="CPU">
                                    </asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                        </asp:TreeView>
                    </td>
                </tr>
            </table>
            <asp:Label ID="label_email" runat="server" Font-Italic="True" 
                Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
            <br />
        </center>
    </div>
</asp:Content>
