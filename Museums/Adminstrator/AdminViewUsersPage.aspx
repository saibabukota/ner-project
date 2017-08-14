<%@ Page Language="C#" MasterPageFile="~/Adminstrator/AdiministratorMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewUsersPage.aspx.cs" Inherits="Adminstrator_AdminViewUsersPage" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 97%;
            height: 476px;
        }
        .style3
        {
            height: 18px;
        }
        .style13
        {
            height: 18px;
            width: 139px;
        }
        .style15
        {
            width: 139px;
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
            height: 21px;
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
        .style16
        {
            height: 15px;
            width: 139px;
        }
        .style17
        {
            height: 15px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td class="style13">
                <asp:Panel ID="Panel2" runat="server" Height="471px" Width="1166px">
                    <asp:GridView ID="gvfill" runat="server" AutoGenerateColumns="False" 
                    onrowcommand="gvfill_RowCommand" Height="53px" Width="658px" 
                        AllowPaging="True" onpageindexchanging="gvfill_PageIndexChanging" 
                        PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="UserID" HeaderText="UserID" />
                            <asp:BoundField DataField="UserType" HeaderText="UserType" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Address" HeaderText="Address" />
                            <asp:BoundField DataField="Qualification" HeaderText="Qualification" />
                            <asp:BoundField DataField="LoginId" HeaderText="LoginId" />
                            <asp:BoundField DataField="Password" HeaderText="Password" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" Width="70px" 
                                    ImageUrl='<%# Eval("Image") %>'/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" 
                                    CommandArgument='<%# Eval("UserID")%>' CommandName="EDT" 
                                    Text="Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </td>
            <td class="style3">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Panel ID="Panel1" runat="server" Height="457px" Width="1085px">
                    <table cellpadding="0" cellspacing="0" class="style2">
                        <tr>
                            <td align="center" class="style3">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style7">
                                User Type</td>
                            <td class="style8">
                                <asp:DropDownList ID="ddlusertype" runat="server">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Administrator</asp:ListItem>
                                    <asp:ListItem>User</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style9" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
                                First Name</td>
                            <td class="style6">
                                <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
                            </td>
                            <td class="style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center">
                                Last Name</td>
                            <td class="style6">
                                <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
                            </td>
                            <td class="style5" colspan="2">
                                Image</td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
                                Gender</td>
                            <td class="style6">
                                <asp:RadioButtonList ID="rbtnlgender" runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="style5">
                                <asp:Image ID="Image1" runat="server" Width="72px" />
                                <br />
                            </td>
                            <td class="style5">
                                <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
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
                                <asp:DropDownList ID="ddldobyr" runat="server" DataTextField="AlertID" 
                                    DataValueField="AlertID" ToolTip="Year">
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
                            <td class="style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
                                Phone Number</td>
                            <td class="style6">
                                <asp:TextBox ID="txtphnnum" runat="server"></asp:TextBox>
                            </td>
                            <td class="style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
                                Mobile Number</td>
                            <td class="style6">
                                <asp:TextBox ID="txtmobnum" runat="server"></asp:TextBox>
                            </td>
                            <td class="style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
                                Email ID</td>
                            <td class="style6">
                                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
                            </td>
                            <td class="style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
                                Address</td>
                            <td class="style6">
                                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td class="style5" colspan="2">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
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
                            <td class="style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
                                Login ID</td>
                            <td class="style6">
                                <asp:TextBox ID="txtloginid" runat="server"></asp:TextBox>
                            </td>
                            <td class="style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style3">
                                Password</td>
                            <td class="style6">
                                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                                <cc1:PasswordStrength ID="txtpassword_PasswordStrength" runat="server" 
                                    Enabled="True" TargetControlID="txtpassword">
                                </cc1:PasswordStrength>
                            </td>
                            <td class="style5" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style15">
                                Status</td>
                            <td>
                                <asp:DropDownList ID="ddlstatus" runat="server">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>Active</asp:ListItem>
                                    <asp:ListItem>InActive</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style15">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Button ID="btnupdate" runat="server" onclick="Button2_Click" 
                                    Text="Update" />
                            </td>
                            <td class="style17">
                                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                                    Text="Cancel" />
                            </td>
                            <td class="style17" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
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
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
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
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
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
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
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
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
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
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

