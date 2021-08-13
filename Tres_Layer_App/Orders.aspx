<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Tres_Layer_App.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
      
    <h2>Enter Order Info</h2>
    <div class="form-group row">
        <label for="OrderNo" class="col-sm-2 col-form-label">Order no</label>
        <div class="col-sm-10">
      
            <input type="number" id="txtorderID" name="orderID" runat="server" placeholder="ID" min="70001" required/>
        </div>
    </div>
    <div class="form-group row">
        <label for="Purchaseamnt" class="col-sm-2 col-form-label">Purchase Amount</label>
        <div class="col-sm-10">
            
            <input type="number" id="txtpurchaseamnt" name="purchaseamount" runat="server" placeholder="amount" min="100" step="10" required/>
        </div>
    </div>
    <div class="form-group row">
        
        <label for="orddate" class="col-sm-2 col-form-label">Order Date</label>
        <div class="col-sm-10">

          
            <input type="date" id="txtorddate" name="orderdate" runat="server" placeholder="date" required/>

        </div>
    </div>
    <div class="form-group row">
        <label for="custmerid" class="col-sm-2 col-form-label">Customer Id</label>
        <div class="col-sm-10">
          
            <input type="number" id="txtcustomerid" name="customerID" runat="server" placeholder="customer ID" min="3001" required/>
        </div>
        </div>
    <div class="form-group row">
        <label for="salesmanid" class="col-sm-2 col-form-label">Salesman Id</label>
        <div class="col-sm-10">
         
            <input type="number" id="txtsalesmanid" name="salesmanID" runat="server" placeholder="salesman ID" min="5001" required/>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button CssClass="btn btn-dark" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Enter Order"></asp:Button>
        </div>
    </div>
    <asp:Label ID="lblprint" runat="server" Text=""></asp:Label>
    <br />
    <h1><span class="badge badge-info text-dark btn-lg btn-block">Existing Orders</span></h1>
    
    <asp:GridView ID="gvOrders" runat="server" HorizontalAlign="Center">
    </asp:GridView>
    
</asp:Content>
