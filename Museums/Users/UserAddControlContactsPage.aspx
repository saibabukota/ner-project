<%@ Page Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserAddControlContactsPage.aspx.cs" Inherits="Users_UserAddControlContactsPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        }
        .style3
        {
            width: 273px;
        }
        .style4
        {
            width: 299px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style1">
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            Museum Name</td>
        <td>
            <asp:DropDownList ID="ddlmuseumname" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            Controle Name</td>
        <td>
            <asp:DropDownList ID="ddlcontrolename" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            Contact Name</td>
        <td>
            <asp:DropDownList ID="ddlcontactname" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            Status</td>
        <td>
            <asp:DropDownList ID="ddlstatus" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" class="style4">
            &nbsp;</td>
        <td style="margin-left: 40px" class="style3">
            <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" />
        </td>
        <td>
            <asp:Button ID="btnclear" runat="server" Text="Clear" 
                onclick="btnclear_Click" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" colspan="3">
            <asp:GridView ID="gvview" runat="server">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

