<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_Report.aspx.cs" Inherits="E_AND_G.Web_Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 194px;
        }
        .style3
        {
            width: 616px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <asp:Label ID="Label6" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="REPORT" 
            Width="178px"></asp:Label>
    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <center>
       <a href="Web_Service.aspx"> <asp:Label ID="Label7" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" 
            Text="Service Center's" Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <center>
    <a href="Web_Account.aspx"><asp:Label ID="Label8" runat="server" 
            BackColor="#20BEC9" Font-Bold="False" 
        Font-Names="Agency FB" ForeColor="White" Text="Account Setting" 
        Width="124px" CssClass="c_option" Font-Underline="False"></asp:Label></a></center>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <center>
       <a href="Web_SiteMap.aspx"> <asp:Label ID="Label9" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="SiteMap" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" runat="server">
    <center>
      <a href="Web_Pages/Web_Help.aspx">  <asp:Label ID="Label10" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Help" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder7" runat="server">
    <center>
        <a href="Web_Feedback.aspx"><asp:Label ID="Label11" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Feedback" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder8" runat="server">
    <center>
       <a href="Web_Contact.aspx"> <asp:Label ID="Label12" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Contact Us" 
            Width="124px" Font-Underline="False"></asp:Label></a>
    </center>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="ContentPlaceHolder9" runat="server">
    <center>
      <a href="Web_About.aspx">  <asp:Label ID="Label13" runat="server" 
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
       <asp:Label ID="Label1" runat="server" Text="Your Report" 
           style="background-color:#DEE1E7; border-radius:6px; font-family:CONSOLAS; font-size:30px; padding:14px;" 
           Width="600px"></asp:Label></div></center>
           <center>
               <table style="width: 100%; padding:14px; height: 240px;">
                   <tr>
                       <td class="style2" align="right">
                           &nbsp;
                           <asp:Label ID="Label2" runat="server" Text="Name::" style="font-family:Consolas; 
                          color:Black "></asp:Label>
                       </td>
                       <td class="style3" align="left">
                           
                               <asp:Label ID="f_name" runat="server" Font-Italic="True" Font-Names="Arial" 
                                   ForeColor="Teal"></asp:Label>
                               <asp:Label ID="l_name" runat="server" Font-Italic="True" Font-Names="Arial" 
                                   ForeColor="Teal"></asp:Label>
                               <br />
                       </td>
                       <td>
                           &nbsp;
                           </td>
                   </tr>
                       <tr>
                       <td align="right">
                       &nbsp;
                           <asp:Label ID="Label14" runat="server" Font-Names="Consolas" Text="Email::"></asp:Label>
                       </td>
                       <td align="left" class="style3">
                           <asp:Label ID="l_email" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal"></asp:Label>
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       
                       </tr>
                   
                   <tr>
                       <td class="style2" align="right">
                           <asp:Label ID="Label3" runat="server" Text="Phone number::" style="font-family:Consolas; 
                          color:Black " placeholder="optional"></asp:Label>
 
                       </td>
                       <td class="style3" align="left">
                           
                               <asp:Label ID="l_phonenumber" runat="server" Font-Italic="True" 
                                   Font-Names="Arial" ForeColor="Teal"></asp:Label>
                           
                       </td>
                       <td>
                           &nbsp;
                       </td>
                   </tr>
                       <tr>
                       <td align="right">
                       &nbsp;
                           <asp:Label ID="Label15" runat="server" Font-Names="Consolas" Text="Address::"></asp:Label>
                       </td>
                       <td align="left" class="style3">
                           <asp:Label ID="l_address" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal"></asp:Label>
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       
                       </tr>
                   
                   <tr>
                       <td class="style2" align="right">
                           <asp:Label ID="Label4" runat="server" Text="Landmark::" style="font-family:Consolas; 
                          color:Black "></asp:Label>
 
                       </td>
                       <td class="style3" align="left">
                           
                           <asp:Label ID="l_landmark" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal"></asp:Label>
                          
                       &nbsp;<asp:Label ID="l_zip" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal"></asp:Label>
                          
                       </td>
                       <td>
                           &nbsp;
                       </td>
                   </tr>
                       <tr>
                       <td align="right">
                       &nbsp;
                           <asp:Label ID="Label16" runat="server" Font-Names="Consolas" 
                               Text="Service Applied::"></asp:Label>
                       </td>
                       <td align="left" class="style3">
                           <asp:Label ID="l_service" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal"></asp:Label>
                           ,<asp:Label ID="Label17" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal" Text="Brand::"></asp:Label>
                           &nbsp;<asp:Label ID="lbrandname" runat="server" Font-Italic="True" 
                               Font-Names="Arial" ForeColor="Teal"></asp:Label>
                           ,
                           <asp:Label ID="Label18" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal" Text="Model No/Name::"></asp:Label>
                           <asp:Label ID="lblmodel" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal"></asp:Label>
                           ,
                           <asp:Label ID="Label19" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal" Text=" Warranty Status:: "></asp:Label>
                           <asp:Label ID="warranty" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal"></asp:Label>
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       
                       </tr>
                   
                   <tr>
                   <td align="right">
                   <asp:Label ID="Label5" runat="server" Text="Described Problem::" style="font-family:Consolas; 
                          color:Black "></asp:Label>
 
                   </td>
                   <td class="style3" align="left">
                       
                           <asp:Label ID="l_problem" runat="server" Font-Italic="True" Font-Names="Arial" 
                               ForeColor="Teal"></asp:Label>
                      
                   &nbsp;</td>
                   <td>
                   </td>
                   </tr>
                   
                   <tr>
                   <td align="right">
                       <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Consolas" 
                           Text="Charge::"></asp:Label>
 
                   </td>
                   <td class="style3" align="left">
                       
                           <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Consolas" 
                               ForeColor="Teal" Text="Rs."></asp:Label>
                       
                           <asp:Label ID="l_charge" runat="server" Font-Bold="True" Font-Names="Arial" 
                               ForeColor="#FF6600"></asp:Label>
                       </td>
                   <td>
                       &nbsp;</td>
                   </tr>
                   
                   <tr>
                   <td align="right">
                       <asp:Label ID="Label21" runat="server" Font-Names="Consolas" Text="Date::"></asp:Label>
 
                   </td>
                   <td class="style3" align="left">
                       
                           <asp:Label ID="l_date" runat="server" Font-Names="Consolas"></asp:Label>
                       </td>
                   <td>
                       &nbsp;</td>
                   </tr>
               </table>
               <br />
               <center>
                   <asp:Button ID="Button1" runat="server" CssClass="c_sthead" Font-Bold="True" 
                       Font-Italic="False" Font-Names="Consolas" onclick="Button1_Click" 
                       Text="Get Report" />
               </center>
               <br />
               <center>
                   <br />
                   <asp:Label ID="lbl_display" runat="server" Font-Bold="True" Font-Italic="True" 
                       Font-Names="Consolas" ForeColor="#20BEC9" style="padding:5px; border:solid 1px grey; border-radius:6px;"></asp:Label>
                   </center>
           </center>
</div>
</asp:Content>
