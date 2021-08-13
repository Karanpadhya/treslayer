<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Salesman.aspx.cs" Inherits="Tres_Layer_App.Salesman" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2>Enter a New Salesman</h2>
    
    <div class="form-group row">
        <label for="salesmanNo" class="col-sm-2 col-form-label">Salesman Number</label>
        
        <div>
            <div class="col-sm-10">
                <input type="number" id="txtID" name="SalesmanNo" runat="server" placeholder="id" min="5000" required/>
            </div>
        </div>
    </div>
    <div class="form-group row">
        <label for="salesmanName" class="col-sm-2 col-form-label">Salesman Name</label>
        <div class="col-sm-10">
            <input type="text" id="txtSalesmanName" name="SalesmanName" runat="server" placeholder="salesmanName" minlength="5" maxlength="25" required/>
        </div>
    </div>
    <div class="form-group row">
        <label for="city" class="col-sm-2 col-form-label">City</label>
        <div class="col-sm-10">

            
            <input type="text" id="txtCity" name="City" runat="server" placeholder="City" minlength="5" maxlength="25" required/>
        </div>
    </div>
    <div class="form-group row">
        <label for="commission" class="col-sm-2 col-form-label">Commission</label>
        <div class="col-sm-10">
            
            <input type="number" id="txtCommission" name="Commission" runat="server" placeholder="%" min="0.10" max="1" step="0.01" required/>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button CssClass="btn btn-dark" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Enter Salesman"></asp:Button>
        </div>
    </div>
    <asp:Label ID="lblslsmn" runat="server" Text=""></asp:Label>
    <br />
    <h1><span class="badge badge-info text-dark btn-lg btn-block">Existing Salesman</span></h1>
    
    <asp:GridView ID="gvsalesman" runat="server" HorizontalAlign="Center">
    </asp:GridView>
    <br />
   
    <br />
</asp:Content>
