<%@ Page Language="C#" MasterPageFile="~/Adminstrator/AdiministratorMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddAreasPage.aspx.cs" Inherits="Adminstrator_AdminAddAreasPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 98%;
        height: 337px;
    }
        .style3
        {
            width: 385px;
        }
    .style4
    {
        color: #FFFFFF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
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
            <td class="style3" rowspan="7">
                &nbsp;</td>
            <td class="style4">
                Museum Name</td>
            <td>
                <asp:DropDownList ID="ddlmuseumname" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Area Name</td>
            <td>
                <asp:TextBox ID="txtareaname" runat="server"></asp:TextBox>
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
            <td>
                <asp:Button ID="btnsave" runat="server" Height="26px" onclick="btnsave_Click" 
                    Text="Save" />
            </td>
            <td>
                <asp:Button ID="btnclear" runat="server" onclick="btnclear_Click" 
                    Text="Clear" />
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

