<%@ Page Language="C#" MasterPageFile="~/Adminstrator/AdiministratorMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddMuseumsPage.aspx.cs" Inherits="Adminstrator_AdminAddMuseumsPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
        width: 308px;
    }
    .style4
    {
        width: 308px;
        height: 26px;
    }
    .style5
    {
        height: 26px;
    }
    .style6
    {
        width: 101px;
    }
    .style7
    {
        width: 101px;
        height: 26px;
    }
    .style8
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
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style3" rowspan="10">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/DSCN0755 copy.gif" 
                    Width="408px" />
            </td>
            <td class="style6" rowspan="10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Museum Name</td>
            <td>
                <asp:TextBox ID="txtmuseumname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Address Details</td>
            <td>
                <asp:TextBox ID="txtaddressdetails" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Contct Details</td>
            <td>
                <asp:TextBox ID="txtcontactdetails" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                About Museum</td>
            <td>
                <asp:TextBox ID="txtaboutmuseum" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Status</td>
            <td>
                <asp:DropDownList ID="ddlstatus" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 40px">
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" />
            </td>
            <td>
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" rowspan="2">
                <asp:GridView ID="gvview" runat="server" ForeColor="White">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

