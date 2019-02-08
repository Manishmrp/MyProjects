<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_Details.aspx.cs" Inherits="E_AND_G.Web_Details" %>
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
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="DETAILS" 
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
       <a href="Web_Pages/Web_Help.aspx">  <asp:Label ID="Label10" runat="server" 
            BackColor="#20BEC9" CssClass="c_option" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="Help" 
            Width="124px" Font-Underline="False"></asp:Label></a>
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
   <center> <asp:Label ID="Label1" runat="server" Text="FILL FOLLOWING DETAILS" 
           style="background-color:#DEE1E7; border-radius:6px; font-family:CONSOLAS; font-size:30px; padding:14px;" 
           Width="600px"></asp:Label></div></center>
           <center>
               <table style="width: 100%; padding:14px; height: 240px;">
                   <tr>
                       <td class="style2" align="right">
                           &nbsp;
                           <asp:Label ID="Label2" runat="server" Text="Address ::" style="font-family:Consolas; 
                          color:Black "></asp:Label>
                       </td>
                       <td class="style3" align="left">
                           
                               <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" 
                                   placeholder="Address" MaxLength="70"></asp:TextBox>
                           
&nbsp;<br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txt_address" ErrorMessage="Enter Address" Font-Names="Arial" 
                                   Font-Size="Small" ForeColor="Red" ValidationGroup="details_group"></asp:RequiredFieldValidator>
                       </td>
                       <td>
                           &nbsp;
                           </td>
                   </tr>
                       <tr>
                       <td align="right">
                       &nbsp;
                       </td>
                       <td align="left">
                       &nbsp;
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       
                       </tr>
                   
                   <tr>
                       <td class="style2" align="right">
                           <asp:Label ID="Label3" runat="server" Text="Zip Code::" style="font-family:Consolas; 
                          color:Black " placeholder="optional"></asp:Label>
 
                       </td>
                       <td class="style3" align="left">
                           
                               <asp:TextBox ID="txt_zip" runat="server" MaxLength="6" MinLength="6"></asp:TextBox>
                           
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ControlToValidate="txt_zip" ErrorMessage="Enter Zip Code" Font-Names="Arial" 
                                   Font-Size="Small" ForeColor="Red" ValidationGroup="details_group"></asp:RequiredFieldValidator>
                           
                       </td>
                       <td>
                           &nbsp;
                       </td>
                   </tr>
                       <tr>
                       <td align="right">
                       &nbsp;
                       </td>
                       <td align="left">
                       &nbsp;
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       
                       </tr>
                   
                   <tr>
                       <td class="style2" align="right">
                           <asp:Label ID="Label4" runat="server" Text="Phone no.::" style="font-family:Consolas; 
                          color:Black "></asp:Label>
 
                       </td>
                       <td class="style3" align="left">
                           
                       &nbsp;<asp:TextBox ID="txt_phone_number" runat="server" MaxLength="10" MinLength="10"></asp:TextBox>
                          
                           <br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                               ControlToValidate="txt_phone_number" ErrorMessage="Enter Phone number" 
                               Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                               ValidationGroup="details_group"></asp:RequiredFieldValidator>
                          
                       </td>
                       <td>
                           &nbsp;
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                               ControlToValidate="txt_phone_number" ErrorMessage="Invalid Number!!" 
                               Font-Names="Arial" ForeColor="Red" 
                               ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                       </td>
                   </tr>
                       <tr>
                       <td align="right">
                       &nbsp;
                       </td>
                       <td align="left">
                       &nbsp;
                       </td>
                       <td>
                       &nbsp;
                       </td>
                       
                       </tr>
                   
                   <tr>
                   <td align="right">
                   <asp:Label ID="Label5" runat="server" Text="Landmark::" style="font-family:Consolas; 
                          color:Black "></asp:Label>
 
                   </td>
                   <td class="style3" align="left">
                       
                           <asp:TextBox ID="txt_landmark" runat="server" TextMode="MultiLine" 
                               placeholder="Optional" MaxLength="70"></asp:TextBox>
                      
                   </td>
                   <td>
                       
                           <asp:Label ID="l_date" runat="server" Font-Names="Consolas"></asp:Label>
                   </td>
                   </tr>
               </table>
               <br />
               <center>
                   <asp:Button ID="btn_proceed" runat="server" CssClass="c_sthead" Height="39px" 
                       onclick="btn_proceed_Click" Text="Proceed" Width="76px" 
                       ValidationGroup="details_group" />
                   <br />
                   <br />
                   <asp:Label ID="label_email" runat="server" Font-Italic="True" 
                       Font-Names="Consolas" ForeColor="#20BEC9" style="padding:5px; border:solid 1px grey; border-radius:6px;"></asp:Label>
               </center>
               <br />
               <center>
                   </center>
           </center>
</div>
</asp:Content>
