<%@ Page Language="C#" MasterPageFile="~/Adminstrator/AdiministratorMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddAreaTypesPage.aspx.cs" Inherits="Adminstrator_AdminAddAreaTypesPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 325px;
        }
    .style4
    {
        width: 325px;
        height: 18px;
    }
    .style5
    {
        height: 18px;
    }
    .style6
    {
        color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                Aera Name</td>
            <td>
                <asp:TextBox ID="txtareaname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                User Name</td>
            <td>
                <asp:DropDownList ID="ddlusername" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                User Date Time</td>
            <td>
                <asp:TextBox ID="txtuserdatetime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
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
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" />
            </td>
            <td>
                <asp:Button ID="btnclear" runat="server" onclick="btnclear_Click" 
                    Text="Clear" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="gvview" runat="server" ForeColor="White">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td>
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

