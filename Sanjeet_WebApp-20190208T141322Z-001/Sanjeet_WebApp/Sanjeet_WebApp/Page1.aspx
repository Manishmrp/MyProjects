<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="Sanjeet_WebApp.Page1" EnableEventValidation="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style>
    .txtInv
    {
        float:right;
        font-size:xx-large;
        font-family:Arial;
        
    }
    
        .style1
        {
            width: 100%;
        }
    .style12
    {
        
    }
        .style13
        {
            width: 658px;
        }
        </style>
</head>
<body>

    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
    <div style="font-family:Arial; background-color:#e5e5e5; padding:10px; border-radius:10px;">
    
    <br />
    <br />
    <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" 
            Text="CHEF'S D'LITE"></asp:Label>
            <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" 
            Text="DLITE FOOD SERVICE"></asp:Label>
            <br />
            Shop no.2, Girgol Mendonza House, <br />
            Main Market, Behind Kanjur Village, <br />
            Kanjurmarg East, Mumbai, Maharashtra 400042<br />
            Contact:9867222848  Email:dlitefoodservice@gmail.com<br />
            GSTIN: 27AEGPT6232H1ZA<br />
            FSSAI: 21518064000193
        <br />
        -----------------------------------------------------------------------------------------------------------------------------------------------<br />
        <asp:Label ID="lblTitle" runat="server" Text="Bill to:"></asp:Label>
    &nbsp;<asp:Label ID="lblDisplayName" runat="server" Font-Bold="False" 
            Font-Italic="False"></asp:Label>
        <br />
        Contact:<asp:Label ID="lblDisplayContact" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp; Address:<asp:Label ID="lblDisplayAddr" runat="server" 
            Text="Label"></asp:Label><br />
            -----------------------------------------------------------------------------------------------------------------------------------------------<br />
        
    </div>
    <div style="background-color:#e5e5e5; font-family:Arial; padding:10px;">
    
        <asp:Label ID="lblContent" runat="server"></asp:Label>
    
        <br />
    
        <asp:GridView ID="gvContent" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Sr_No" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Sr_No" HeaderText="Sr No" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Sr_No">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Product_Name" HeaderText="Product Name" 
                    SortExpression="Product_Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Unit_Price" HeaderText="Unit Price" 
                    SortExpression="Unit_Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Price_To_Pay" HeaderText="Price To Pay" 
                    SortExpression="Price_To_Pay">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SanjeetDBConnectionString %>" 
            SelectCommand="SELECT * FROM [tbl_List1]"></asp:SqlDataSource>
    
        <table class="style12" border="1">
            <tr>
                <td align="right" class="style13">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="TOTAL:Rs."></asp:Label>
                    <asp:Label ID="lblShowTotal" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>
    
        <br />
        -----------------------------------------------------------------------------------------------------------------------------------------------<br />

        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="GST 2.50%"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="CGST 2.50%"></asp:Label>
        <br />
        <table class="style1">
            <tr>
                <td>
                    TOTAL BEFORE TAX:Rs.<asp:Label ID="printBefTax" runat="server" Text="Before Tax"></asp:Label></td>
                <td>
                    TOTAL TAX AMOUNT:Rs.<asp:Label ID="printTaxAmt" runat="server" 
            Text="Tax Amount"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    TOTAL AFTER TAX:Rs.<asp:Label ID="printAftTax" runat="server" 
            Text="After Tax"></asp:Label></td>
                <td>
                    DISCOUNT IN %:<asp:Label ID="printDis" runat="server" Text="discount"></asp:Label>
        %</td>
            </tr>
            <tr>
                <td>
                    DISCOUNT AMOUNT:Rs.<asp:Label ID="printDisAmt" runat="server" 
            Text="discount amount"></asp:Label></td>
                <td>
                    TOTAL AMOUNT:<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Rs."></asp:Label>
        <asp:Label ID="lblTotal" runat="server" Font-Bold="True"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    PAYMENT MODE:<asp:Label ID="printPayMode" runat="server" Text="paymode"></asp:Label></td>
                <td>
                    DATE-TIME:<asp:Label ID="lblDateTime" runat="server" Text="Date Time"></asp:Label></td>
            </tr>
        </table>
        <br />
        
        <br /> 
        <br /> 
        <br /> <br /> 
        <br /> 
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        
        <br />
        
    
    </div>
    
    </asp:Panel>
    <center>
        <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" 
            CssClass="btnBlue" />
        <asp:Button ID="btnDoc" runat="server" Text="Get Doc" onclick="btnDoc_Click" 
            CssClass="btnYellow" />
        <asp:Button ID="btnHome" runat="server" CssClass="btnPurple" 
            onclick="btnHome_Click" Text="Home" />
        <br />
        <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Names="Arial" 
            ForeColor="Green"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="lDate" runat="server" Font-Names="Arial"></asp:Label>
        <br />
        <br />
    </center>
    
    <div id="footer" style="background:teal; border-radius:20px; padding:20px; color:White; font-family:Arial;">
            <center><asp:Button ID="btnLogout" runat="server" CssClass="btnRed" Text="LOG OUT" 
                    onclick="btnLogout_Click" />
                <br />
                <br />
                PROJECT BY MP09</center>
    </div>
    </form>
    
</body>
</html>
