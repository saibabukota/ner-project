<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="ForgotPage.aspx.cs" Inherits="ForgotPage" Title="Untitled Page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            height: 366px;
            width: 1185px;
        }
        .newStyle1
        {
            background-image: url('Images/darkaurora.png');
        }
        .style2
        {
            width: 129px;
        }
        .style3
        {
        }
        .style4
        {
            width: 207px;
            height: 5px;
        }
        .style5
        {
            width: 129px;
            height: 5px;
        }
        .style6
        {
            width: 207px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <table cellpadding="0" cellspacing="0" class="style1">
    <tr>
        <td class="style3" colspan="3">
            <asp:Image ID="Image2" runat="server" Height="79px" 
                ImageUrl="~/Images/gold-background copyc.JPG" Width="1182px" />
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2" rowspan="7">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Untitled-5 copy.GIF" 
                Width="260px" />
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            Login ID</td>
        <td class="style2">
            <asp:TextBox ID="txtloginid" runat="server" Height="30px" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                Text="Submit" />
        </td>
        <td class="style5">
            </td>
    </tr>
    <tr>
        <td class="style6">
            Password</td>
        <td class="style2">
            <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="160px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Button ID="btnback" runat="server" onclick="btnback_Click" Text="Back" />
        </td>
        <td class="style2">
            <asp:Button ID="btnclear" runat="server" onclick="btnclear_Click" 
                Text="Clear" />
        </td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
                        Did You ForGot Your Password?&nbsp; Dont Worry We Are Help&nbsp; You.......<br />
            <br />
            Just Type Your LoginID In The Above Field....................</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
    </tr>
</table>
    </form>
</body>
</html>



