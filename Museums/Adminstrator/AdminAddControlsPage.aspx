<%@ Page Language="C#" MasterPageFile="~/Adminstrator/AdiministratorMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddControlsPage.aspx.cs" Inherits="Adminstrator_AdminAddControlsPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 290px;
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
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                Museum Name</td>
            <td>
                <asp:DropDownList ID="ddlmuseumname" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                AreaType Name</td>
            <td>
                <asp:DropDownList ID="ddlareatypename" runat="server" Height="16px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                Area Name</td>
            <td>
                <asp:TextBox ID="txtareaname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                Control Code</td>
            <td>
                <asp:TextBox ID="txtcontrolcode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                Control Name</td>
            <td>
                <asp:TextBox ID="txtcontrolname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
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
    </table>
</asp:Content>

