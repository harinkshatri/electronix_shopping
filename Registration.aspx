<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWeb.master" AutoEventWireup="true" CodeFile="~/Registration.aspx.cs" Inherits="Registraion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 148px">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="width: 297px">
            <asp:Label ID="Label3" runat="server" BackColor="#009999" Font-Size="Medium" 
                ForeColor="White" style="font-weight: 700" Text="Registration"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblCust_ID" runat="server" Font-Size="Small" Text="Customer ID"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtCust_ID" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblCust_name" runat="server" Font-Size="Small" 
                    Text="Customer Name"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtCust_Name" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtCust_Name" ErrorMessage="Enter Customer Name" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblAddress" runat="server" Font-Size="Small" Text="Address"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtAddress" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtAddress" ErrorMessage="Enter customer address" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblContactno" runat="server" Font-Size="Small" Text="Contact No"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtContactno" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtContactno" ErrorMessage="Enter contact no" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblStatename" runat="server" Font-Size="Small" Text="State Name"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:DropDownList ID="DropState" runat="server" ValidationGroup="MNB" 
                    DataSourceID="SqlDataSource2" DataTextField="State_Name" 
                    DataValueField="State_Name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="DropState" 
                    ErrorMessage="Select State Name" ForeColor="Red" SetFocusOnError="True" 
                    ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblCityName" runat="server" Font-Size="Small" Text="City Name"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:DropDownList ID="DropCity" runat="server" ValidationGroup="MNB" 
                    DataSourceID="SqlDataSource3" DataTextField="City_Name" 
                    DataValueField="City_Name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropCity" ErrorMessage="Select City name" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblPincode" runat="server" Font-Size="Small" Text="Pincode"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtPincode" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtPincode" ErrorMessage="Enter pincode" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblEmailId" runat="server" Font-Size="Small" Text="Email-ID"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtEmailID" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtEmailID" ErrorMessage="Enter Email Id" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblQuestionName" runat="server" Font-Size="Small" 
                    Text="Question Name"></asp:Label>
            </td>
            <td style="width: 297px">
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="DropQuestion" ErrorMessage="Enter Question" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblAnswer" runat="server" Font-Size="Small" Text="Answer"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtAnswer" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtAnswer" ErrorMessage="Enter Answer" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblUsername" runat="server" Font-Size="Small" Text="Username"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtUsername" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="Enter the Username" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblPassword" runat="server" Font-Size="Small" Text="Password"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="Enter username" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblImage" runat="server" Font-Size="Small" Text="Image"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 3px" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Upload Image" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblGender" runat="server" Font-Size="Small" Text="Gender"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" ValidationGroup="MNB" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="RadioButtonList1" ErrorMessage="Select Gender" 
                    ForeColor="Red" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                <asp:Label ID="lblBirthdate" runat="server" Font-Size="Small" Text="Birthdate"></asp:Label>
            </td>
            <td style="width: 297px">
                <asp:TextBox ID="txtBirthdate" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtBirthdate" ErrorMessage="Enter birthdate" ForeColor="Red" 
                    SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="MNB" 
                    BackColor="#009999" ForeColor="White" style="font-weight: 700; height: 26px;" 
                    onclick="btnSubmit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 297px">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

