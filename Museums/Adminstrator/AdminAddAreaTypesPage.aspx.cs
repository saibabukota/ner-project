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

public partial class Adminstrator_AdminAddAreaTypesPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillddlstatus();
            fillddlusername();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("insert into tblMasterAreaTypes values('"+txtareaname.Text +"','"+ddlusername.SelectedValue.ToString()+"','"+txtuserdatetime.Text +"','"+ddlstatus.SelectedValue.ToString()+"')", con);
        dt = new DataTable();
        da.Fill(dt);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values inserted successfully');", true);
        fillgv();
    }
    public void fillgv()
    {
        da = new SqlDataAdapter("select * from tblMasterAreaTypes",con);
        dt = new DataTable();
        da.Fill(dt);
        gvview.DataSource = dt;
        gvview.DataBind();
    }

    public void fillddlusername()
    {
        SqlDataAdapter da = new SqlDataAdapter("select UserID,FirstName from tblMasterUsers", con);
        dt = new DataTable();
        da.Fill(dt);
        ddlusername.DataSource = dt;
        ddlusername.DataTextField = "FirstName";
        ddlusername.DataValueField = "UserID";
        ddlusername.DataBind();
        ddlusername.Items.Insert(0,"--Select--");
    }
    public void fillddlstatus()
    {
        ddlstatus.Items.Insert(0, "--Select--");
        ddlstatus.Items.Insert(1, "Active");
        ddlstatus.Items.Insert(2, "InActive");
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminAddAreaTypesPage.aspx");
    }
}
