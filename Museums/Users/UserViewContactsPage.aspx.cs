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

public partial class Users_UserViewContactsPage : System.Web.UI.Page
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
            fillddlmuseumname();
            fillstatus();
        }
        Panel1.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "update tblMuseumContacts set MuseumID='"+ddlmuseumname.SelectedValue.ToString()+"',ContactName='" + txtcontactname.Text + "',Designation='" + txtdesignation.Text + "',Phone='" + txtphonenum.Text + "',Mobile='" + txtmobilenum.Text + "',Email='" + txtemail.Text + "',Status='" + ddlstatus.SelectedValue.ToString() + "' where ContactID=" + int.Parse(Session["ContactID"].ToString()) + "";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        fillgrid();
        fillstatus();
        fillddlmuseumname();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values updated successfully');", true);
       
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
        ddlmuseumname.Items.Insert(0, "--Select--");
    }
    public void fillstatus()
    {

        ddlstatus.Items.Insert(0, "--Select--");

        ddlstatus.Items.Insert(1, "Active");
        ddlstatus.Items.Insert(2, "InActive");
    }
    public void fillgrid()
    {
        cmd.Connection = con;
        cmd.CommandText = "select  a.ContactID,a.MuseumID,a.ContactName,a.Designation,a.Phone,a.Mobile,a.Email,a.Status,b.MuseumName from tblMuseumContacts a,tblMasterMuseums b where a.MuseumID=b.MuseumID";
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
        cmd.CommandText = "select * from tblMuseumContacts where ContactID=" + int.Parse(e.CommandArgument.ToString());
        SqlDataReader dr;
        con.Open();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlmuseumname.SelectedValue = dr[1].ToString();
            txtcontactname.Text = dr[2].ToString();
            txtdesignation.Text = dr[3].ToString();
            txtphonenum.Text = dr[4].ToString();
            txtmobilenum.Text = dr[5].ToString();
            txtemail.Text = dr[6].ToString();
            ddlstatus.SelectedValue=dr[7].ToString();
        }
        Session["ContactID"] = e.CommandArgument.ToString();
        con.Close();
        Panel1.Visible = true;
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserViewContactsPage.aspx");
    }
}
