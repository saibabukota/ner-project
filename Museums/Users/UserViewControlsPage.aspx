<%@ Page Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserViewControlsPage.aspx.cs" Inherits="Users_UserViewControlsPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
        color: #FFFFCC;
    }
        .style3
        {
            height: 14px;
        }
        .style4
        {
            height: 14px;
            width: 327px;
        }
        .style5
        {
            width: 327px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Panel ID="Panel2" runat="server" Height="206px" Width="684px">
                    <asp:GridView ID="gvfillcontrols" runat="server" AutoGenerateColumns="False" 
                    EmptyDataText="No Records Found" 
    onrowcommand="gvfillcontrols_RowCommand" AllowPaging="True" 
                        onpageindexchanging="gvfillcontrols_PageIndexChanging" PageSize="5" 
                        style="color: #FFFFCC">
                        <Columns>
                            <asp:BoundField DataField="AreaName" HeaderText="AreaName" />
                            <asp:BoundField DataField="MuseumName" HeaderText="MuseumName" />
                            <asp:BoundField DataField="AreaTypeName" HeaderText="AreaTypeName" />
                            <asp:BoundField DataField="ControlCode" HeaderText="ControlCode" />
                            <asp:BoundField DataField="ControlName" HeaderText="ControlName" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" 
                                    CommandArgument='<%# Eval("ControlID")%>' CommandName="edt" 
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
            <td align="center">
                <asp:Panel ID="Panel1" runat="server" Height="228px" Width="838px">
                    <table class="style2" style="font-family: 'Times New Roman'; font-size: large">
                        <tr>
                            <td>
                                Museum Name</td>
                            <td>
                                <asp:DropDownList ID="ddlmuseumname" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                AreaType Name</td>
                            <td>
                                <asp:DropDownList ID="ddlareatypename" runat="server" Height="16px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Area Name</td>
                            <td>
                                <asp:TextBox ID="txtareaname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Control Code</td>
                            <td>
                                <asp:TextBox ID="txtcontrolcode" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Control Name</td>
                            <td>
                                <asp:TextBox ID="txtcontrolname" runat="server"></asp:TextBox>
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
                            <td class="style3" colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table class="style2">
                        <tr>
                            <td class="style4">
                                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                                    style="height: 26px" Text="UpDate" />
                            </td>
                            <td class="style3">
                                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                                    Text="Cancel" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
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

