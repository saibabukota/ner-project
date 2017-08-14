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

public partial class Users_UserViewControlContactsPage : System.Web.UI.Page
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
            fillgrid();
            fillddlcontact();
            fillddlcontol();
            fillddlmuseumname();
            fillddlstatus();
        }
        Panel1.Visible = false;

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {

        cmd.Connection = con;
        cmd.CommandText = "update tblControlContacts set MuseumID='" + ddlmuseumname.SelectedValue.ToString() + "',ControlID='" + ddlcontrolename.SelectedValue.ToString() + "',ContactID='" + ddlcontactname.SelectedValue.ToString() + "',Status='" + ddlstatus.SelectedValue.ToString() + "' where ControlContactID=" + int.Parse(Session["ControlContactID"].ToString()) + "";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        fillgrid();
        fillddlstatus();
        fillddlmuseumname();
        fillddlcontol();
        fillddlcontact();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values updated successfully');", true);
        
    }
    public void fillgrid()
    {
        cmd.Connection = con;
        cmd.CommandText = "select a.ControlContactID,a.MuseumID,a.ContactId,a.ControlID,a.Status,b.MuseumName,c.ControlName,d.ContactName from tblControlContacts a,tblMasterMuseums b,tblMuseumIRControls c,tblMuseumContacts d where a.MuseumID=b.MuseumID and a.ControlID=c.ControlID and a.ContactId=d.ContactID";
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        da.SelectCommand = cmd;
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from tblControlContacts where ControlContactID=" + int.Parse(e.CommandArgument.ToString());
        SqlDataReader dr;
        con.Open();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlmuseumname.SelectedValue= dr[1].ToString();
            ddlcontrolename.SelectedValue = dr[2].ToString();
            ddlcontactname.SelectedValue = dr[3].ToString();
            ddlstatus.SelectedValue = dr[4].ToString();
        }
        Session["ControlContactID"] = e.CommandArgument.ToString();
        con.Close();
        Panel1.Visible = true;
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
        ddlmuseumname.Items.Insert(0, "--select--");
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
        SqlDataAdapter da = new SqlDataAdapter("select ContactID,ContactName from tblMuseumContacts ", con);
        dt = new DataTable();
        da.Fill(dt);
        ddlcontactname.DataSource = dt;
        ddlcontactname.DataTextField = "ContactName";
        ddlcontactname.DataValueField = "ContactID";
        ddlcontactname.DataBind();
        ddlcontactname.Items.Insert(0, "--Select--");
    }

    
    public void fillddlstatus()
    {
        ddlstatus.Items.Insert(0, "--Select--");
        ddlstatus.Items.Insert(1, "Active");
        ddlstatus.Items.Insert(2, "InActive");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserViewControlContactsPage.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();
    }
}
