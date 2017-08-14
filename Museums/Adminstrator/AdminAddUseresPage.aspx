<%@ Page Language="C#" MasterPageFile="~/Adminstrator/AdiministratorMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddUseresPage.aspx.cs" Inherits="Adminstrator_AdminAddUseresPage" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
        height: 470px;
    }
    .style3
    {
        color: #FF0000;
        }
        .style6
    {
        color: #FF0000;
        width: 381px;
    }
        .style5
        {
        color: #FF0000;
        width: 217px;
    }
        .style7
        {
            color: #FFFFFF;
            width: 289px;
            height: 4px;
        }
        .style8
        {
            color: #FF0000;
            width: 381px;
            height: 4px;
        }
        .style9
        {
            color: #FF0000;
            width: 217px;
            height: 4px;
        }
        .style10
    {
        color: #FFFFFF;
    }
    .style11
    {
        color: #FFFFFF;
        width: 217px;
    }
    .style12
    {
        color: #FFFFFF;
        width: 381px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
    <tr>
        <td class="style3" align="center">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="center">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7" align="center">
            User Type</td>
        <td class="style8">
            <asp:DropDownList ID="ddlusertype" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Administrator</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
            </asp:DropDownList>
            </td>
        <td class="style9">
            </td>
    </tr>
    <tr>
        <td class="style10" align="center">
            First Name</td>
        <td class="style6">
            <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Last Name</td>
        <td class="style12">
            <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
        </td>
        <td class="style11">
            Image</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Gender</td>
        <td class="style6">
            <asp:RadioButtonList ID="rbtnlgender" runat="server" style="color: #FFFFFF">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style5">
            <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Data Of Birth</td>
        <td class="style6">
            <asp:DropDownList ID="ddldobday" runat="server" ToolTip="Day">
                <asp:ListItem>--day--</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddldobmnth" runat="server" ToolTip="Month">
                <asp:ListItem>--Month--</asp:ListItem>
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>february</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddldobyr" runat="server" ToolTip="Year" 
                DataTextField="AlertID" DataValueField="AlertID">
                <asp:ListItem>--Year--</asp:ListItem>
                <asp:ListItem>1980</asp:ListItem>
                <asp:ListItem>1981</asp:ListItem>
                <asp:ListItem>1982</asp:ListItem>
                <asp:ListItem>1983</asp:ListItem>
                <asp:ListItem>1984</asp:ListItem>
                <asp:ListItem>1985</asp:ListItem>
                <asp:ListItem>1986</asp:ListItem>
                <asp:ListItem>1987</asp:ListItem>
                <asp:ListItem>1988</asp:ListItem>
                <asp:ListItem>1989</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Phone Number</td>
        <td class="style6">
            <asp:TextBox ID="txtphnnum" runat="server"></asp:TextBox>
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Mobile Number</td>
        <td class="style6">
            <asp:TextBox ID="txtmobnum" runat="server"></asp:TextBox>
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Email ID</td>
        <td class="style6">
            <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Address</td>
        <td class="style6">
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="style5">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Qualification</td>
        <td class="style6">
            <asp:DropDownList ID="ddlqualification" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>SSC</asp:ListItem>
                <asp:ListItem>Inter</asp:ListItem>
                <asp:ListItem>Degree</asp:ListItem>
                <asp:ListItem>B.Tech</asp:ListItem>
                <asp:ListItem>M.B.A</asp:ListItem>
                <asp:ListItem>M.C.A</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>PG</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Login ID</td>
        <td class="style6">
            <asp:TextBox ID="txtloginid" runat="server"></asp:TextBox>
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Password</td>
        <td class="style6">
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            <cc1:PasswordStrength ID="txtpassword_PasswordStrength" runat="server" 
                Enabled="True" TargetControlID="txtpassword">
            </cc1:PasswordStrength>
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" align="center">
            Re Enter Password</td>
        <td class="style6">
            <asp:TextBox ID="txtreenterpsw" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" align="center">
            <asp:Button ID="btnsave" runat="server" Text="Save" 
                onclick="btnlogin_Click" />
        </td>
        <td class="style6">
            <asp:Button ID="btnclear" runat="server" Text="Clear" 
                onclick="btnclear_Click" />
        </td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" colspan="3">
            <asp:GridView ID="gvview" runat="server" ForeColor="White">
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>


