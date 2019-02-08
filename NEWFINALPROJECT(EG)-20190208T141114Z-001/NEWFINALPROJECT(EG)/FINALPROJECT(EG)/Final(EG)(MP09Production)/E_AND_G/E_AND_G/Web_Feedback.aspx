<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Web_Feedback.aspx.cs" Inherits="E_AND_G.Web_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 193px;
            height: 275px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <asp:Label ID="Label19" runat="server" BackColor="#0899AC" CssClass="c_sthead" 
            Font-Bold="False" Font-Names="Agency FB" ForeColor="White" Text="FEEDBACK" 
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
    <html>
<head>
<title>
</title>
<style type="text/css">
.image_c
{
    box-shadow:0px 0px 20px 3px grey;
    
}
.send_c
{
    background-color:#20bec9;
    color:White;
    border-radius:3px;
    border:solid 1px #20bec9;
}
.send_c:hover
{
    background-color:white;
    color:#20bec9;
    border-radius:3px;
    border:solid 1px #20bec9;
}
    .style3
    {
        height: 275px;
    }
    .style4
    {
        height: 275px;
        width: 114px;
    }
</style>
</head>
<div style="height: 482px; background-color:White; border-radius:20px; box-shadow:0px 0px 20px 3px black; ">
        <div>
            <br />
            <center>
            </center>
        </div>
        <center style="height: 303px">
            <table style="width: 100%; padding:14px; height: 240px;">
                <tr>
                    <td align="left" class="style2">
                        <asp:Image ID="Image4" runat="server" Height="200px" 
                            ImageUrl="~/images/eg_logo (1).jpg" CssClass="image_c"/>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:TextBox ID="txt_feed" runat="server" Columns="60" Rows="7" 
                            TextMode="MultiLine" placeholder="Type Your Feedback Here!!" 
                            style="padding:14px; border-radius:6px; border:solid 1px grey;" 
                            Width="460px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" CssClass="send_c" Text="Submit" 
                            Height="36px" Width="76px" onclick="Button1_Click" 
                            ValidationGroup="feedback_group" />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txt_feed" ErrorMessage="Enter Something!!" 
                            Font-Names="Arial" ForeColor="Red" ValidationGroup="feedback_group"></asp:RequiredFieldValidator>
                        </td>
                </tr>
            </table>
            <center style="box-shadow:0px 0px 20px 3px grey; padding:6px;">
                <asp:Label ID="Label1" runat="server" Text="User Reviews" Font-Names="Consolas"></asp:Label></center>
            <hr size="1" />
            <div style="overflow:scroll;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                GridLines="None" Height="134px" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="FEED" SortExpression="FEED" >
                    <HeaderStyle BackColor="White" />
                    <ItemStyle BackColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DATE_TIME" 
                        SortExpression="DATE_TIME" >
                    <HeaderStyle BackColor="White" />
                    <ItemStyle BackColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="EMAIL" SortExpression="EMAIL" >
                    <HeaderStyle BackColor="White" />
                    <ItemStyle BackColor="White" />
                    </asp:BoundField>
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
            </asp:GridView></div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT FEED, EMAIL, DATE_TIME FROM FEEDBACK_EG">
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="label_display" runat="server" Font-Italic="True" 
                Font-Names="Consolas" ForeColor="#20BEC9"></asp:Label>
            <br />
        </center>
    </div>
</html>
</asp:Content>
