<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_Help.aspx.cs" Inherits="E_AND_G.Web_Pages.Web_Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 384px;
            height: 248px;
        }
        .style3
        {
            width: 256px;
            height: 248px;
        }
        .b1
        {
            padding:5px;
            border-radius:6px 1px 1px 6px;
            border:solid 1px #20bec9;
            width:30px;
            background-color:#20bec9;
            color:White;
        }
        .b1:hover
        {
            padding:5px;
            border-radius:6px 1px 1px 6px;
            border:solid 1px #20bec9;
            width:30px;
            background-color:white;
            color:#20bec9;
        }
        .b2
        {
            margin-left:-4px;
            padding:5px;
            border-radius:1px 1px 1px 1px;
            border:solid 1px #20bec9;
            width:30px;
            background-color:#20bec9;
            color:White;
        }
        .b2:hover
        {
            padding:5px;
            border-radius:1px 1px 1px 1px;
            border:solid 1px #20bec9;
            width:30px;
            background-color:white;
            color:#20bec9;
        }
        .b3
        {
            margin-left:-4px;
            padding:5px;
            border-radius:1px 6px 6px 1px;
            border:solid 1px #20bec9;
            width:30px;
            background-color:#20bec9;
            color:White;
        }
        .b3:hover
        {
            padding:5px;
            border-radius:1px 6px 6px 1px;
            border:solid 1px #20bec9;
            width:30px;
            background-color:white;
            color:#20bec9;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <asp:Label ID="Label6" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="HELP" 
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
       <a href="../Web_SiteMap.aspx"> <asp:Label ID="Label7" runat="server" 
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
    <div style="height: 482px; background-color:White; border-radius:20px; box-shadow:0px 0px 20px 3px black; ">
<div> 
<br />
   <center> 
           <asp:Label ID="Label1" runat="server" Text="HELP" 
           style="background-color:#DEE1E7; border-radius:6px; font-family:CONSOLAS; font-size:30px; padding:14px;" 
           Width="600px"></asp:Label> 
           </center>
           <hr size="1" />
           <div>
           <div><center>
                       <asp:Button ID="Button2" runat="server" onclick="Button1_Click" 
                           Text="1" CssClass="b1" />
                   <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="2" 
                           CssClass="b2" />
               <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="3" 
                           CssClass="b2" />
               <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="4" 
                           CssClass="b3" />
               </center></div>
           <center>
           
               <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                   <asp:View ID="View1" runat="server">
                   <table>
                   <tr>
                   <td class="style3">
                       <asp:Image ID="Image4" runat="server" Height="294px" 
                           ImageUrl="~/Help/Capture.PNG" Width="517px" />
                   </td>
                   <td align="left" class="style2">
                       <asp:Label ID="Label14" runat="server" Font-Names="Arial" ForeColor="Teal" 
                           Text="Choose Your Required Option. eg.We are Choosing Gadgets Section"></asp:Label>
                       <br />
                       <br />
                   </td>
                   </tr>
                   </table>
                   </asp:View>
                   <asp:View ID="View2" runat="server">
                   <table>
                   <tr>
                   <td class="style3">
                       <asp:Image ID="Image1" runat="server" Height="294px" 
                           ImageUrl="~/Help/Capture2.PNG" Width="517px" />
                   </td>
                   <td align="left" class="style2">
                       <asp:Label ID="Label2" runat="server" Font-Names="Arial" ForeColor="Teal" 
                           
                           Text="Choose Your Required Gadget To Be Repair. eg.We are Choosing Gadget Mobile."></asp:Label>
                       <br />
                       <br />
                   </td>
                   </tr>
                   </table>
                   </asp:View>
                   <asp:View ID="View3" runat="server">
                   <table>
                   <tr>
                   <td class="style3">
                       <asp:Image ID="Image2" runat="server" Height="294px" 
                           ImageUrl="~/Help/Capture3.PNG" Width="517px" />
                   </td>
                   <td align="left" class="style2">
                       <asp:Label ID="Label3" runat="server" Font-Names="Arial" ForeColor="Teal" 
                           
                           
                           Text="Fill Following Details Related to Gadget/Electronics. eg.: Here we are providing details of our gadget ."></asp:Label>
                       <br />
                       <br />
                   </td>
                   </tr>
                   </table>
                   </asp:View>
                   <asp:View ID="View4" runat="server">
                   <table>
                   <tr>
                   <td class="style3">
                       <asp:Image ID="Image3" runat="server" Height="294px" 
                           ImageUrl="~/Help/Capture4.PNG" Width="517px" />
                   </td>
                   <td align="left" class="style2">
                       <asp:Label ID="Label4" runat="server" Font-Names="Arial" ForeColor="Teal" 
                           
                           Text="Fill Following Details such as address, landmark etc."></asp:Label>
                       <br />
                       <br />
                   </td>
                   </tr>
                   </table>
                   </asp:View>
                   <asp:View ID="View5" runat="server">
                   <table>
                   <tr>
                   <td class="style3">
                       <asp:Image ID="Image5" runat="server" Height="294px" 
                           ImageUrl="~/Help/Capture5.PNG" Width="517px" />
                   </td>
                   <td align="left" class="style2">
                       <asp:Label ID="Label5" runat="server" Font-Names="Arial" ForeColor="Teal" 
                           
                           Text="Click On Get Report Button To Download Your Report."></asp:Label>
                       <br />
                       <br />
                   </td>
                   </tr>
                   </table>
                   </asp:View>
               </asp:MultiView>
           
           </center>
           </div>

</div>
</div>
</asp:Content>
