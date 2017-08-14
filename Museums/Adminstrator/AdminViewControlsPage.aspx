<%@ Page Language="C#" MasterPageFile="~/Adminstrator/AdiministratorMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewControlsPage.aspx.cs" Inherits="Adminstrator_AdminViewControlsPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 95%;
            height: 243px;
        }
        .style3
        {
            height: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style2">
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
        <tr>
            <td colspan="2" align="center">
                <asp:Panel ID="Panel2" runat="server" Height="196px" Width="710px">
                    <asp:GridView ID="gvfillcontrols" runat="server" AutoGenerateColumns="False" 
                    EmptyDataText="No Records Found" 
    onrowcommand="gvfillcontrols_RowCommand" CellPadding="4" ForeColor="#FFCCCC" GridLines="None" 
                        AllowPaging="True" onpageindexchanging="gvfillcontrols_PageIndexChanging" 
                        PageSize="5">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="ControlID" HeaderText="ControlID" />
                            <asp:BoundField DataField="MuseumName" HeaderText="MuseumName" />
                            <asp:BoundField DataField="AreaTypeName" HeaderText="AreaTypeName" />
                            <asp:BoundField DataField="AreaName" HeaderText="AreaName" />
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
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Panel ID="Panel1" runat="server" Height="201px" Width="652px">
                    <table cellpadding="0" cellspacing="1" class="style2">
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
                        <tr>
                            <td class="style3">
                                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                                    Text="UpDate" />
                            </td>
                            <td class="style3">
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
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

