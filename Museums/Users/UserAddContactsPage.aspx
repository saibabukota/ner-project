<%@ Page Language="C#" MasterPageFile="~/Users/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserAddContactsPage.aspx.cs" Inherits="Users_UserAddContactsPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        }
        .style3
        {
            width: 275px;
        }
        .style4
        {
            width: 329px;
            height: 24px;
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
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            </td>
        <td class="style5">
            Museum Name</td>
        <td class="style6">
            <asp:DropDownList ID="ddlmuseumname" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            Contact Name</td>
        <td>
            <asp:TextBox ID="txtcontactname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            Designtion</td>
        <td>
            <asp:TextBox ID="txtdesignation" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            Phone Number</td>
        <td>
            <asp:TextBox ID="txtphonenum" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            Mobile Number</td>
        <td>
            <asp:TextBox ID="txtmobilenum" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            Email</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            Status</td>
        <td>
            <asp:DropDownList ID="ddlstatus" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" />
        </td>
        <td>
            <asp:Button ID="btnclear" runat="server" Text="Clear" 
                onclick="btnclear_Click" />
        </td>
    </tr>
    <tr>
        <td class="style2">
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
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

