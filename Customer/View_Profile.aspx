<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="~/Customer/View_Profile.aspx.cs" Inherits="Customer_View_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    &nbsp;<table style="width: 100%">
        <tr>
            <td style="width: 129px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:Label ID="Label1" runat="server" BackColor="#009999" Font-Size="Medium" 
                    ForeColor="White" style="font-weight: 700" Text="View Profile"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblCust_ID" runat="server" Font-Size="Small" Text="Customer ID"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtCust_Id" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblCust_name" runat="server" Font-Size="Small" 
                    Text="Customer Name"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtCust_Name" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblAddress" runat="server" Font-Size="Small" Text="Address"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtAddress" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblContactno" runat="server" Font-Size="Small" Text="Contact No"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtContactno" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblStatename" runat="server" Font-Size="Small" Text="State Name"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtStateName" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblCityName" runat="server" Font-Size="Small" Text="City Name"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtCityName" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblPincode" runat="server" Font-Size="Small" Text="Pincode"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtPincode" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblEmailId" runat="server" Font-Size="Small" Text="Email-ID"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtEmailID" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblQuestionName" runat="server" Font-Size="Small" 
                    Text="Question Name"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtquestion" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblAnswer" runat="server" Font-Size="Small" Text="Answer"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtAnswer" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblUsername" runat="server" Font-Size="Small" Text="Username"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:TextBox ID="txtUsername" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                <asp:Label ID="lblImage" runat="server" Font-Size="Small" Text="Image"></asp:Label>
            </td>
            <td style="width: 204px">
                <asp:Image ID="ImgCustomer" runat="server" Height="150px" Width="150px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                <asp:Button ID="btnUpdate" runat="server" Font-Bold="True" 
                    onclick="btnUpdate_Click" Text="Update" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">
                &nbsp;</td>
            <td style="width: 204px">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

