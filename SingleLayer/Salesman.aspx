<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Salesman.aspx.cs" Inherits="SingleLayer.Salesman" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Salesman </h1><br />
    <h2>Enter a New Salesman</h2>
    <br />

    <div class="form-group row">
        <label for="SalesmanNo" class="col-sm-2 col-form-label">Salesman Number</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="id"></asp:TextBox>
        </div>
    </div>
     <div class="form-group row">
        <label for="Salesman_Name" class="col-sm-2 col-form-label">Salesman Name</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="SalesmanName"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="City" class="col-sm-2 col-form-label">City</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="City"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="Commission" class="col-sm-2 col-form-label">Commission</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Commission"></asp:TextBox>
        </div>
    </div>
     <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Enter Salesman" OnClick="Button1_Click"></asp:Button>
        </div>
    </div>
    <h1><span class=" badge-success btn-lg btn-block">Existing Salesman</span></h1>
    
    <asp:GridView ID="GVSalesman1" runat="server"></asp:GridView>


</asp:Content>

 