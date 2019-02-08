﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Sanjeet_WebApp.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    
    .divMain  
    {
        padding:20px;
        font-family:Arial;
        font-size:small;
    }
        .style1
        {
            width: 100%;
            border:Solid 2px white;
        }
        .textbox
        {
            padding:5px;
            text-align:center;
        }
        .style2
        {
            height: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="divMain">
    
    </div>
    
        <center><table class="style1" border="2">
            <tr>
                <td align="center" style="background:#4A3C8C">
                    <asp:GridView ID="gvStarters" runat="server" AutoGenerateColumns="False" 
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" 
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        DataSourceID="SqlDataSourceAdmin" GridLines="Horizontal" Width="100%">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="List" HeaderText="List" SortExpression="List" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceAdmin" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SanjeetDBConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_STARTERS]" DeleteCommand="DELETE from [tbl_STARTERS] where [list]=@list" UpdateCommand="UPDATE [tbl_STARTERS] SET [list]=@list,[price]=@price where [list]=@list"></asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td align="center" style="background:Tan">
                    <asp:GridView ID="gvCurry" runat="server" AutoGenerateColumns="False" 
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" DataSourceID="SqlDataSourceCurry" ForeColor="Black" 
                        GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="CURRY_NAME" HeaderText="CURRY_NAME" 
                                SortExpression="CURRY_NAME" />
                            <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceCurry" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SanjeetDBConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_CURRY]" DeleteCommand="DELETE from [tbl_CURRY] where [curry_name]=@curry_name" UpdateCommand="UPDATE [tbl_CURRY] SET [curry_name]=@curry_name,[price]=@price where [curry_name]=@curry_name"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center" style="background:#1C5E55;">
                    <asp:GridView ID="gvSnacks" runat="server" AutoGenerateColumns="False" 
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" 
                        DataSourceID="SqlDataSourceSnacks" ForeColor="#333333" GridLines="None" 
                        Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="SNACKS_NAME" HeaderText="SNACKS_NAME" 
                                SortExpression="SNACKS_NAME" />
                            <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceSnacks" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SanjeetDBConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_SNACKS]" DeleteCommand="DELETE from [tbl_SNACKS] where [snacks_name]=@snacks_name" UpdateCommand="UPDATE [tbl_SNACKS] SET [snacks_name]=@snacks_name,[price]=@price where [snacks_name]=@snacks_name"></asp:SqlDataSource>
                </td>
                <td align="center" style="background:Black;">
                    <asp:GridView ID="gvRice" runat="server" AutoGenerateColumns="False" 
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                        DataSourceID="SqlDataSourceRice" ForeColor="Black" GridLines="Vertical" 
                        Width="100%">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="RICE_NAME" HeaderText="RICE_NAME" 
                                SortExpression="RICE_NAME" />
                            <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceRice" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SanjeetDBConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_RICE]" DeleteCommand="DELETE from [tbl_RICE] where [rice_name]=@rice_name" UpdateCommand="UPDATE [tbl_RICE] SET [rice_name]=@rice_name,[price]=@price where [rice_name]=@rice_name"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center" style="background:#333333;">
                    <asp:GridView ID="gvNoodles" runat="server" AutoGenerateColumns="False" 
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        DataSourceID="SqlDataSourceNoodles" ForeColor="Black" GridLines="Horizontal" 
                        Width="100%">
                        <Columns>
                            <asp:BoundField DataField="NOODLES_NAME" HeaderText="NOODLES_NAME" 
                                SortExpression="NOODLES_NAME" />
                            <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceNoodles" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SanjeetDBConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_NOODLES]" DeleteCommand="DELETE from [tbl_NOODLES] where [noodles_name]=@noodles_name" UpdateCommand="UPDATE [tbl_NOODLES] SET [noodles_name]=@noodles_name,[price]=@price where [noodles_name]=@noodles_name"></asp:SqlDataSource>
                </td>
                <td align="center" style="background:#6B696B;">
                    <asp:GridView ID="gvDessert" runat="server" AutoGenerateColumns="False" 
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" 
                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        DataSourceID="SqlDataSourceDessert" ForeColor="Black" GridLines="Vertical" 
                        Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="DESSERT_NAME" HeaderText="DESSERT_NAME" 
                                SortExpression="DESSERT_NAME" />
                            <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceDessert" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SanjeetDBConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_DESSERT]" DeleteCommand="DELETE from [tbl_DESSERT] where [dessert_name]=@dessert_name" UpdateCommand="UPDATE [tbl_DESSERT] SET [dessert_name]=@dessert_name,[price]=@price where [dessert_name]=@dessert_name"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Arial" Text="INSERT"></asp:Label>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="grp">
                        <asp:ListItem>---select table name---</asp:ListItem>
                        <asp:ListItem>tbl_STARTERS</asp:ListItem>
                        <asp:ListItem>tbl_CURRY</asp:ListItem>
                        <asp:ListItem>tbl_SNACKS</asp:ListItem>
                        <asp:ListItem>tbl_RICE</asp:ListItem>
                        <asp:ListItem>tbl_NOODLES</asp:ListItem>
                        <asp:ListItem>tbl_DESSERT</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Choose Table Name" 
                        ForeColor="Red" InitialValue="---select table name---" 
                        ValidationGroup="grp"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtName" runat="server" CssClass="textbox" 
                        placeholder="Enter Name" Width="300px" ValidationGroup="grp"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Enter Name" ForeColor="Red" 
                        ValidationGroup="grp"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtPrice" placeholder="Enter Price" runat="server" 
                        CssClass="textbox" TextMode="Number" Width="300px" ValidationGroup="grp"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPrice" ErrorMessage="Enter Price" ForeColor="Red" 
                        ValidationGroup="grp"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnAdd" runat="server" CssClass="textbox" Text="ADD" 
                        ValidationGroup="grp" onclick="btnAdd_Click" />
                    <br />
                </td>
            </tr>
        </table>
    </center>
    </form>
</body>
</html>
