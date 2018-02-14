<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="~/Customer/History_Of_Order.aspx.cs" Inherits="Customer_History_Of_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <br />

    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" 
    Font-Size="Small"></asp:Label>

    <br />
    <br />

   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Order_No" DataSourceID="SqlDataSource1" Width="553px" 
        AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="Order_No" HeaderText="Order_No" 
                InsertVisible="False" ReadOnly="True" SortExpression="Order_No" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                SortExpression="Product_Name" />
            <asp:BoundField DataField="Product_Description" 
                HeaderText="Product_Description" SortExpression="Product_Description" />
            <asp:BoundField DataField="Total_Price" HeaderText="Total_Price" 
                SortExpression="Total_Price" />
            <asp:BoundField DataField="Date_Of_Order" HeaderText="Date_Of_Order" 
                SortExpression="Date_Of_Order" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [ConfirmOrder] WHERE ([Customer_Name] = @Customer_Name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="Customer_Name" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />

    <br />
    <br />

    </asp:Content>

