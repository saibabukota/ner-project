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

public partial class Adminstrator_AdminViewMuseumsPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgv();
            fillddlstatus();
        }
        Panel1.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {

        da = new SqlDataAdapter("update tblMasterMuseums set MuseumName='" + txtmuseumname.Text + "',AddressDetails='" + txtaddressdetails.Text + "',ContactDetails='" + txtcontactdetails.Text + "',AboutMuseum='" + txtaboutmuseum.Text + "',Status='" + ddlstatus.SelectedValue.ToString() + "' where MuseumID=" + int.Parse(Session["MuseumID"].ToString()) + "  ", con);
        dt = new DataTable();
        da.Fill(dt);
        fillgv();
        fillddlstatus();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values updated successfully');", true);
        
    }
    public void fillgv()
    {
        da = new SqlDataAdapter("select * from tblMasterMuseums", con);
        dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText="select * from tblMasterMuseums where MuseumID=" + int.Parse(e.CommandArgument.ToString());
        con.Open();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            txtmuseumname.Text = dr[1].ToString();
            txtaddressdetails.Text = dr[2].ToString();
            txtcontactdetails.Text = dr[3].ToString();
            txtaboutmuseum.Text = dr[4].ToString();
            ddlstatus.SelectedValue=dr[5].ToString();
            
        }
        Session["MuseumID"] = e.CommandArgument.ToString();

        con.Close();
        Panel1.Visible = true;
    }
    public void fillddlstatus()
    {
        ddlstatus.Items.Insert(0, "--select--");
        ddlstatus.Items.Insert(1, "Active");
        ddlstatus.Items.Insert(2, "InActive");
    }

   
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminViewMuseumsPage.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgv();
    }
}
