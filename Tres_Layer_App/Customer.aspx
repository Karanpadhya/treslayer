<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Tres_Layer_App.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     <h2>Enter Customer's Info </h2>
    <div class="form-group row">
        <label for="CustomerNo" class="col-sm-2 col-form-label">Customer Number</label>
        <div class="col-sm-10">
           
            <input type="number" id="txtID" name="CustomerID" runat="server" placeholder="ID" min="3001" required/>
        </div>
    </div>
    <div class="form-group row">
        <label for="CustomerName" class="col-sm-2 col-form-label">Customer Name</label>
        <div class="col-sm-10">
            
            <input type="text" id="txtCustomerName" name="CustomerName" runat="server" placeholder="CustomerName" minlength="5" maxlength="25" required/>
        </div>
    </div>
    <div class="form-group row">
        <label for="city" class="col-sm-2 col-form-label">City</label>
        <div class="col-sm-10">

           
            <input type="text" id="txtCity" name="City" runat="server" placeholder="City" minlength="5" maxlength="25" required/>
        </div>
    </div>
    <div class="form-group row">
        <label for="Grade" class="col-sm-2 col-form-label">Grade</label>
        <div class="col-sm-10">
           
            <input type="number" id="txtGrade" name="Grade" runat="server" placeholder="Grade" min="100" step="100"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="salesmanNo" class="col-sm-2 col-form-label">Salesman Number</label>
        <div class="col-sm-10">
           
            <input type="number" id="Txtslsmn" name="SalesmanNo" runat="server" placeholder="salesmanNo" min="5000"  required/>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button CssClass="btn btn-dark" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Enter Customer"></asp:Button>
        </div>
    </div>
     <asp:Label ID="lblcx" runat="server" Text=""></asp:Label>
    <br />
   
   
    <h1><span class="badge badge-info text-dark btn-lg btn-block">Existing Customers & Total Sales</span></h1>
        
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <asp:GridView ID="gvCustomer" runat="server" >
                    </asp:GridView>
                    <br/>
                </div>
                <div class="col-6">
                    <asp:GridView ID="gvTotalsales" runat="server" >
                    </asp:GridView>
                    <br/>
                </div>
                <br/>
            </div>
        </div>

</asp:Content>
