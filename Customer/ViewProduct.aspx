<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="~/Customer/ViewProduct.aspx.cs" Inherits="Customer_ViewProduct" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    &nbsp; 
    &nbsp;&nbsp;&nbsp;<asp:DataList ID="DataList1" runat="server" 
        DataKeyField="Product_ID" DataSourceID="SqlDataSource1" Font-Size="Medium" 
        RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel" runat="server" 
                Text='<%# Eval("Product_ID") %>' />
            <br />
            Product_Name:
            <asp:Label ID="Product_NameLabel" runat="server" 
                Text='<%# Eval("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:Label ID="Product_DescriptionLabel" runat="server" 
                Text='<%# Eval("Product_Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            Product_Image: <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Product_Image") %>' 
                Height="80px" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl = '<%#Eval("Product_ID","ConfirmOrder.aspx?Product_ID={0}") %>' 
                onclick="LinkButton1_Click">Buy</asp:LinkButton>
<br />
        </ItemTemplate>
    </asp:DataList>--%>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Product_ID], [Product_Name], [Product_Description], [Price], [Product_Image] FROM [ProductDetail]">
    </asp:SqlDataSource>--%>
<%--</asp:Content>--%>

