<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/confirm_purchase_order.aspx.cs" Inherits="Admin_confirm_purchase_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Order_No" DataSourceID="SqlDataSource1" Width="289px" 
                    AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" 
                            SortExpression="Customer_Name" />
                        <asp:BoundField DataField="Order_No" HeaderText="Order_No" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Order_No" />
                        <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                            SortExpression="Product_Name" />
                        <asp:BoundField DataField="Total_Price" HeaderText="Total_Price" 
                            SortExpression="Total_Price" />
                        <asp:BoundField DataField="Date_Of_Order" HeaderText="Date_Of_Order" 
                            SortExpression="Date_Of_Order" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Customer_Name], [Order_No], [Product_Name], [Total_Price], [Date_Of_Order], [image] FROM [ConfirmOrder]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

