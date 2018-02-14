<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/city.aspx.cs" Inherits="Admin_city" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table class="style1" align="center" style="width: 69%; margin-left: 28px;">
        <caption>
            <asp:Label ID="Label1" runat="server" BackColor="#009999" Font-Size="Medium" 
                ForeColor="White" style="font-weight: 700" Text="City Form"></asp:Label>
        </caption>
        <tr>
            <td style="text-align: left; width: 1068px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td style="text-align: left; width: 493px">
                &nbsp;</td>
            <td style="text-align: left; width: 434px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                &nbsp;</td>
            <td style="text-align: left; width: 493px">
                &nbsp;</td>
            <td style="text-align: left; width: 434px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                <asp:Label ID="city_id" runat="server" Text="City ID" Font-Size="Small"></asp:Label>
            </td>
            <td style="text-align: left; width: 493px">
                <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td style="text-align: left; width: 434px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                &nbsp;</td>
            <td style="text-align: left; width: 493px">
                &nbsp;</td>
            <td style="text-align: left; width: 434px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                <asp:Label ID="city_name" runat="server" Text="City Name" Font-Size="Small"></asp:Label>
            </td>
            <td style="text-align: left; width: 493px">
                <asp:TextBox ID="txtCityName" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td style="text-align: left; width: 434px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="please select city name" SetFocusOnError="True" 
                    ValidationGroup="MNB" ControlToValidate="txtCityName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                &nbsp;</td>
            <td style="text-align: left; width: 493px">
                &nbsp;</td>
            <td style="text-align: left; width: 434px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; text-align: left; width: 1068px">
                &nbsp;</td>
            <td style="height: 26px; text-align: left; width: 493px">
                <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="MNB" 
                    BackColor="#009999" Font-Bold="True" ForeColor="White" 
                    onclick="Button1_Click" />
            </td>
            <td style="height: 26px; width: 434px">
                </td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                &nbsp;</td>
            <td style="text-align: left; width: 493px">
                &nbsp;</td>
            <td style="text-align: left; width: 434px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                &nbsp;</td>
            <td style="width: 493px">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="text-align: left; width: 434px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                &nbsp;</td>
            <td style="width: 493px">
                &nbsp;</td>
            <td style="text-align: left; width: 434px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                &nbsp;</td>
            <td style="text-align: left; width: 493px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="City_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="City_ID" HeaderText="City_ID" ReadOnly="True" 
                            SortExpression="City_ID" />
                        <asp:BoundField DataField="City_Name" HeaderText="City_Name" 
                            SortExpression="City_Name" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
            </td>
            <td style="width: 434px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 1068px">
                &nbsp;</td>
            <td style="text-align: left; width: 493px">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td style="text-align: left; width: 434px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

