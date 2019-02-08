<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_HomeTheater.aspx.cs" Inherits="E_AND_G.Web_Pages.Web_HomeTheater" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 194px;
        }
        .style3
        {
            width: 253px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <asp:Label ID="Label6" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="HOME THEATER" 
            Width="178px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <center>
        <asp:Label ID="Label7" runat="server" BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" 
            Text="Service Center's" Width="124px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <center>
    <asp:Label ID="Label8" runat="server" BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Account Setting" 
        Width="124px" CssClass="c_option"></asp:Label></center>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <center>
        <asp:Label ID="Label9" runat="server" BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Site Map" 
            Width="124px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    <center>
        <asp:Label ID="Label10" runat="server" BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Help" 
            Width="124px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <center>
        <asp:Label ID="Label11" runat="server" BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Feedback" 
            Width="124px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder8" runat="server">
    <center>
        <asp:Label ID="Label12" runat="server" BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Contact Us" 
            Width="124px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="ContentPlaceHolder9" runat="server">
    <center>
        <asp:Label ID="Label13" runat="server" BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="About" 
            Width="124px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 482px; background-color:White; border-radius:20px; box-shadow:0px 0px 20px 3px black; ">
<div> 
<br />
   <center> <asp:Label ID="Label1" runat="server" Text="DESCRIPTION" 
           style="background-color:#DEE1E7; border-radius:6px; font-family:CONSOLAS; font-size:30px; padding:14px;" 
           Width="600px"></asp:Label></div></center>
           <center>
               <table style="width: 100%; padding:14px; height: 240px;">
                   <tr>
                       <td class="style2">
                           &nbsp;
                           <asp:Label ID="Label2" runat="server" Text="Brand Name" style="font-family:Consolas; 
                          color:Black "></asp:Label>
                       </td>
                       <td class="style3">
                           <center>
                               <asp:DropDownList ID="theater_dropdown" runat="server" 
                                   style="border:solid 2px black; border-radius:6px;" AutoPostBack="True" 
                                   onselectedindexchanged="theater_dropdown_SelectedIndexChanged">
                               <asp:ListItem>---choose brand---</asp:ListItem>
                               <asp:ListItem>Philips</asp:ListItem>
                               <asp:ListItem>Intex</asp:ListItem>
                               <asp:ListItem>Sony</asp:ListItem>
                               <asp:ListItem>iBall</asp:ListItem>
                               <asp:ListItem>Other</asp:ListItem>
                           </asp:DropDownList></center>
&nbsp;</td>
                       <td>
                           &nbsp;
                           <asp:Image ID="img_logo" runat="server" Height="100px" 
                               ImageUrl="~/TV_icon/blank.png" Width="100px" />
                       </td>
                   </tr>
                       <tr>
                       <td>
                       &nbsp;
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       
                       </tr>
                   
                   <tr>
                       <td class="style2">
                           <asp:Label ID="Label3" runat="server" Text="Model no./Name" style="font-family:Consolas; 
                          color:Black " placeholder="optional"></asp:Label>
 
                       </td>
                       <td class="style3">
                           <center>
                               <asp:TextBox ID="txt_theater" runat="server" 
                                   style="border:solid 2px grey; border-radius:6px;"></asp:TextBox></center>
                       </td>
                       <td>
                           &nbsp;
                       </td>
                   </tr>
                       <tr>
                       <td>
                       &nbsp;
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       
                       </tr>
                   
                   <tr>
                       <td class="style2">
                           <asp:Label ID="Label4" runat="server" Text="Warranty Status" style="font-family:Consolas; 
                          color:Black "></asp:Label>
 
                       </td>
                       <td class="style3">
                           <center>
                           <asp:RadioButton ID="ry_theater" runat="server" Font-Names="Consolas" 
                               GroupName="r1" Text="Yes" />
                           <asp:RadioButton ID="rn_theater" runat="server" Font-Names="Consolas" 
                               GroupName="r1" Text="No"  />
                       &nbsp;<asp:RadioButton ID="rd_theater" runat="server" Font-Names="Consolas" 
                               GroupName="r1"  
                               Text="Don't know" /></center>
                       </td>
                       <td>
                           &nbsp;
                       </td>
                   </tr>
                       <tr>
                       <td>
                       &nbsp;
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       
                       </tr>
                   
                   <tr>
                   <td>
                   <asp:Label ID="Label5" runat="server" Text="Describe Problem" style="font-family:Consolas; 
                          color:Black "></asp:Label>
 
                   </td>
                   <td class="style3">
                       <center>
                           <asp:TextBox ID="txt_theater_des" runat="server" TextMode="MultiLine" 
                               placeholder="Optional"></asp:TextBox></center>
                   </td>
                   <td>
                   </td>
                   </tr>
               </table>
               <br />
               <center>
                   <asp:HyperLink ID="btn_stb" runat="server" class="c_sthead" Font-Bold="True" 
                       Font-Names="Agency FB" ToolTip="Get Repaired" Font-Size="X-Large" 
                       Font-Underline="False" NavigateUrl="~/Web_Details.aspx">Get Repaired</asp:HyperLink>
               </center>
           </center>
</div>
</asp:Content>
