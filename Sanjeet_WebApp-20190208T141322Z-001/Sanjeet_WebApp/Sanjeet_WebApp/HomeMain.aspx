<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeMain.aspx.cs" Inherits="Sanjeet_WebApp.HomeMain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 1px solid #808000;
            font-family:Arial;
        }
        .style3
        {
            width: 376px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" border="2">
            <tr>
                <td class="style3">
                    <b>STARTERS</b></td>
                <td>
                    <b>CURRY</b></td>
                <td>
                    <b>SNACKS</b></td>
                <td>
                    <b>RICE</b></td>
                <td>
                    <b>NOODLES</b></td>
                <td>
                    <b>DESSERT</b></td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                        DataSourceID="SqlDataSource001" DataTextField="LIST" DataValueField="LIST">
                    </asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource001" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                        SelectCommand="SELECT &quot;LIST&quot;, PRICE FROM TBL_STARTERS">
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
        </table>
    
    </div>
    <asp:Button ID="btn_starters" runat="server" onclick="btn_starters_Click" 
        Text="Submit" />
    <asp:Button ID="btn_show" runat="server" onclick="btn_show_Click" Text="Show" />
    <br />
    <asp:Label ID="lblvalues" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblprice" runat="server"></asp:Label>
    <asp:DropDownList ID="ddl_qty" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="lbltotal" runat="server"></asp:Label>
    </form>
</body>
</html>
