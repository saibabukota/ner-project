using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Users_UserAddControlContactsPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillddlcontact();
            fillddlcontol();
            fillddlmuseumname();
            fillddlstatus();
        }


    }
    protected void btnsave_Click(object sender, EventArgs e)
    {

    SqlDataAdapter da=new SqlDataAdapter("insert into tblControlContacts values('"+ddlmuseumname.SelectedValue.ToString()+"','"+ddlcontrolename.SelectedValue.ToString()+"','"+ddlcontactname.SelectedValue.ToString()+"','"+ddlstatus.SelectedValue.ToString()+"')",con);
    dt = new DataTable();
    da.Fill(dt);
    Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values inserted successfully');", true);
    fillgv();
   
    }
    public void fillgv()
    {
        da = new SqlDataAdapter("select * from tblControlContacts", con);
        dt = new DataTable();
        da.Fill(dt);
        gvview.DataSource = dt;
        gvview.DataBind();
    }
    public void fillddlmuseumname()
    {
        SqlDataAdapter da = new SqlDataAdapter("select MuseumID,MuseumName from tblMasterMuseums", con);
        dt = new DataTable();
        da.Fill(dt);
        ddlmuseumname.DataSource = dt;
        ddlmuseumname.DataTextField = "MuseumName";
        ddlmuseumname.DataValueField = "MuseumID";
        ddlmuseumname.DataBind();
        ddlmuseumname.Items.Insert(0,"--select--");
    }
    public void fillddlcontol()
    {
        SqlDataAdapter da = new SqlDataAdapter("select ControlID,ControlName from tblMuseumIRControls ", con);
        dt = new DataTable();
        da.Fill(dt);
        ddlcontrolename.DataSource = dt;
        ddlcontrolename.DataTextField = "ControlName";
        ddlcontrolename.DataValueField = "ControlID";
        ddlcontrolename.DataBind();
        ddlcontrolename.Items.Insert(0, "--select--");
    }
    public void fillddlcontact()
    {
        SqlDataAdapter da = new SqlDataAdapter("select ContactID,ContactName from tblMuseumContacts ",con );
        dt = new DataTable();
        da.Fill(dt);
        ddlcontactname.DataSource = dt;
        ddlcontactname.DataTextField = "ContactName";
        ddlcontactname.DataValueField = "ContactID";
        ddlcontactname.DataBind();
        ddlcontactname.Items.Insert(0, "--Select--");
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserAddControlContactsPage.aspx");
    }
    public void fillddlstatus()
    {
        ddlstatus.Items.Insert(0,"--Select--");
        ddlstatus.Items.Insert(1,"Active");
        ddlstatus.Items.Insert(2,"InActive");
    }
}
