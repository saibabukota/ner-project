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

public partial class Users_UserViewAreaTypesPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgv();
            fillddlstatus();
            fillddlusername();
        }
        Panel1.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "update tblMasterAreaTypes set AreaTypeName='" + txtareaname.Text + "',UserID='"+ddlusername.SelectedValue.ToString()+"',UserDateTime='" + txtuserdatetime.Text + "',Status='" + ddlstatus.SelectedValue.ToString() + "' where AreaTypeID=" + int.Parse(Session["AreaTypeID"].ToString());
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values inserted successfully');", true);
        fillgv();
        fillddlusername();
        fillddlstatus();
        
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
        ddlusername.Items.Insert(0, "--Select--");
    }
    public void fillddlstatus()
    {
        ddlstatus.Items.Insert(0, "--select--");
        ddlstatus.Items.Insert(1, "Active");
        ddlstatus.Items.Insert(2, "InActive");
    }
    public void fillgv()
    {
        da = new SqlDataAdapter("select a.AreaTypeID,a.AreaTypeName,a.UserID,a.UserDateTime,a.Status,b.FirstName from tblMasterAreaTypes a,tblMasterUsers b where a.UserID=b.UserID", con);
        dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from tblMasterAreaTypes where AreaTypeID=" + int.Parse(e.CommandArgument.ToString() + "");
        con.Open();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            txtareaname.Text = dr[1].ToString();
            ddlusername.SelectedValue = dr[2].ToString();
            txtuserdatetime.Text = dr[3].ToString();
            ddlstatus.SelectedValue = dr[4].ToString();
        }
        Session["AreaTypeID"] = e.CommandArgument.ToString();
        con.Close();
        Panel1.Visible = true;
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserViewAreaTypesPage.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgv();
    }
}
