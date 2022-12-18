<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="medicinelist.aspx.cs" Inherits="medicinelist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <p>list of medicines</p>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical" Height="16px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="908px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="pharmistid" HeaderText="Medicine Id" SortExpression="Medicine Id" />
                <asp:BoundField DataField="medicinename" HeaderText="Medicine Name" SortExpression="Medicine Name" />
                <asp:BoundField DataField="billingdetail" HeaderText="Billing Detail" SortExpression="Billing Detail" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:depressionConnectionString %>" SelectCommand="SELECT [pharmistid], [medicinename], [billingdetail] FROM [pharmisttab]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
