<%@ Page Language="C#" MasterPageFile="~/Adminstrator/AdiministratorMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewAreaTypesPage.aspx.cs" Inherits="Adminstrator_AdminViewAreaTypesPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 93%;
            height: 237px;
            margin-bottom: 0px;
        }
        .style3
        {
            height: 32px;
        }
    .style4
    {
        color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" class="style2" align="center">
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
                    <tr>
                        <td align="center">
                            <asp:Panel ID="Panel2" runat="server" Height="203px" Width="528px">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                EmptyDataText="No Records Found" 
    onrowcommand="GridView1_RowCommand" Height="45px" Width="472px" ForeColor="White" AllowPaging="True" 
                                    onpageindexchanging="GridView1_PageIndexChanging" PageSize="5">
                                    <Columns>
                                        <asp:BoundField DataField="AreaTypeID" HeaderText="AreaTypeID" />
                                        <asp:BoundField DataField="AreaTypeName" 
                                        HeaderText="AreaTypeName" />
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
                        <td align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Panel ID="Panel1" runat="server" Height="200px" Width="779px" 
                                style="margin-bottom: 0px">
                                <table cellpadding="0" cellspacing="0" class="style2">
                                    <tr>
                                        <td class="style4">
                                            Aera Name</td>
                                        <td>
                                            <asp:TextBox ID="txtareaname" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            User Name</td>
                                        <td>
                                            <asp:DropDownList ID="ddlusername" runat="server" Height="28px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            User Date Time</td>
                                        <td>
                                            <asp:TextBox ID="txtuserdatetime" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4">
                                            Status</td>
                                        <td>
                                            <asp:DropDownList ID="ddlstatus" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                        </td>
                                        <td class="style3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                                                Text="UpDate" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Cancel" />
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
            </td>
        </tr>
    </table>
</asp:Content>

