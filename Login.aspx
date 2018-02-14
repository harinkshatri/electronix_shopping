<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWeb.master" AutoEventWireup="true" CodeFile="~/Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    &nbsp;&nbsp;<table style="width: 100%">
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 244px">
            <asp:Label ID="Label2" runat="server" BackColor="#009999" Font-Size="Medium" 
                ForeColor="White" style="font-weight: 700" Text="Login"></asp:Label>
            &nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 244px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                <asp:Label ID="lblUsername" runat="server" Font-Size="Small" Text="Username"></asp:Label>
            </td>
            <td style="width: 244px">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="Enter Username" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 244px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                <asp:Label ID="lblPassword" runat="server" Font-Size="Small" Text="Password"></asp:Label>
            </td>
            <td style="width: 244px">
                <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="MNB" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 244px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 244px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="MNB" 
                    BackColor="#009999" ForeColor="White" style="font-weight: 700" 
                    onclick="btnSubmit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 244px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 244px; font-size: small; color: #0000FF;">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/ForgotPassword.aspx" style="color: #0066FF">Forgot Password ?</asp:HyperLink></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 244px">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

