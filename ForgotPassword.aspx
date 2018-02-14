<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWeb.master" AutoEventWireup="true" CodeFile="~/ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 143px">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
            <asp:Label ID="Label1" runat="server" BackColor="#009999" Font-Size="Medium" 
                ForeColor="White" style="font-weight: 700" Text="Get Password"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                <asp:Label ID="lblUsername" runat="server" Font-Size="Small" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="Enter the username" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                <asp:Label ID="lblQuestionName" runat="server" Font-Size="Small" 
                    Text="Question Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropQuestion" runat="server" ValidationGroup="MNB" 
                    Font-Bold="True">
                    <asp:ListItem>Select Question</asp:ListItem>
                    <asp:ListItem>FavGame</asp:ListItem>
                    <asp:ListItem>FavCricketer</asp:ListItem>
                    <asp:ListItem>FavSinger</asp:ListItem>
                    <asp:ListItem>FavBook</asp:ListItem>
                    <asp:ListItem>Favcolor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropQuestion" ErrorMessage="Select Question" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                <asp:Label ID="lblAnswer" runat="server" Font-Size="Small" Text="Answer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAnswer" runat="server" ValidationGroup="MNB"></asp:TextBox>
            &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtAnswer" ErrorMessage="Enter Password" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnshow" runat="server" BackColor="#009999" Font-Bold="True" 
                    Font-Size="Small" ForeColor="White" onclick="btnshow_Click" 
                    Text="Show My Password" ValidationGroup="MNB" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                &nbsp;
                <asp:Label ID="Label3" runat="server" BackColor="#009999" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="White" Text="Your Password is =" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblpwd" runat="server" Font-Size="Medium" Text="label" 
                    Visible="False" BackColor="#009999" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

