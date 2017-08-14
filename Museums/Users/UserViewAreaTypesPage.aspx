<%@ Page Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserViewAreaTypesPage.aspx.cs" Inherits="Users_UserViewAreaTypesPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
                        <td align="center">
                            <asp:Panel ID="Panel2" runat="server" Height="220px" Width="588px">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                EmptyDataText="No Records Found" 
    onrowcommand="GridView1_RowCommand" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                                    PageSize="5" style="color: #FFFFCC">
                                    <Columns>
                                        <asp:BoundField DataField="AreaTypeID" HeaderText="AreaTypeID" />
                                        <asp:BoundField DataField="AreaTypeName" HeaderText="AreaTypeName" />
                                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" />
                                        <asp:BoundField DataField="UserDateTime" HeaderText="UserDataTime" />
                                        <asp:BoundField DataField="Status" HeaderText="Status" />
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" 
                                                CommandArgument='<%#Eval("AreaTypeID")%>' CommandName="EDT" 
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
                <asp:Panel ID="Panel1" runat="server" Height="140px" Width="750px">
                    <table cellpadding="0" cellspacing="0" class="style1" 
                        style="color: #FFFFCC; font-family: 'Times New Roman'; font-size: larger;">
                        <tr>
                            <td>
                                Aera Name</td>
                            <td>
                                <asp:TextBox ID="txtareaname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                User Name</td>
                            <td>
                                <asp:DropDownList ID="ddlusername" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                User Date Time</td>
                            <td>
                                <asp:TextBox ID="txtuserdatetime" runat="server"></asp:TextBox>
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
                                    style="height: 26px" Text="UpDate" />
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

