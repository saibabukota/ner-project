<%@ Page Language="C#"  AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" Title="Untitled Page" %>



<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
     <style type="text/css">
    .style2
    {
        color: #FF0000;
             width: 205px;
         }
    .style3
    {
        color: #FF0000;
        width: 269px;
         }
    .style4
    {
        color: #FF0000;
        height: 41px;
             width: 269px;
         }
    .style5
    {
        color: #FF0000;
        height: 76px;
    }
    .style7
    {
         }
    .style8
    {
        color: #FF0000;
        height: 44px;
        font-size: x-large;
             width: 205px;
         }
    .style9
    {
        color: #FF0000;
        height: 41px;
        font-size: x-large;
             width: 205px;
         }
    .newStyle1
    {
        background-image: url('Images/0.jpg');
    }
    .newStyle2
    {
        background-image: url('Images/0.jpg');
    }
    .newStyle3
    {
        background-image: url('Images/b1.jpg');
    }
         .style10
         {
             color: #FF0000;
             height: 76px;
             width: 269px;
         }
         .style11
         {
             color: #FF0000;
             width: 269px;
         }
         .style12
         {
             color: #FF0000;
             height: 76px;
             width: 205px;
         }
         .style13
         {
             width: 860px;
         }
         .style14
         {
             margin-left: 160px;
         }
         .style16
         {
             width: 169px;
         }
         .style18
         {
             color: #FF0000;
             height: 25px;
             width: 269px;
         }
         .style19
         {
             color: #FF0000;
             height: 27px;
             font-size: x-large;
             width: 205px;
         }
         .style20
         {
             color: #FF0000;
             height: 25px;
             font-size: x-large;
             width: 205px;
         }
         .style21
         {
             color: #FF0000;
             width: 333px;
         }
         .style1
         {
             width: 1084px;
             height: 549px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
      <table cellpadding="0" cellspacing="0" class="style1">
    <tr>
        <td class="style14" style="background-color: #000000">
            &nbsp;</td>
        <td class="style14" colspan="2" style="background-color: #000000">
            <asp:Image ID="Image5" runat="server" Height="52px" 
                ImageUrl="~/Images/Untitled-1 copy.JPG" Width="510px" />
                  </td>
    </tr>
    <tr>
        <td class="style7" colspan="3">
            <asp:Image ID="Image4" runat="server" Height="95px" 
                ImageUrl="~/Images/gold-background copyCf.JPG" Width="1239px" />
        </td>
    </tr>
    <tr>
        <td class="style14">
            <asp:Image ID="Image2" runat="server" Height="271px" 
                ImageUrl="~/Images/ghfg.jpg" Width="327px" />
        </td>
        <td class="style16">
            <asp:Image ID="Image3" runat="server" 
                ImageUrl="~/Images/Kontron_LogRegHere_Button.gif" Width="174px" />
        </td>
        <td class="style13">
            <table cellpadding="0" cellspacing="0" class="" frame="rhs">
                <tr>
                    <td align="center" class="style19">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style21" rowspan="8">
                        <asp:Image ID="Image1" runat="server" Height="268px" 
                            ImageUrl="~/Images/0.jpg" Width="398px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style20">
                        </td>
                    <td class="style18">
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style8">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="style8">
                        Login ID</td>
                    <td class="style3">
                        <asp:TextBox ID="txtloginid" runat="server" Height="34px" Width="168px" 
                            ForeColor="Gray"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style9">
                        Password</td>
                    <td class="style4">
                        <asp:TextBox ID="txtpassword" runat="server" Height="31px" Width="169px" 
                            ForeColor="Gray" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style5" colspan="2">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" 
                            ImageUrl="~/Images/button-login.jpg" onclick="ImageButton1_Click" 
                            Width="96px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style12">
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                            style="font-size: large">Forgot Password?</asp:LinkButton>
                    </td>
                    <td align="justify" class="style10">
                        <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" 
                            ImageUrl="~/Images/signup_icon.jpg" onclick="ImageButton2_Click" 
                            Width="177px" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style11">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style16">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style16">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14" align="center" colspan="3">
            
            <marquee><asp:Image ID="Image6" runat="server" Height="33px" 
                ImageUrl="~/Images/SAD.GIF" /></marquee>
            
        </td>
    </tr>
</table>

    </form>
</body>
</html>
