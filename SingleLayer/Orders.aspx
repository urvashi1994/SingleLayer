<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="SingleLayer.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2>Orders
        <br />
          <br />
      </h2>
   
<h1><span class="bagde badge-success btn-lg btn-block">Existing Order</span></h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_no" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="321px" Width="947px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="order_no" HeaderText="order_no" ReadOnly="True" SortExpression="order_no" />
        <asp:BoundField DataField="purch_amt" HeaderText="purch_amt" SortExpression="purch_amt" />
        <asp:BoundField DataField="ord_date" HeaderText="ord_date" SortExpression="ord_date" />
        <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" />
        <asp:BoundField DataField="salesman_id" HeaderText="salesman_id" SortExpression="salesman_id" />
    </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT * FROM [orders]" DeleteCommand="DELETE FROM [orders] WHERE [order_no] = @order_no" InsertCommand="INSERT INTO [orders] ([order_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (@order_no, @purch_amt, @ord_date, @customer_id, @salesman_id)" UpdateCommand="UPDATE [orders] SET [purch_amt] = @purch_amt, [ord_date] = @ord_date, [customer_id] = @customer_id, [salesman_id] = @salesman_id WHERE [order_no] = @order_no">
    <DeleteParameters>
        <asp:Parameter Name="order_no" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="order_no" Type="Int32" />
        <asp:Parameter Name="purch_amt" Type="Double" />
        <asp:Parameter DbType="Date" Name="ord_date" />
        <asp:Parameter Name="customer_id" Type="Int32" />
        <asp:Parameter Name="salesman_id" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="purch_amt" Type="Double" />
        <asp:Parameter DbType="Date" Name="ord_date" />
        <asp:Parameter Name="customer_id" Type="Int32" />
        <asp:Parameter Name="salesman_id" Type="Int32" />
        <asp:Parameter Name="order_no" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
