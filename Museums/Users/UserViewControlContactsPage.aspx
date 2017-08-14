<%@ Page Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserViewControlContactsPage.aspx.cs" Inherits="Users_UserViewControlContactsPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style3
        {
            width: 273px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td align="center">
                <asp:Panel ID="Panel2" runat="server" Height="210px" Width="642px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    EmptyDataText="No Records Found" 
    onrowcommand="GridView1_RowCommand" AllowPaging="True" 
                        onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
                        style="color: #FFFFCC">
                        <Columns>
                            <asp:BoundField DataField="ControlContactID" HeaderText="ControlContactID" />
                            <asp:BoundField DataField="MuseumName" HeaderText="MuseumName" />
                            <asp:BoundField DataField="ControlName" HeaderText="ControlName" />
                            <asp:BoundField DataField="ContactName" HeaderText="ContactName" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:Button ID="Button2" runat="server" 
                                    CommandArgument='<%# Eval("ControlContactID")%>' CommandName="edt" 
                                    Text="Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Panel ID="Panel1" runat="server" Height="165px" Width="779px">
                    <table cellpadding="0" cellspacing="0" class="style1">
                        <tr>
                            <td class="style3">
                                Museum Name</td>
                            <td>
                                <asp:DropDownList ID="ddlmuseumname" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Controle Name</td>
                            <td>
                                <asp:DropDownList ID="ddlcontrolename" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Contact Name</td>
                            <td>
                                <asp:DropDownList ID="ddlcontactname" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Status</td>
                            <td>
                                <asp:DropDownList ID="ddlstatus" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                                    Text="UpDate" />
                            </td>
                            <td>
                                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                                    Text="Cancel" />
                            </td>
                        </tr>
                        <tr>
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
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

