<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/state.aspx.cs" Inherits="Admin_state" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table class="style1">
        <caption>
            <asp:Label ID="state_form" runat="server" Text="State Form" BackColor="#009999" 
                Font-Size="Medium" ForeColor="White" style="font-weight: 700"></asp:Label>
        </caption>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">
                <asp:Label ID="state_id" runat="server" Text="State ID" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStateID" runat="server" 
                    ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">
                <asp:Label ID="state_name" runat="server" Text="State Name" Font-Size="Small"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStateName" runat="server" ValidationGroup="MNB"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtStateName" ErrorMessage="Please Enter State Name" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="MNB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" ValidationGroup="MNB" 
                    BackColor="#009999" Font-Bold="True" ForeColor="White" 
                    onclick="btnsubmit_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 172px">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="State_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="State_ID" HeaderText="State_ID" ReadOnly="True" 
                            SortExpression="State_ID" />
                        <asp:BoundField DataField="State_Name" HeaderText="State_Name" 
                            SortExpression="State_Name" />
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
                    SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

