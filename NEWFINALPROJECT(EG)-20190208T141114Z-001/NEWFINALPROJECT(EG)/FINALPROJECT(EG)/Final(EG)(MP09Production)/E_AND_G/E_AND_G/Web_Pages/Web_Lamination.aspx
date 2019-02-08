<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_Lamination.aspx.cs" Inherits="E_AND_G.Web_Pages.Web_Lamination" %>
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
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="LAMINATION MACHINE" 
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
   <center> <asp:Label ID="Label1" runat="server" Text="DESCRIPTION" 
           style="background-color:#DEE1E7; border-radius:6px; font-family:CONSOLAS; font-size:30px; padding:14px;" 
           Width="600px"></asp:Label></div></center>
           <center><div>
               <asp:Label ID="lbl_service" runat="server" Text="LAMINATION" Font-Bold="True" 
                   Font-Names="Consolas" Font-Size="Large"></asp:Label>
               <hr size="2" color="grey" />
               </div></center>
           <center>
               <table style="width: 100%; padding:14px; height: 240px;">
                   <tr>
                       <td class="style2">
                           &nbsp;
                           <asp:Label ID="Label2" runat="server" Text="Brand Name::" style="font-family:Consolas; 
                          color:Black "></asp:Label>
                       </td>
                       <td class="style3">
                           <center>
                               <asp:DropDownList ID="lamination_dropdown" runat="server" 
                                   style="border:solid 2px black; border-radius:6px;" AutoPostBack="True" 
                                   onselectedindexchanged="lamination_dropdown_SelectedIndexChanged">
                               <asp:ListItem>---choose brand---</asp:ListItem>
                               <asp:ListItem>VMS</asp:ListItem>
                               <asp:ListItem>Bambalio</asp:ListItem>
                               <asp:ListItem>Texet</asp:ListItem>
                               <asp:ListItem>BME</asp:ListItem>
                                   <asp:ListItem>Other</asp:ListItem>
                           </asp:DropDownList></center>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                               ControlToValidate="lamination_dropdown" ErrorMessage="Choose Brand" 
                               Font-Names="Arial" Font-Size="X-Small" ForeColor="Red" 
                               InitialValue="---choose brand---" ValidationGroup="lamination_group"></asp:RequiredFieldValidator>
&nbsp;</td>
                       <td>
                           &nbsp;
                           <asp:Image ID="img_logo" runat="server" Height="100px" 
                               ImageUrl="~/TV_icon/blank.png" Width="100px" />
                       </td>
                   </tr>
                   
                   <tr>
                       <td class="style2">
                           <asp:Label ID="Label3" runat="server" Text="Model no./Name::" style="font-family:Consolas; 
                          color:Black " placeholder="optional"></asp:Label>
 
                       </td>
                       <td class="style3">
                           <center><asp:TextBox ID="txt_lamination" runat="server" 
                                   style="border:solid 2px grey; border-radius:6px;"></asp:TextBox></center>
                       </td>
                       <td>
                           &nbsp;
                       </td>
                   </tr>
                   
                   <tr>
                       <td class="style2">
                           <asp:Label ID="Label4" runat="server" Text="Warranty Status::" style="font-family:Consolas; 
                          color:Black "></asp:Label>
 
                       </td>
                       <td class="style3">
                           <center>
                               <asp:RadioButtonList ID="lamination_rb" runat="server" 
                                   RepeatDirection="Horizontal">
                                   <asp:ListItem>Yes</asp:ListItem>
                                   <asp:ListItem>No</asp:ListItem>
                                   <asp:ListItem>Dont Know</asp:ListItem>
                               </asp:RadioButtonList>
                           </center>
                       </td>
                       <td>
                           &nbsp;
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="lamination_rb" ErrorMessage="Select Warranty Status" 
                                   Font-Names="Arial" Font-Size="X-Small" ForeColor="Red" 
                                   ValidationGroup="lamination_group"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   
                   <tr>
                   <td>
                   <asp:Label ID="Label5" runat="server" Text="Describe Problem::" style="font-family:Consolas; 
                          color:Black "></asp:Label>
 
                   </td>
                   <td class="style3">
                       <center><asp:TextBox ID="txt_lamination_des" runat="server" TextMode="MultiLine" 
                               placeholder="Optional"></asp:TextBox></center>
                   </td>
                   <td>
                       <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Consolas" 
                           Font-Size="Large" ForeColor="Teal" Text="Charge::Rs."></asp:Label>
                       <asp:Label ID="lblcharge" runat="server" Font-Bold="True" Font-Names="Consolas" 
                           Font-Size="Large" ForeColor="Teal" Text="780"></asp:Label>
                   </td>
                   </tr>
               </table>
               <br />
               <center>
                   <asp:Button ID="btn_repaired" runat="server" CssClass="c_sthead" 
                       onclick="btn_repaired_Click" Text="Get Repaired" 
                       ValidationGroup="lamination_group" />
                   <br />
                   <br />
                   <asp:Label ID="label_email" runat="server" Font-Italic="True" 
                       Font-Names="Consolas" ForeColor="#20BEC9" style="padding:5px; border:solid 1px grey; border-radius:6px;"></asp:Label>
               </center>
           </center>
</div>
</asp:Content>
