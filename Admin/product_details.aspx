<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/product_details.aspx.cs" Inherits="Admin_product_details" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <table class="style1">
        <caption>
        </caption>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                <asp:Label ID="Label1" runat="server" BackColor="#009999" Font-Size="Medium" 
                    ForeColor="White" style="font-weight: 700" Text="Product Deatail"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="product_id" runat="server" Text="Product ID" Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 265px">
                <asp:TextBox ID="txtProductID" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Product_name" runat="server" Text="Product Name" 
                    Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 265px">
                <asp:TextBox ID="txtProduct_name" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtProduct_name" ErrorMessage="Enter Product Name" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Product_discription" runat="server" Text="Product Discription" 
                    Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 265px">
                <asp:TextBox ID="txtPro_Detail" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Enter description" ForeColor="Red" ValidationGroup="MNB" 
                    ControlToValidate="txtPro_Detail"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Price" runat="server" Text="Price" Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 265px">
                <asp:TextBox ID="txtPrice" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Enter price" ForeColor="Red" ValidationGroup="MNB" 
                    ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px; height: 18px">
                <asp:Label ID="product_image" runat="server" Text="Product Image" 
                    Font-Size="Small"></asp:Label>
            </td>
            <td class="style2" style="width: 265px">
                <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 0px" />
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Upalod image" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Label ID="Date" runat="server" Text="Date" Font-Size="Small"></asp:Label>
            </td>
            <td style="width: 265px">
                <asp:TextBox ID="txtDate" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtDate" ErrorMessage="Enter date" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="MNB" 
                    BackColor="#009999" ForeColor="White" style="font-weight: 700; width: 69px;" 
                    onclick="btnSubmit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 265px">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

