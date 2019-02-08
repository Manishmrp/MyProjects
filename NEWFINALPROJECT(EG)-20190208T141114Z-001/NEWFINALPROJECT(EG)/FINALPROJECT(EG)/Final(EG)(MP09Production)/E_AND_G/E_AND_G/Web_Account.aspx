<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_Account.aspx.cs" Inherits="E_AND_G.Web_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 128px;
        }
        .style5
        {
        }
        .style6
        {
            width: 407px;
        }
        .btn_edit
{
    background-color:Teal;
    border:solid 1px teal;
    color:White;
    font-family:Arial;
    
    border-radius:20px 1px 1px 20px;
    padding:6px;
}
.txt_c
{
    border:solid 1px white;
    border-radius:1px 20px 20px 1px;
    text-align:center;
    padding:8px;
    margin-left:-12px;
}
        .style10
        {
            width: 407px;
            height: 26px;
        }
        .style11
        {
            width: 128px;
            height: 26px;
        }
        .style12
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <asp:Label ID="Label6" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="ACCOUNT SETTING" 
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
       <asp:Label ID="result" runat="server" Text="EDIT DETAILS" 
           style="background-color:#DEE1E7; border-radius:6px; font-family:CONSOLAS; font-size:30px; padding:14px;" 
           Width="600px"></asp:Label></div></center>
           <center>
               <table style="width: 100%; padding:14px; background-color:#fece44; height: 240px;">
                   <tr>
                       <td class="style10" align="right">
                           <asp:Label ID="Label14" runat="server" Font-Names="Arial" 
                               Text="First Name::"></asp:Label>
                           <asp:Label ID="lbl_fname" runat="server" Font-Bold="True" Font-Italic="True" 
                               Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
&nbsp;</td>
                       <td class="style11" align="left">
                           <asp:TextBox ID="txt_fname" runat="server" placeholder="First Name" 
                               Width="163px"></asp:TextBox>
                           <br />
                       </td>
                       <td align="left" class="style12">
                       &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                               ControlToValidate="txt_fname" ErrorMessage="Enter First Name" 
                               ForeColor="Red" Font-Names="Arial" Font-Size="X-Small" 
                               ValidationGroup="account_group"></asp:RequiredFieldValidator>
                           <br />
                       </td>
                   </tr>
                   <tr>
                       <td class="style10" align="right">
                           <asp:Label ID="Label29" runat="server" Font-Names="Arial" Text="Last Name::"></asp:Label>
                           <asp:Label ID="lbl_lname" runat="server" Font-Bold="True" Font-Italic="True" 
                               Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
                       </td>
                       <td class="style11" align="left">
                           <asp:TextBox ID="txt_lname" runat="server" placeholder="Last Name" 
                               Width="163px"></asp:TextBox>
                           <br />
                       </td>
                       <td align="left" class="style12">
                           &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                               ControlToValidate="txt_lname" ErrorMessage="Enter Last Name" 
                               ForeColor="Red" Font-Names="Arial" Font-Size="X-Small" 
                               ValidationGroup="account_group"></asp:RequiredFieldValidator>
                           &nbsp;</td>
                   </tr>
                       <tr>
                       <td align="right" class="style6">
                           <asp:Label ID="Label15" runat="server" Font-Names="Arial" Text="Gender::"></asp:Label>
                           <asp:Label ID="lbl_gender" runat="server" Font-Bold="True" Font-Italic="True" 
                               Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
                       </td>
                       <td align="left" class="style4">
                           <asp:DropDownList ID="gender_dropdown" runat="server" Width="165px">
                               <asp:ListItem>---select gender---</asp:ListItem>
                               <asp:ListItem>Female</asp:ListItem>
                               <asp:ListItem>Male</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td align="left">
                       &nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                               ControlToValidate="gender_dropdown" ErrorMessage="Select Gender" 
                               ForeColor="Red" InitialValue="---select gender---" Font-Names="Arial" 
                               Font-Size="X-Small" ValidationGroup="account_group"></asp:RequiredFieldValidator>
                       </td>
                       
                       </tr>
                   
                   <tr>
                       <td class="style6" align="right">
                           <asp:Label ID="Label16" runat="server" Font-Names="Arial" 
                               Text="Date of birth::" ></asp:Label>
 
                           <asp:Label ID="lbl_dob" runat="server" Font-Bold="True" Font-Italic="True" 
                               Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
 
                       </td>
                       <td class="style4" align="left">
                           <asp:TextBox ID="txt_dob" runat="server" TextMode="Date" Width="163px"></asp:TextBox>
                       </td>
                       <td align="left">
                           &nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                               ControlToValidate="txt_dob" ErrorMessage="Select DOB" ForeColor="Red" 
                               InitialValue="dd-mm-yyyy" Font-Names="Arial" Font-Size="X-Small" 
                               ValidationGroup="account_group"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                       <tr>
                       <td align="right" class="style6">
                           <asp:Label ID="Label17" runat="server" Font-Names="Arial" 
                               Text="Phone number::"></asp:Label>
                           <asp:Label ID="lbl_phone_no" runat="server" Font-Bold="True" Font-Italic="True" 
                               Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
                       </td>
                       <td align="left" class="style4">
                           <asp:TextBox ID="txt_phone" runat="server" MaxLength="10" TextMode="Phone" 
                               Width="163px"></asp:TextBox>
                       </td>
                       <td align="left">
                       &nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                               ControlToValidate="txt_phone" ErrorMessage="Enter Phone Number" 
                               ForeColor="Red" Font-Names="Arial" Font-Size="X-Small" 
                               ValidationGroup="account_group"></asp:RequiredFieldValidator>
                       </td>
                       
                       </tr>
                   
                   <tr>
                       <td class="style6" align="right">
                           <asp:Label ID="Label21" runat="server" Font-Names="Arial" 
                               Text="Security Question::"></asp:Label>
                           <asp:Label ID="lbl_s_question" runat="server" Font-Bold="True" 
                               Font-Italic="True" Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
                       </td>
                       <td class="style4" align="left">
                           <asp:DropDownList ID="s_question_drop" runat="server" Font-Italic="True" 
            Font-Size="Small" ForeColor="Teal" Width="163px" >
                           <asp:ListItem>Choose Your Security Question</asp:ListItem>
            <asp:ListItem>What is your nick name?</asp:ListItem>
            <asp:ListItem>What is your blood group?</asp:ListItem>
            <asp:ListItem>What is your pet&#39;s name?</asp:ListItem>
            <asp:ListItem>In which city were you born?</asp:ListItem>
            <asp:ListItem>In which month were your father born?</asp:ListItem>
            <asp:ListItem>Who was your chilhood hero?</asp:ListItem>
            <asp:ListItem>When you first met your gf/bf?</asp:ListItem>
            <asp:ListItem>Favourite Song?</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                       <td align="left">
                           &nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                               ControlToValidate="s_question_drop" ErrorMessage="Choose Security Question" 
                               Font-Names="Arial" Font-Size="X-Small" ForeColor="Red" 
                               InitialValue="Choose Your Security Question" 
                               ValidationGroup="account_group"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   
                   <tr>
                       <td class="style6" align="right">
                           <asp:Label ID="Label22" runat="server" Font-Names="Arial" Text="Answer::"></asp:Label>
                           <asp:Label ID="lbl_s_answer" runat="server" Font-Bold="True" Font-Italic="True" 
                               Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
                       </td>
                       <td class="style4" align="left">
                           <asp:TextBox ID="txt_s_answer" runat="server" Width="163px" MinLength="4"></asp:TextBox>
                       </td>
                       <td align="left">
                           &nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                               ControlToValidate="txt_s_answer" ErrorMessage="RequiredFieldValidator" 
                               Font-Names="Arial" Font-Size="X-Small" ForeColor="Red" 
                               ValidationGroup="account_group"></asp:RequiredFieldValidator>
                           &nbsp;</td>
                   </tr>
                       <tr>
                       <td align="right" class="style6">
                           <asp:Label ID="Label19" runat="server" Font-Names="Arial" 
                               Text="Old Password::"></asp:Label>
                       </td>
                       <td align="left" class="style4">
                           <asp:TextBox ID="txt_oldpassword" runat="server" TextMode="Password" 
                               Width="163px" MinLength="8" ></asp:TextBox>
                       </td>
                       <td align="left">
                       &nbsp;
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                               ControlToValidate="txt_oldpassword" ErrorMessage="Enter Old Password" 
                               Font-Names="Arial" Font-Size="X-Small" ForeColor="Red" 
                               ValidationGroup="account_group"></asp:RequiredFieldValidator>
                       </td>
                       
                       </tr>
                   
                   <tr>
                   <td align="right" class="style6">
                       <asp:Label ID="Label20" runat="server" Font-Names="Arial" 
                           Text="New Password::"></asp:Label>
 
                   </td>
                   <td class="style4" align="left">
                       <asp:TextBox ID="txt_newpassword" runat="server" TextMode="Password" 
                           Width="163px" MinLength="8"></asp:TextBox>
                   </td>
                   <td align="left">
                       &nbsp;
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                           ControlToValidate="txt_newpassword" ErrorMessage="Enter New Password" 
                           Font-Names="Arial" Font-Size="X-Small" ForeColor="Red" 
                           ValidationGroup="account_group"></asp:RequiredFieldValidator>
                       &nbsp;</td>
                   </tr>
                   
                   <tr>
                   <td align="center" class="style5" colspan="3">
                       <asp:Label ID="Label30" runat="server" Font-Italic="True" Font-Names="Consolas" 
                           Font-Size="Small" ForeColor="Teal" 
                           
                           Text="*Note:: If you don't want to update your password then enter your old password in new password field."></asp:Label>
 
                   </td>
                   </tr>
               </table>
               <br />
               <center>
                   <asp:Button ID="Button1" runat="server" CssClass="c_sthead" 
                       Font-Names="Consolas" Text="Save" onclick="Button1_Click" Width="97px" 
                       ValidationGroup="account_group" />
                   <br />
                   <asp:Label ID="lbl_email" runat="server" Font-Bold="True" Font-Italic="True" 
                       Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
               </center>
           </center>
</div>
</asp:Content>
