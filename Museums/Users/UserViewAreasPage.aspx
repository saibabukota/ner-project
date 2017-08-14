<%@ Page Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserViewAreasPage.aspx.cs" Inherits="Users_UserViewAreasPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            height: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                <asp:Panel ID="Panel1" runat="server" Height="203px" Width="438px">
                    <asp:GridView ID="gvarea" runat="server" AutoGenerateColumns="False" 
                    EmptyDataText="No Records found" 
    onrowcommand="gvarea_RowCommand" AllowPaging="True" Height="188px" 
                        onpageindexchanging="gvarea_PageIndexChanging" PageSize="5" 
                        style="color: #FFFFCC" Width="289px">
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
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Panel ID="Panel2" runat="server" Height="128px" Width="955px">
                    <table cellpadding="0" cellspacing="1" class="style1" 
                        style="width: 68%; color: #FFFFCC; font-family: 'Times New Roman'; font-size: large;">
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
                                Area Name</td>
                            <td>
                                <asp:TextBox ID="txtareaname" runat="server"></asp:TextBox>
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
                            <td>
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
                                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                    Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

