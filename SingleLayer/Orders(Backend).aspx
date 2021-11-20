<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders(Backend).aspx.cs" Inherits="SingleLayer.Orders_Backend_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Order </h2><br />
    <h2>Enter a New Order</h2>
    <br />
    <div class="form-group row">
        <label for="orderNo" class="col-sm-2 col-form-label">Order Number</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="OrderNumber"></asp:TextBox>
        </div>
    </div>
     <div class="form-group row">
        <label for="purchase_amount" class="col-sm-2 col-form-label">Purchase Amount</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Amount"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="order_date" class="col-sm-2 col-form-label">Order Date</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Date"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="customer_id" class="col-sm-2 col-form-label">Customer Id</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="CustomerId"></asp:TextBox>
        </div>
    </div>
      <div class="form-group row">
        <label for="Salesman_Number" class="col-sm-2 col-form-label">Salesman Id</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="SalesmanId"></asp:TextBox>
        </div>
    </div>
     <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"></asp:Button>
             <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Update" OnClick="Button1_Click"></asp:Button>
             <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" Text="Select" OnClick="Button1_Click"></asp:Button>
             <asp:Button CssClass="btn btn-primary" ID="Button4" runat="server" Text="Delete" OnClick="Button1_Click"></asp:Button>
        </div>
    </div>
    <h1><span class=" badge-success btn-lg btn-block">Existing Order</span></h1>

    <asp:GridView ID="GVOrder1" runat="server"></asp:GridView>
</asp:Content>
