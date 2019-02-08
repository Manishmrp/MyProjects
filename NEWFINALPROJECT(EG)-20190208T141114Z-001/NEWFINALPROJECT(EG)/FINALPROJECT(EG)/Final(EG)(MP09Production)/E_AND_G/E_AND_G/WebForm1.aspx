<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="E_AND_G.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
    <head>
    <title>
    </title>
        <link href="form1.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        .elect_css:hover
        {
            box-shadow:0px 0px 20px 3px black;
            border-radius:6px;
            padding:15px;
        }
        </style>
        
    </head>
    <body>
    <div class="css_body">
        <div class="c_main">
        <center><div class="c_upper" style="border-style: 2; background-color: #FFFFFF;">
            <table style="width: 100%; height: 194px;">
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
                        &nbsp;
                    </td>
                    <td>
                       <center> 
                           <asp:HyperLink ID="HyperLink10" runat="server" Font-Bold="True" 
                            Font-Names="Agency FB" ForeColor="#20BEC9" 
                               CssClass="elect_css" NavigateUrl="~/Electronics.aspx">ELECTRONICS</asp:HyperLink></center>
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
                        &nbsp;<center><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                            Font-Names="Agency FB" ForeColor="#0899AC" Text="REPAIR"></asp:Label></center> 
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
           
        </div></center>
        <div class="c_lower" style="border-style: 2; background-color: #FFFFFF;">
            <table style="width: 100%; height: 274px;">
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
                        &nbsp;
                    </td>
                    <td>
                       <center> 
                           <asp:HyperLink ID="HyperLink9" runat="server" Font-Bold="True" 
                               Font-Names="Agency FB" ForeColor="#20BEC9" CssClass="elect_css" 
                               NavigateUrl="~/Web_Pages/Gadgets.aspx">GADGETS</asp:HyperLink>
                           <br />
                           <br />
&nbsp;</center>
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
                        &nbsp;<center><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Agency FB" 
                            ForeColor="#0899AC" Text="REPAIR"></asp:Label></center>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        </div>
    </div>
    </body>
    </html>
</asp:Content>

