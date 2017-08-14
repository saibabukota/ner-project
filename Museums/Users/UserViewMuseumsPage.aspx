<%@ Page Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserViewMuseumsPage.aspx.cs" Inherits="Users_UserViewMuseumsPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 64%;
            height: 227px;
        color: #FFFFCC;
    }
        .style3
        {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td align="center">
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr>
            <td class="style3">
                <asp:Panel ID="Panel2" runat="server" Height="219px" Width="697px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    EmptyDataText="No Records Found" 
    onrowcommand="GridView1_RowCommand" Height="103px" AllowPaging="True" 
                        onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
                        style="color: #FFFFCC">
                        <Columns>
                            <asp:BoundField DataField="MuseumID" HeaderText="MuseumID" />
                            <asp:BoundField DataField="MuseumName" HeaderText="MuseumName" />
                            <asp:BoundField DataField="AddressDetails" HeaderText="AddressDetails" />
                            <asp:BoundField DataField="ContactDetails" HeaderText="ContactDetails" />
                            <asp:BoundField DataField="AboutMuseum" HeaderText="AboutMuseum" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" 
                                    CommandArgument='<%# Eval("MuseumID")%>' CommandName="edt" 
                                    Text="Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
    </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Panel ID="Panel1" runat="server" Height="235px" Width="764px">
                    <table class="style2" style="font-family: 'Times New Roman'; font-size: large">
                        <tr>
                            <td>
                                Museum Name</td>
                            <td>
                                <asp:TextBox ID="txtmuseumname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address Details</td>
                            <td>
                                <asp:TextBox ID="txtaddressdetails" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contct Details</td>
                            <td>
                                <asp:TextBox ID="txtcontactdetails" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                About Museum</td>
                            <td>
                                <asp:TextBox ID="txtaboutmuseum" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
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
    </table>
</asp:Content>

