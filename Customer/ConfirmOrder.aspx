<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="ConfirmOrder.aspx.cs" Inherits="Customer_ConfirmOrder" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

&nbsp;<br />
<br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    style="margin-left: 0px" AllowPaging="True">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Product_ID" />
                        <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                            SortExpression="Product_Name" />
                        <asp:BoundField DataField="Product_Description" 
                            HeaderText="Product_Description" SortExpression="Product_Description" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Product_Image" HeaderText="Product_Image" 
                            SortExpression="Product_Image" />
                    </Columns>
                </asp:GridView>
<br />
    <table style="width: 100%">
        <caption>
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        </caption>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td colspan="3">
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT Product_ID, Product_Name, Product_Description, Price, Product_Image FROM ProductDetail WHERE (Product_ID = @Product_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label3" Name="Product_ID" 
                            PropertyName="Text" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 47px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                &nbsp;</td>
            <td style="width: 47px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                &nbsp;</td>
            <td style="width: 47px">
                <asp:Label ID="Label1" runat="server" BackColor="#009999" Font-Size="Medium" 
                    ForeColor="White" style="font-weight: 700" Text="Confirm Order"></asp:Label>
            </td>
            <td>
               
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="lblPro_ID" runat="server" Text="Product ID" 
                    Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 47px">
                <asp:TextBox ID="txtProduct_ID" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="Customer Name"></asp:Label>
            </td>
            <td style="width: 47px">
                <asp:TextBox ID="txtCust_Name" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="lblProduct_Name" runat="server" Text="Product Name" 
                    Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 47px">
                <asp:TextBox ID="txtproduct_name" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="Label6" runat="server" Font-Size="Small" 
                    Text="Product_Description"></asp:Label>
            </td>
            <td style="width: 47px">
                <asp:TextBox ID="txtProduct_Description" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="lblTaotal_price" runat="server" Text="Price" 
                    Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 47px">
                <asp:TextBox ID="txttotal_price" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="lblpayment_mode" runat="server" Text="Payment Mode" 
                    Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 47px">
                <asp:TextBox ID="txtpayment_mode" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="lbldate_of_order" runat="server" Text="Date of Order" 
                    Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 47px">
                <asp:TextBox ID="txtdate_of_order" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="Label4" runat="server" Text="Product Image" Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 47px">
                <asp:Image ID="Image1" runat="server" Height="80px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                &nbsp;</td>
            <td style="width: 47px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                &nbsp;</td>
            <td style="width: 47px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="MNB" 
                    BackColor="#009999" ForeColor="White" style="font-weight: 700" 
                    onclick="btnSubmit_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                &nbsp;</td>
            <td style="width: 47px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                &nbsp;</td>
            <td style="width: 47px">
                <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">
                &nbsp;</td>
            <td style="width: 274px">
                &nbsp;</td>
            <td style="width: 47px">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

