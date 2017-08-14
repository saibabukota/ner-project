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


public partial class Adminstrator_AdminViewControlsPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgv();
            fillddlareatypename();
            fillddlstatus();
            fillmuseummname();
        }
        Panel1.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "update tblMuseumIRControls set MuseumID='"+ddlmuseumname.SelectedValue.ToString()+"',AreaTypeID='"+ddlareatypename.SelectedValue.ToString()+"',AreaName='"+txtareaname.Text +"',ControlCode='"+txtcontrolcode.Text +"',ControlName='"+txtcontrolname.Text +"',Status='"+ddlstatus.SelectedValue.ToString() +"' where ControlID=" + int.Parse(Session["ControlID"].ToString()) + "";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values updated successfully');", true);
        fillgv();
        fillmuseummname();
        fillddlstatus();
        fillddlareatypename();
        
        
        
    }
    public void fillgv()
    {
        cmd.Connection = con;
        cmd.CommandText = "select b.MuseumName,c.AreaTypeName,a.ControlID,a.AreaName,a.ControlCode,a.ControlName,a.Status from tblMasterMuseums b,tblMasterAreaTypes c,tblMuseumIRControls a where b.MuseumID=a.MuseumID and c.AreaTypeID=a.AreaTypeID";
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        da.SelectCommand = cmd;
        da.Fill(ds);
        gvfillcontrols.DataSource = ds.Tables[0];
        gvfillcontrols.DataBind();
    }
    protected void gvfillcontrols_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from tblMuseumIRControls where ControlID=" + int.Parse(e.CommandArgument.ToString());
        SqlDataReader dr;
        con.Open();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlmuseumname.SelectedValue = dr[1].ToString();
            ddlareatypename.SelectedValue = dr[2].ToString();
            txtareaname.Text = dr[3].ToString();
            txtcontrolcode.Text = dr[4].ToString();
            txtcontrolname.Text = dr[5].ToString();
            ddlstatus.SelectedValue  = dr[6].ToString();
        }
        Session["ControlID"] = e.CommandArgument.ToString();
        con.Close();
        Panel1.Visible = true;
    }
    public void fillmuseummname()
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
    public void fillddlareatypename()
    {
        SqlDataAdapter da = new SqlDataAdapter("select AreaTypeID,AreaTypeName from tblMasterAreaTypes", con);
        dt = new DataTable();
        da.Fill(dt);
        ddlareatypename.DataSource = dt;
        ddlareatypename.DataTextField = "AreatypeName";
        ddlareatypename.DataValueField = "AreaTypeID";
        ddlareatypename.DataBind();
        ddlareatypename.Items.Insert(0, "--Select--");

    }
    public void fillddlstatus()
    {
        ddlstatus.Items.Insert(0, "--select--");
        ddlstatus.Items.Insert(1, "Active");
        ddlstatus.Items.Insert(2, "InActive");
    }
    
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminViewControlsPage.aspx");
    }
    protected void gvfillcontrols_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvfillcontrols.PageIndex = e.NewPageIndex;
        fillgv();
    }
}
