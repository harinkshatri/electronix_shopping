<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.master" AutoEventWireup="true" CodeFile="~/Customer/ChangePassword.aspx.cs" Inherits="Customer_ChangePassword" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" BackColor="#009999" Font-Size="Medium" 
                    ForeColor="White" style="font-weight: 700" Text="Change Password"></asp:Label>
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
                <asp:Label ID="lblUsername" runat="server" Font-Size="Small" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="Enter username" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 18px">
            </td>
            <td style="height: 18px">
            </td>
            <td style="height: 18px">
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUsername0" runat="server" Font-Size="Small" 
                    Text="Old Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtOldPassword" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtOldPassword" ErrorMessage="Enter Old Password" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
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
                <asp:Label ID="lblUsername1" runat="server" Font-Size="Small" 
                    Text="New Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNewPassword" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtOldPassword" ErrorMessage="Enter New Password" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
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
                <asp:Label ID="lblUsername2" runat="server" Font-Size="Small" 
                    Text="Comfirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPass" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="txtConfirmPass" ErrorMessage="Not Same" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB" 
                    ControlToCompare="txtNewPassword"></asp:CompareValidator>
            </td>
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
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="MNB" 
                    BackColor="#009999" ForeColor="White" style="font-weight: 700" 
                    onclick="btnSubmit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" BackColor="#009999" Font-Size="Medium" 
                    ForeColor="White" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
    </table>
</asp:Content>

