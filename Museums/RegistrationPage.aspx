<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="RegistrationPage" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
    {
        width: 102%;
            height: 671px;
            margin-right: 0px;
            margin-left: 0px;
        }
        .style5
        {
            color: #FF0000;
            width: 545px;
            height: 39px;
        }
        .newStyle1
        {
            background-image: url('Images/Environmental-ad.jpg');
        }
        .newStyle2
        {
            background-image: url('Images/darkaurora.png');
        }
        .style6
        {
            color: #FF0000;
            width: 284px;
        }
        .newStyle3
        {
            background-position: center;
        }
        .style7
        {
            color: #E9E7EB;
            width: 280px;
            height: 34px;
            font-weight: bold;
        }
        .newStyle4
        {
            background-image: url('Images/Icecrown-Wrath-Login copy.JPG');
        }
        .style10
        {
            color: #FF0000;
            height: 85px;
            margin-left: 240px;
        }
        .style11
        {
            color: #FF0000;
            margin-left: 240px;
        }
        .style12
        {
            color: #E9E7EB;
            margin-left: 240px;
            width: 280px;
            height: 41px;
            font-weight: bold;
        }
        .style13
        {
            color: #E9E7EB;
            width: 284px;
            height: 41px;
            font-weight: bold;
        }
        .style20
        {
            color: #E9E7EB;
            margin-left: 240px;
            width: 280px;
            height: 72px;
            font-weight: bold;
        }
        .style21
        {
            color: #E9E7EB;
            width: 284px;
            height: 72px;
            font-weight: bold;
        }
        .style24
        {
            color: #E9E7EB;
            margin-left: 240px;
            width: 280px;
            height: 12px;
            font-weight: bold;
        }
        .style25
        {
            color: #E9E7EB;
            width: 284px;
            height: 12px;
            font-weight: bold;
        }
        .style26
        {
            color: #FF0000;
            width: 545px;
            height: 12px;
        }
        .style30
        {
            color: #FF0000;
            width: 545px;
            height: 26px;
        }
        .style31
        {
            color: #E9E7EB;
            margin-left: 240px;
            width: 280px;
            height: 26px;
            font-weight: bold;
        }
        .style32
        {
            color: #E9E7EB;
            width: 284px;
            height: 26px;
            font-weight: bold;
        }
        .style33
        {
            color: #E9E7EB;
            margin-left: 240px;
            font-weight: bold;
        }
        .style34
        {
            color: #E9E7EB;
            width: 545px;
            font-weight: bold;
        }
        .style36
        {
            color: #D7FFFF;
            font-weight: bold;
        }
        .style37
        {
            color: #E9E7EB;
            font-weight: bold;
        }
        .style38
        {
            color: #E9E7EB;
            width: 284px;
            font-weight: bold;
        }
        .style39
        {
            color: #E9E7EB;
            margin-left: 240px;
            font-weight: bold;
            height: 39px;
        }
        .style40
        {
            color: #FF0000;
            width: 284px;
            height: 39px;
        }
        .style41
        {
            color: #E9E7EB;
            width: 284px;
            height: 34px;
            font-weight: bold;
        }
        .style42
        {
            color: #E9E7EB;
            margin-left: 240px;
            width: 280px;
            height: 37px;
            font-weight: bold;
        }
        .style43
        {
            color: #E9E7EB;
            width: 284px;
            height: 37px;
            font-weight: bold;
        }
        .style44
        {
            color: #E9E7EB;
            margin-left: 240px;
            width: 280px;
            height: 36px;
            font-weight: bold;
        }
        .style45
        {
            color: #E9E7EB;
            width: 284px;
            height: 36px;
            font-weight: bold;
        }
        .style46
        {
            color: #E9E7EB;
            margin-left: 240px;
            width: 280px;
            height: 32px;
            font-weight: bold;
        }
        .style47
        {
            color: #E9E7EB;
            width: 284px;
            height: 32px;
            font-weight: bold;
        }
        .style48
        {
            color: #E9E7EB;
            margin-left: 240px;
            width: 280px;
            height: 39px;
            font-weight: bold;
        }
        .style49
        {
            color: #E9E7EB;
            width: 284px;
            height: 39px;
            font-weight: bold;
        }
    </style>
</head>
<body align="center">
&nbsp;<form id="form1" runat="server">
   
    <table class="style2" align="center" 
        
        style="top: inherit; font-size: x-large; background-image: url('Images/Icecrown-Wrath-Login copy.gif'); color: #E4EAED;">
    <tr>
        <td class="style10" align="char" colspan="3">
            <asp:Image ID="Image1" runat="server" Height="87px" 
                ImageUrl="~/Images/gold-background copyc.JPG" Width="1251px" />
        </td>
    </tr>
    <tr>
        <td class="style33" align="char">
            &nbsp;</td>
        <td class="style38">
            &nbsp;</td>
        <td class="style34">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style31" align="char">
            First Name</td>
        <td class="style32">
            <asp:TextBox ID="txtfirstname" runat="server" Height="28px" Width="160px"></asp:TextBox>
        </td>
        <td class="style30">
            </td>
    </tr>
    <tr>
        <td class="style33" align="char">
            Last Name</td>
        <td class="style38">
            <asp:TextBox ID="txtlastname" runat="server" Height="28px" Width="160px"></asp:TextBox>
        </td>
        <td class="style34">
            Image</td>
    </tr>
    <tr>
        <td class="style39" align="char">
            Gender</td>
        <td class="style40">
            <asp:RadioButtonList ID="rbtnlgender" runat="server" style="color: #E9E7EB">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
                                    </td>
        <td class="style5">
            <span class="style36"><span class="style37">
            <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" />
            </span></span>
            <br class="style37" />
        </td>
    </tr>
    <tr>
        <td class="style24" align="char">
            Data Of Birth</td>
        <td class="style25">
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
        <td class="style26">
            </td>
    </tr>
    <tr>
        <td class="style7" align="char">
            Phone Number</td>
        <td class="style41">
            <asp:TextBox ID="txtphnnum" runat="server" Height="28px" Width="160px"></asp:TextBox>
        </td>
        <td class="style34" rowspan="13">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
                </td>
    </tr>
    <tr>
        <td class="style42" align="char">
            Mobile Number</td>
        <td class="style43">
            <asp:TextBox ID="txtmobnum" runat="server" Height="28px" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style44" align="char">
            Email ID</td>
        <td class="style45">
            <asp:TextBox ID="txtemailid" runat="server" Height="28px" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style20" align="char">
            Address</td>
        <td class="style21">
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Height="62px" 
                Width="193px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style46" align="char">
            Qualification</td>
        <td class="style47">
            <asp:DropDownList ID="ddlqualification" runat="server" Height="47px" 
                Width="87px">
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
    </tr>
    <tr>
        <td class="style48" align="char">
            Login ID</td>
        <td class="style49">
            <asp:TextBox ID="txtloginid" runat="server" Height="28px" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style48" align="char">
            Password</td>
        <td class="style49">
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="28px" 
                Width="160px"></asp:TextBox>
            <cc1:PasswordStrength ID="txtpassword_PasswordStrength" runat="server" 
                Enabled="True" TargetControlID="txtpassword">
            </cc1:PasswordStrength>
        </td>
    </tr>
    <tr>
        <td class="style12" align="char">
            Re Enter Password</td>
        <td class="style13">
            <asp:TextBox ID="txtreenterpsw" runat="server" TextMode="Password" 
                Height="28px" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" align="center">
            <asp:Button ID="btnlogin" runat="server" Text="Login" 
                onclick="btnlogin_Click" Height="36px" Width="80px" />
        </td>
        <td class="style6" align="center">
            <asp:Button ID="btnclear" runat="server" Text="Clear" Height="36px" 
                Width="81px" />
        </td>
    </tr>
    <tr>
        <td class="style11" align="center">
            <asp:Button ID="btnback" runat="server" onclick="btnback_Click" Text="Back" 
                Height="36px" Width="81px" />
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" align="center">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" align="center">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" colspan="3" align="center">
            <marquee><asp:Image ID="Image2" runat="server" Height="33px" 
                ImageUrl="~/Images/SAD.GIF" /></marquee >
        </td>
    </tr>
</table>
    </form>
</body>
</html>

