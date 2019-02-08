<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="E_AND_G.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Register.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        a:hover
        {
            background-color:#20BEC9;
            color:White;
            border-radius:2px;
        }
        a
        {
            color:Black;
        }
        .c_home
        {
            background-color:#20bec9;
            padding:8px;
            text-align:center;
            border-radius:6px;
            font-family:Arial;
            weight:bold;
            color:White;
        }
        .c_home:hover
        {
            background-color:#20bec9;
            padding:8px;
            text-align:center;
            border-radius:6px;
            box-shadow:0px 0px 20px 3px black;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="div_header" bgcolor="#20BEC9">
        <asp:Image ID="img_logo" runat="server" Height="100px" 
                ImageUrl="~/images/set.png" CssClass="css_logo" Width="100px" />
         <asp:Image ID="Image1" runat="server" CssClass="css_logo2" Height="100px" 
            ImageAlign="Right" ImageUrl="~/images/eg_logo (2).jpg" Width="100px" />
     <asp:Image ID="Image2" runat="server" ImageUrl="~/images/eg_heading.png" />
    </div>
    <marquee direction="left" bgcolor="#24C5CD">:: WELCOME TO E&G :: Online Repairing of Electronics and Gadgets !!</marquee>
    <center><div id="div_center">
    <h1 align="center"><asp:Label ID="rslt" runat="server" Text="REGISTRATION TO E&G"></asp:Label></h1>
        <asp:TextBox ID="fname" runat="server" placeholder=" First Name" ></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="fname" ErrorMessage="enter first name" Font-Bold="False" 
                        Font-Italic="False" Font-Names="Arial" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
    
        <br />
    
    <div>
    <asp:TextBox ID="lname" runat="server" placeholder=" Last Name"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="lname" ErrorMessage="enter last name" Font-Names="Arial" 
                        Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
    </div>
    <div>
    <asp:DropDownList ID="DropDowngender" runat="server">
                <asp:ListItem>---select gender---</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DropDowngender" ErrorMessage="choose your gender" 
                    Font-Names="Arial" Font-Size="Smaller" ForeColor="Red" 
                    InitialValue="---select gender---"></asp:RequiredFieldValidator>
        <br />
    </div>
    <div>
    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" 
                        Text="DOB"></asp:Label>
                    <br />
                    <asp:TextBox ID="dob" runat="server" placeholder="dd/mm/yy"
                        TextMode="Date" ForeColor="Black"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="dob" ErrorMessage="choose date" Font-Names="Arial" 
                        Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
    </div>
    
    <div>
    <asp:TextBox ID="email" runat="server" placeholder=" example@gmail.com" 
                        AutoPostBack="True" TextMode="Email"></asp:TextBox>
                    <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="email" ErrorMessage="enter email address" Font-Names="Arial" 
            Font-Size="Smaller" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="email" ErrorMessage="enter valid email id" 
                        Font-Names="Arial" Font-Size="Smaller" ForeColor="Red" 
                        
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
    </div>
    <div>
    <asp:TextBox ID="phnnumber" runat="server" placeholder=" Phone Number" 
                        TextMode="Phone" MaxLength="10" 
            ></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="phnnumber" ErrorMessage="enter phone number" 
                        Font-Names="Arial" Font-Size="Smaller" ForeColor="Red" 
            Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="phnnumber" ErrorMessage="Invalid contact number" 
            Font-Names="Arial" Font-Size="X-Small" ForeColor="Red" 
            ValidationExpression="^([7-9]{1})([0-9]{9})$" Display="Dynamic"></asp:RegularExpressionValidator>
        <br />
    </div>
    <div>
        <asp:DropDownList ID="question_drop" runat="server" Font-Italic="True" 
            Font-Size="Small" ForeColor="#20BEC9" >
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
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ErrorMessage="Choose Your Security Question" Font-Names="Arial" 
            Font-Size="X-Small" ForeColor="Red" ControlToValidate="question_drop" 
            InitialValue="Choose Your Security Question"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="s_question" runat="server" placeholder="Write Answer Here" MinLength="4"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="s_question" ErrorMessage="enter security answer" 
                        Font-Names="Arial" Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Smaller" 
                    ForeColor="#20BEC9" 
                    Text="* Passwords are required to be a minimum of 8 characters in length"></asp:Label>
        <br />
        <asp:TextBox ID="password" runat="server" TextMode="Password" MaxLength="20" 
                    placeholder=" Password" MinLength="8"></asp:TextBox>
                &nbsp;<br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="enter password minimum 8 characters" 
                    ControlToValidate="password" Font-Names="Arial" 
                    Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
    </div>
    <div>
    <asp:TextBox ID="confirmpass" runat="server" TextMode="Password" MaxLength="20" 
                    placeholder=" Confirm Password"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="check your password" ControlToCompare="password" 
                    ControlToValidate="confirmpass" Font-Names="Arial" Font-Size="Smaller" 
                    ForeColor="Red"></asp:CompareValidator>
        <br />
    </div>
    <div>
    <asp:Button ID="register" runat="server" Text="Register"  
                        onclick="register_Click" CssClass="btnreg" />
                    <br />
        <asp:Label ID="l_email" runat="server" Font-Names="Arial" Font-Size="Small" 
            ForeColor="Red"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Names="Arial" Font-Size="Small" ForeColor="#20BEC9" 
                        Text="Already have an account ?  "></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" 
                        Font-Size="Small" NavigateUrl="~/Sign_in.aspx">Sign_in</asp:HyperLink>
                    <br />
        <br />
                    <br />
                    <br />
                    
                    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringEG %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionStringEG.ProviderName %>" 
            SelectCommand="SELECT F_NAME, L_NAME, GENDER, DOB, EMAIL, PHONE_NO, &quot;PASSWORD&quot;, C_PASSWORD FROM REGISTER_EG"></asp:SqlDataSource>
                    
                    
    </div>
    
    </div></center>
    </div>
    </form>
</body>
</html>

