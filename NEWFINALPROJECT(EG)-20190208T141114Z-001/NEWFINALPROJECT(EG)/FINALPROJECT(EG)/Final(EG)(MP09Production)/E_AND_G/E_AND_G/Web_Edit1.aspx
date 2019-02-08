<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_Edit1.aspx.cs" Inherits="E_AND_G.Web_Edit1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.img_logo_c
{
    border-radius:80px;
}
.btn_edit
{
    background-color:Teal;
    border:solid 1px teal;
    color:White;
    font-family:Arial;
    font-weight:bold;
    border-radius:20px 1px 1px 20px;
    padding:6px;
}
.btn_edit:hover
{
    background-color:white;
    border:solid 1px teal;
    color:teal;
    font-family:Arial;
    font-weight:bold;
    border-radius:20px 1px 1px 20px;
    box-shadow:0px 0px 20px 3px grey;
    padding:6px;
}
.btn_edit1
{
    background-color:Teal;
    border:solid 1px teal;
    color:White;
    font-family:Arial;
    margin-left:-4px;
    padding:6px;
}
.btn_edit1:hover
{
    background-color:white;
    border:solid 1px teal;
    color:teal;
    font-family:Arial;
    font-weight:bold;
    
    box-shadow:0px 0px 20px 3px grey;
    padding:6px;
}
.btn_edit2
{
    background-color:Teal;
    border:solid 1px teal;
    color:White;
    font-family:Arial;
    font-weight:bold;
    margin-left:-4px;
    border-radius:1px 20px 20px 1px;
    padding:6px;
}
.btn_edit2:hover
{
    background-color:white;
    border:solid 1px teal;
    color:teal;
    font-family:Arial;
    font-weight:bold;
    border-radius:1px 20px 20px 1px;
    box-shadow:0px 0px 20px 3px grey;
    padding:6px;
}
.editall
{
    background-color:Teal;
    border:solid 1px teal;
    color:White;
    font-family:Arial;
    font-weight:bold;
    margin-left:-4px;
    border-radius:20px 20px 20px 20px;
    padding:6px;
}
.editall:hover
{
    background-color:white;
    border:solid 1px teal;
    color:teal;
    font-family:Arial;
    font-weight:bold;
    border-radius:20px 20px 20px 20px;
    box-shadow:0px 0px 20px 3px grey;
    padding:6px;
}
.txt_c
{
    border:solid 1px white;
    border-radius:20px 1px 1px 20px;
    text-align:center;
    padding:6px;
}
.txt_c1
{
    border:solid 1px white;
    border-radius:1px;
    text-align:center;
    padding:6px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <asp:Label ID="Label19" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="ACCOUNT SETTING" 
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
    <div style="height: 482px; background-color:White; padding:14px; border-radius:20px; box-shadow:0px 0px 20px 3px black; ">
        <div style="border-radius:6px; height: 383px; border:solid 1px grey;">
            <br />
            <center style="box-shadow:0px 0px 20px 3px grey; padding:10px;"> 
                <asp:Label ID="Label1" runat="server" Text="Account Setting" 
                    Font-Names="Consolas" Font-Size="XX-Large"></asp:Label></center>
                    <br />
           <div style="box-shadow:0px 0px 20px 3px grey; padding:15px;">
           <div style="border-radius:20px 20px 1px 1px; background-color:Teal; color:White; padding:12px; font-family:Arial; font-weight:bold;">
               <asp:Label ID="Label2" runat="server" Text="EDIT DETAILS"></asp:Label></div>
               <div style="box-shadow:0px 0px 20px 3px grey; padding:5px; background-color:#fece44; padding:12px;">
               
                   <asp:Label ID="Label20" runat="server" Font-Names="Arial" Text="Name::"></asp:Label>
                   <asp:Label ID="l_name" runat="server" Font-Names="Arial"></asp:Label>
                   <br />
                   <asp:Label ID="Label21" runat="server" Font-Names="Arial" Text="Gender::"></asp:Label>
                   <asp:Label ID="l_gender" runat="server" Font-Names="Arial"></asp:Label>
                   <br />
                   <asp:Label ID="Label22" runat="server" Font-Names="Arial" Text="DOB::"></asp:Label>
                   <asp:Label ID="l_dob" runat="server" Font-Names="Arial"></asp:Label>
                   <br />
                   <asp:Label ID="Label23" runat="server" Font-Names="Arial" Text="Phone no.::"></asp:Label>
                   <asp:Label ID="l_phn" runat="server" Font-Names="Arial"></asp:Label>
                   <br />
                   <asp:Label ID="Label24" runat="server" Font-Names="Arial" 
                       Text="Security Question:"></asp:Label>
                   <asp:Label ID="l_question" runat="server" Font-Names="Arial"></asp:Label>
                   <br />
                   <asp:Label ID="Label25" runat="server" Font-Names="Arial" 
                       Text="Security Answer::"></asp:Label>
                   <asp:Label ID="l_answer" runat="server" Font-Names="Arial"></asp:Label>
                   <br />
                   &nbsp;
                   <asp:Button ID="Button7" runat="server" CssClass="btn_edit2" 
                       onclick="Button7_Click" Text="Edit All" Width="90px" />
                   <br />
               
               </div>
            <center style="box-shadow:0px 0px 20px 3px grey; padding:5px; background-color:#fece44; padding:12px;">
                
                <asp:Button ID="Button1" runat="server" Text="Name" Width="120px" 
                    CssClass="btn_edit" onclick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Gender" Width="120px" 
                    CssClass="btn_edit1" onclick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="DOB" Width="120px" 
                    CssClass="btn_edit1" onclick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" Text="Phone no." Width="120px" 
                    CssClass="btn_edit1" onclick="Button4_Click" />
                <asp:Button ID="Button6" runat="server" CssClass="btn_edit1" Text="Security" 
                    Width="120px" onclick="Button6_Click" />
                <asp:Button ID="Button5" runat="server" Text="Password" Width="120px" 
                    CssClass="btn_edit2" onclick="Button5_Click" />
                
                <br />
                
            </center></div>
        </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
        <div style="box-shadow:0px 0px 20px 3px grey; padding:15px;">
           
            <center style="box-shadow:0px 0px 20px 3px grey; padding:5px; background-color:#fece44; padding:12px;">
                
                <asp:TextBox ID="txt_fname" runat="server" placeholder="First Name" 
                    CssClass="txt_c" ValidationGroup="namegp" ></asp:TextBox>
                <asp:TextBox ID="txt_lname" runat="server" placeholder="Last Name" 
                    CssClass="txt_c1" ValidationGroup="namegp"></asp:TextBox>
                &nbsp;<asp:Button ID="btn_save" runat="server" CssClass="btn_edit2" Text="Save" 
                    Width="90px" onclick="btn_save_Click" ValidationGroup="namegp" />
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_fname" Display="Dynamic" ErrorMessage="Enter First Name" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    ValidationGroup="namegp"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_lname" Display="Dynamic" ErrorMessage="Enter Last Name" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    ValidationGroup="namegp"></asp:RequiredFieldValidator>
                
            </center></div>
        </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <div style="box-shadow:0px 0px 20px 3px grey; padding:15px;">
           
            <center style="box-shadow:0px 0px 20px 3px grey; padding:5px; background-color:#fece44; padding:12px;">
                
                <asp:DropDownList ID="ddl_gender" runat="server" CssClass="txt_c" 
                    ValidationGroup="gendergp">
                    <asp:ListItem>---select gender---</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<asp:Button ID="btn_save_gender" runat="server" CssClass="btn_edit2" 
                    onclick="btn_save_gender_Click" Text="Save" ValidationGroup="gendergp" 
                    Width="90px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddl_gender" Display="Dynamic" ErrorMessage="Choose Gender" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    InitialValue="---select gender---" ValidationGroup="gendergp"></asp:RequiredFieldValidator>
                
            </center></div>
        </div>
        </asp:View>
    <asp:View ID="View3" runat="server">
        <div style="box-shadow:0px 0px 20px 3px grey; padding:15px;">
            <center style="box-shadow:0px 0px 20px 3px grey; padding:5px; background-color:#fece44; padding:12px;">
                <asp:TextBox ID="txt_date" runat="server" CssClass="txt_c"  TextMode="Date" 
                    ValidationGroup="dategp"></asp:TextBox>
                &nbsp;<asp:Button ID="btn_save_dob" runat="server" CssClass="btn_edit2" 
                    onclick="btn_save_dob_Click" Text="Save" ValidationGroup="dategp" 
                    Width="90px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_date" Display="Dynamic" ErrorMessage="Choose date" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" InitialValue="dd/mm/yyyy" 
                    ValidationGroup="dategp"></asp:RequiredFieldValidator>
            </center>
        </div>
    </asp:View>
    <asp:View ID="View4" runat="server">
        <div style="box-shadow:0px 0px 20px 3px grey; padding:15px;">
            <center style="box-shadow:0px 0px 20px 3px grey; padding:5px; background-color:#fece44; padding:12px;">
                <asp:TextBox ID="txt_phone" runat="server" CssClass="txt_c" MaxLength="10" 
                    placeholder="Phone number" MinLength="10" ValidationGroup="phonegp"></asp:TextBox>
                &nbsp;<asp:Button ID="btn_save_phn" runat="server" CssClass="btn_edit2" 
                    onclick="btn_save_phn_Click" Text="Save" Width="90px" 
                    ValidationGroup="phonegp" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_phone" Display="Dynamic" ErrorMessage="Invalid Number" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="phonegp"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_phone" Display="Dynamic" ErrorMessage="Enter number" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    ValidationGroup="phonegp"></asp:RequiredFieldValidator>
            </center>
        </div>
    </asp:View>
    <asp:View ID="View5" runat="server">
        <div style="box-shadow:0px 0px 20px 3px grey; padding:15px;">
            <center style="box-shadow:0px 0px 20px 3px grey; padding:5px; background-color:#fece44; padding:12px;">
                <asp:DropDownList ID="ddl_qust" runat="server" CssClass="txt_c" 
                    ValidationGroup="securitygp">
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
                <asp:TextBox ID="txt_answer" runat="server" CssClass="txt_c1" 
                    Minlength="4" placeholder="Answer" ValidationGroup="securitygp"></asp:TextBox>
                &nbsp;<asp:Button ID="btn_save_secty" runat="server" CssClass="btn_edit2" 
                    onclick="btn_save_secty_Click" Text="Save" Width="90px" 
                    ValidationGroup="securitygp" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="ddl_qust" Display="Dynamic" ErrorMessage="Choose Question" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    InitialValue="Choose Your Security Question" 
                    ValidationGroup="securitygp"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txt_answer" Display="Dynamic" ErrorMessage="Enter Answer" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    ValidationGroup="securitygp"></asp:RequiredFieldValidator>
            </center>
        </div>
    </asp:View>
    <asp:View ID="View6" runat="server">
        <div style="box-shadow:0px 0px 20px 3px grey; padding:15px;">
            <center style="box-shadow:0px 0px 20px 3px grey; padding:5px; background-color:#fece44; padding:12px;">
                <asp:TextBox ID="txt_pass" runat="server" CssClass="txt_c" 
                    placeholder="New Password" MinLength="8" TextMode="Password" 
                    ValidationGroup="passwordgp"></asp:TextBox>
                &nbsp;<asp:Button ID="btn_save_pas" runat="server" CssClass="btn_edit2" 
                    onclick="btn_save_pas_Click" Text="Save" Width="90px" 
                    ValidationGroup="passwordgp" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txt_pass" Display="Dynamic" ErrorMessage="Enter Password" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    ValidationGroup="passwordgp"></asp:RequiredFieldValidator>
            </center>
        </div>
    </asp:View>
    </asp:MultiView>
    </div>
</asp:Content>
