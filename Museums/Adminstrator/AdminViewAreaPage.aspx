<%@ Page Language="C#" MasterPageFile="~/Adminstrator/AdiministratorMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewAreaPage.aspx.cs" Inherits="Adminstrator_AdminViewAreaPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
        }
    .style3
    {
        color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
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
            <td align="center">
                <asp:Panel ID="Panel1" runat="server" Height="205px" Width="762px">
                    <asp:GridView ID="gvarea" runat="server" AutoGenerateColumns="False" 
                    EmptyDataText="No Records found" onrowcommand="gvarea_RowCommand" 
                    onselectedindexchanged="gvarea_SelectedIndexChanged" ForeColor="White" 
                        AllowPaging="True" onpageindexchanging="gvarea_PageIndexChanging" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="MuseumName" HeaderText="MuseumName" />
                            <asp:BoundField DataField="AreaName" HeaderText="AreaName" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:Button ID="btnedit" runat="server" 
                                    CommandArgument='<%# Eval("AreaID")%> ' CommandName="edt" 
                                    Text="Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <br />
                </asp:Panel>
            </td>
            <td align="center">
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
            <td align="center">
                <asp:Panel ID="Panel2" runat="server" Height="146px" Width="601px">
                    <table cellpadding="0" cellspacing="0" class="style2">
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
                                Area Name</td>
                            <td>
                                <asp:TextBox ID="txtareaname" runat="server"></asp:TextBox>
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
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                                    Text="Update" />
                            </td>
                            <td>
                                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click1" 
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
                    </table>
                </asp:Panel>
            </td>
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
</asp:Content>

