<%@ Page Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserViewContactsPage.aspx.cs" Inherits="Users_UserViewContactsPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 275px;
        }
        .style5
        {
            width: 275px;
            height: 24px;
        }
        .style6
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        </tr>
        <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Panel ID="Panel2" runat="server" Height="212px" Width="734px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    EmptyDataText="No Records Found" 
    onrowcommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="ContactID" HeaderText="ContactID" />
                            <asp:BoundField DataField="MuseumName" HeaderText="MuseumName" />
                            <asp:BoundField DataField="ContactName" HeaderText="ContactName" />
                            <asp:BoundField DataField="Designation" HeaderText="Designation" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" 
                                    CommandArgument='<%#Eval("ContactID")%>' CommandName="edt" 
                                    Text="Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Panel ID="Panel1" runat="server" Height="225px" Width="765px">
                    <table cellpadding="0" cellspacing="0" class="style1">
                        <tr>
                            <td class="style5">
                                Museum Name</td>
                            <td class="style6">
                                <asp:DropDownList ID="ddlmuseumname" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Contact Name</td>
                            <td>
                                <asp:TextBox ID="txtcontactname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Designtion</td>
                            <td>
                                <asp:TextBox ID="txtdesignation" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Phone Number</td>
                            <td>
                                <asp:TextBox ID="txtphonenum" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Mobile Number</td>
                            <td>
                                <asp:TextBox ID="txtmobilenum" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Email</td>
                            <td>
                                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
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
    </table>
</asp:Content>

