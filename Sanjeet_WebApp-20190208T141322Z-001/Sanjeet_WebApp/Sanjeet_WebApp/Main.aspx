<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Sanjeet_WebApp.Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="jquery-ui.js" type="text/javascript"></script>
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#txtStartersName').autocomplete({
            source: 'StartersHandler.ashx'
        });
        $('#txtCurryName').autocomplete({
            source: 'CurryHandler.ashx'
        });
        $('#txtSnacksName').autocomplete({
            source: 'SnacksHandler.ashx'
        });
        $('#txtRiceName').autocomplete({
            source: 'RiceHandler.ashx'
        });
        $('#txtNoodlesName').autocomplete({
            source: 'NoodlesHandler.ashx'
        });
        $('#txtDessertName').autocomplete({
            source: 'DessertHandler.ashx'
        });
        });
    </script>
    <style type="text/css">
        .style1
        {
            width: 80%;
            font-family:Arial;
            font-size:small;
            background-color:white;
            border-radius:10px;
            padding:10px;
            box-shadow:0px 0px 10px 0px grey;
        }
        .style3
        {
            width: 222px;
        }
        .style4
        {
            width: 204px;
        }
        .style5
        {
            width: 80%;
            font-family:Arial;
            font-size:small;
            background-color:white;
            box-shadow:0px 0px 10px 0px grey;
            margin-bottom:20px;
            padding:10px;
            border-radius:10px;
            margin-top:20px;
        }
        .img
        {
            border-radius:100px;
            float:left;
            border:solid 2px white;
        }
         .img1
        {
            border-radius:100px;
            border:solid 2px white;
        }
        #divGridView
        {
            background-color:#507CD1;
            padding:10px;
            font-family:Arial;;
        }
        .grid
        {
            width:100%;
            border:solid 5px white;
        }
        .txt
        {
            
            background-color:White;
            color:grey;
            padding:2px;
            border-radius:100px;
            border:solid 2px white;
        }
        .style6
        {
            width: 80%;
        }
        .style7
        {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
        <br />
        <center style="background:Teal; box-shadow:0px 0px 10px 0px grey; padding:20px; color:White; font-family:Arial; border-radius:20px; font-size:60px;">
            <asp:Image ID="Image1" runat="server" Height="60px" CssClass="img" ImageUrl="~/DliteLogo.jpg" 
                Width="60px" />
        CHEF'S D'LITE
            <asp:Image ID="Image2" runat="server" Height="60px" ImageAlign="Right" 
                ImageUrl="~/DliteLogo.jpg" Width="60px" CssClass="img1" />
        </center>
        
        <br />
        
        
        <asp:Label ID="lbltemp" runat="server" ForeColor="Red" Text="Label"></asp:Label>
        
        
        <br />
        <center><table class="style1"  cellpadding="5px">
            <tr>
                <td class="style3" align="right">
                    Starters Name:</td>
                <td class="style4">
                    <asp:TextBox ID="txtStartersName" CssClass="txtEntry" runat="server"></asp:TextBox>
                    </td>
                <td align="right" width="200">
                    Quantity:</td>
                <td align="left">
                    <asp:DropDownList ID="ddlStarters" runat="server" CssClass="ddlQty">
                    <asp:ListItem>1/2</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        
                    </asp:DropDownList>
                    <asp:Button ID="btnStarters" runat="server" onclick="btnStarters_Click"
                        Text="ADD" CssClass="btnBlue" />
                    <asp:Label ID="err_starters" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="right">
                    Curry Name:</td>
                <td class="style4">
                    <asp:TextBox ID="txtCurryName" runat="server" CssClass="txtEntry"></asp:TextBox></td>
                <td align="right" width="200">
                    Quantity:</td>
                <td align="left">
                    <asp:DropDownList ID="ddlCurry" runat="server" CssClass="ddlQty">
                    <asp:ListItem>1/2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnCurry" runat="server" Text="ADD" onclick="btnCurry_Click" 
                        CssClass="btnBlue" />
                    <asp:Label ID="err_curry" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="right">
                    Snacks Name:</td>
                <td class="style4">
                    <asp:TextBox ID="txtSnacksName" runat="server" CssClass="txtEntry"></asp:TextBox>
                </td>
                <td align="right" width="200">
                    Quantity:</td>
                <td align="left">
                    <asp:DropDownList ID="ddlSnacks" runat="server" CssClass="ddlQty">
                    <asp:ListItem>1/2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnSnacks" runat="server" Text="ADD" 
                        onclick="btnSnacks_Click" CssClass="btnBlue" />
                    <asp:Label ID="err_snacks" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="right">
                    Rice Name:</td>
                <td class="style4">
                    <asp:TextBox ID="txtRiceName" runat="server" CssClass="txtEntry"></asp:TextBox>
                </td>
                <td align="right" width="200">
                    Quantity:</td>
                <td align="left">
                    <asp:DropDownList ID="ddlRice" runat="server" CssClass="ddlQty">
                    <asp:ListItem>1/2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnRice" runat="server" Text="ADD" onclick="btnRice_Click" 
                        CssClass="btnBlue" />
                    <asp:Label ID="err_rice" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="right">
                    Noodles Name:</td>
                <td class="style4">
                    <asp:TextBox ID="txtNoodlesName" runat="server" CssClass="txtEntry"></asp:TextBox>
                </td>
                <td align="right" width="200">
                    Quantity:</td>
                <td align="left">
                    <asp:DropDownList ID="ddlNoodles" runat="server" CssClass="ddlQty">
                    <asp:ListItem>1/2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnNoodles" runat="server" Text="ADD" 
                        onclick="btnNoodles_Click" CssClass="btnBlue" />
                    <asp:Label ID="err_noodles" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="right">
                    Dessert Name:</td>
                <td class="style4">
                    <asp:TextBox ID="txtDessertName" runat="server" CssClass="txtEntry"></asp:TextBox>
                </td>
                <td align="right" width="200">
                    Quantity:</td>
                <td align="left">
                    <asp:DropDownList ID="ddlDessert" runat="server" CssClass="ddlQty">
                    <asp:ListItem>1/2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Dessert" runat="server" Text="ADD" onclick="Dessert_Click" 
                        CssClass="btnBlue" />
                    <asp:Label ID="err_dessert" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="right">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td align="right" width="200">
                    &nbsp;</td>
                <td align="left">
        <asp:button id="btnRemove" runat="server" text="BACK" 
OnClientClick="JavaScript:window.history.back(1);return false;" CssClass="btnRed"></asp:button>
                    <asp:Label ID="lblDate" runat="server" Font-Bold="True" ForeColor="Teal"></asp:Label>
                </td>
            </tr>
        </table></center>
    </div>
    <div></div>
    <br /><center>
    <div id="divGridView">
        <asp:GridView ID="GridView1" CssClass="grid" runat="server" AutoGenerateColumns="False" 
            AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" 
            DataKeyNames="Sr_No" DataSourceID="SqlDataSource2" ForeColor="#333333" 
            GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Sr_No" HeaderText="Sr No" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Sr_No" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Product_Name" HeaderText="Product Name" 
                    SortExpression="Product_Name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Unit_Price" HeaderText="Unit Price" 
                    SortExpression="Unit_Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Price_To_Pay" HeaderText="Price To Pay" 
                    SortExpression="Price_To_Pay" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SanjeetDBConnectionString %>" 
            SelectCommand="SELECT * FROM [tbl_List1]" UpdateCommand="UPDATE [tbl_List1] SET [product_name]=@product_name,[Price_To_Pay]=@price_to_pay,[Quantity]=@quantity,[Unit_Price]=@unit_price where [sr_no]=@sr_no" DeleteCommand="DELETE from [tbl_List1] where [sr_no]=@sr_no"></asp:SqlDataSource>
    </div></center>
   <center> <div style="background-color:#507CD1; color:White; padding:20px; font-family:Arial;">
    
        <asp:Label ID="Label1" runat="server" Font-Names="Consolas" 
            Text="TOTAL BEFORE TAX:"></asp:Label>
        <asp:Label ID="lblTotalBeforeTax" runat="server" Text="0" Font-Bold="False" 
            Font-Names="Consolas"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Names="Consolas" 
            Text="TOTAL TAX AMOUNT:"></asp:Label>
        <asp:Label ID="lblTax" runat="server" Text="0" Font-Names="Consolas"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="TOTAL AFTER TAX:" 
            Font-Names="Consolas"></asp:Label>
        <asp:Label ID="lblAfterTax" runat="server" Text="0" Font-Names="Consolas"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="DISCOUNT:" Font-Names="Consolas"></asp:Label>
        <asp:TextBox ID="txtDiscount" runat="server" Width="50px" Font-Names="Consolas" 
            CssClass="txt" ValidationGroup="group_discount">0.0</asp:TextBox>
        &nbsp;<asp:Label ID="Label7" runat="server" Text="in %." Font-Names="Consolas"></asp:Label>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="txtDiscount" Display="Dynamic" 
            ErrorMessage="Enter between 0.0 to 90.0" Font-Size="Small" ForeColor="Red" 
            MaximumValue="90" MinimumValue="0.0" Type="Double" 
            ValidationGroup="group_discount"></asp:RangeValidator>
        <br />
        <asp:Label ID="Label5" runat="server" Text="DISCOUNT AMOUNT:" 
            Font-Names="Consolas"></asp:Label>
        <asp:Label ID="lblDiscount" runat="server" Text="0.0" Font-Names="Consolas"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="TOTAL AMOUNT:" 
            Font-Names="Consolas"></asp:Label>
        <asp:Label ID="lblTotalAmount" runat="server" Text="0" Font-Names="Consolas"></asp:Label>
        <br />
        <asp:Button ID="btnSum"
            runat="server" CssClass="btnRed" Text="CALCULATE" onclick="btnSum_Click" 
            ValidationGroup="group_discount" />
        <br />
        <br />
        <asp:Label ID="lblContent" runat="server"></asp:Label>
   
    </div></center>
    <asp:Panel ID="PanelCust" runat="server">
    <center>
        <div>
            <center class="style5">
                CUSTOMER DETAILS<br /><br />
                <br />
                <center>
                <table class="style6">
                    <tr>
                        <td class="style7">
                <asp:TextBox ID="txtName" runat="server" CssClass="txtEntry" 
                    placeholder="Enter Customer Name" ValidationGroup="group_customerDetail"></asp:TextBox>
                            <br />
                <asp:RequiredFieldValidator ID="r_name" runat="server" 
                    ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Enter Name" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    ValidationGroup="group_customerDetail"></asp:RequiredFieldValidator>
                        </td>
                        <td align="center" class="style7">
                <asp:TextBox ID="txtContact" runat="server" CssClass="txtEntry" 
                    placeholder="Contact Number" ValidationGroup="group_customerDetail"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="r_contact" runat="server" 
                    ControlToValidate="txtContact" Display="Dynamic" ErrorMessage="Invalid Contact" 
                    Font-Names="Arial" Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="^([2-9]{1})([0-9]{9})$" 
                    ValidationGroup="group_customerDetail"></asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="rq_contact" runat="server" ControlToValidate="txtContact" 
                    Display="Dynamic" ErrorMessage="Enter Contact " Font-Names="Arial" 
                    Font-Size="Small" ForeColor="Red" ValidationGroup="group_customerDetail"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style7">
                <asp:TextBox ID="txtAddr" runat="server" CssClass="txtEntry" placeholder="Address.." 
                    ValidationGroup="group_customerDetail"></asp:TextBox>
                            <br />
                <asp:RequiredFieldValidator ID="r_addr" runat="server" 
                    ControlToValidate="txtAddr" ErrorMessage="Enter Address" Font-Names="Arial" 
                    Font-Size="Small" ForeColor="Red" ValidationGroup="group_customerDetail" 
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="center">
                            <asp:DropDownList ID="ddlPayment" runat="server" CssClass="ddlQty" 
                                ValidationGroup="group_customerDetail">
                                <asp:ListItem>---select payment mode---</asp:ListItem>
                                <asp:ListItem>Cash</asp:ListItem>
                                <asp:ListItem>Paytm</asp:ListItem>
                                <asp:ListItem>Credit/Debit Card</asp:ListItem>
                                <asp:ListItem>Online Wallet</asp:ListItem>
                                <asp:ListItem>Google Pay</asp:ListItem>
                                <asp:ListItem>Mobikwik</asp:ListItem>
                                <asp:ListItem>Phone pe</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:RequiredFieldValidator ID="rq" runat="server" 
                                ControlToValidate="ddlPayment" Display="Dynamic" 
                                ErrorMessage="Choose Payment Mode" ForeColor="Red" 
                                InitialValue="---select payment mode---" ValidationGroup="group_customerDetail"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="center">
                <asp:Button ID="btnShow" runat="server" Text="SHOW BILL" 
                    onclick="btnShow_Click" CssClass="btnPurple" 
                    ValidationGroup="group_customerDetail" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table></center>
                <br />
                </center>
        
        </div>

        <div id="divShow">
        <center><b>
            <asp:Label ID="lblBillHeading" runat="server" Text="Bill Will Be Displayed Here!"></asp:Label></b></center>
            <asp:Label ID="lbldisplay" runat="server"></asp:Label>
            <br />
            <asp:Label ID="totaltitle" runat="server" Text="Total Amount Including Taxes:"></asp:Label>
            <asp:Label ID="showTotal" runat="server"></asp:Label>
            <br />
        <center>
            <asp:Button ID="btnNext" runat="server" Text="Next" onclick="btnNext_Click" 
                ValidationGroup="group_next" CssClass="btnBlue" />
            <br />
            <asp:Label ID="l_custname" runat="server" Text="Customer Name"></asp:Label>
            </center>
        </div></center>
        </asp:Panel>
        <br />
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
