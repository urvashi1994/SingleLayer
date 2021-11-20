<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="SingleLayer.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Customer </h2><br />
    <h2>Enter a New Customer</h2>
    <br />
    <div class="form-group row">
        <label for="customerNo" class="col-sm-2 col-form-label">Customer Number</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="id"></asp:TextBox>
        </div>
    </div>
     <div class="form-group row">
        <label for="Customer_Name" class="col-sm-2 col-form-label">Customer Name</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="CustomerName"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="City" class="col-sm-2 col-form-label">City</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="City"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="grade" class="col-sm-2 col-form-label">Grade</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Grade"></asp:TextBox>
        </div>
    </div>
      <div class="form-group row">
        <label for="Salesman_Number" class="col-sm-2 col-form-label">Salesman Number</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="SalesmanId"></asp:TextBox>
        </div>
    </div>
     <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Enter Customer" OnClick="Button1_Click"></asp:Button>
        </div>
    </div>
    <h1><span class=" badge-success btn-lg btn-block">Existing Customer</span></h1>
    
    <asp:GridView ID="GVCustomer1" runat="server"></asp:GridView>

</asp:Content>



