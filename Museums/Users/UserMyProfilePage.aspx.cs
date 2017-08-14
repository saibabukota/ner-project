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

public partial class Users_UserMyProfilePage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
        Panel1.Visible = false;
    }
    public void fillgrid()
    {

        cmd.Connection = con;
        cmd.CommandText = "select * from tblMasterUsers where UserID=" + int.Parse(Session["uid"].ToString());

        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        da.SelectCommand = cmd;
        da.Fill(ds);
        gvfill.DataSource = ds.Tables[0];
        gvfill.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string img = string.Empty;
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + "\\" + FileUpload1.FileName);
            img = "~/Images/" + FileUpload1.FileName;
        }

        string dob = ddldobday.SelectedValue + "/" + ddldobmnth.SelectedValue + "/" + ddldobyr.SelectedValue;
        cmd.Connection = con;
        cmd.CommandText = "update tblMasterUsers set UserType='" + ddlusertype.SelectedValue.ToString() + "',FirstName='" + txtfirstname.Text + "',LastName='" + txtlastname.Text + "',Gender='" + rbtnlgender.SelectedValue.ToString() + "',DateOfBirth='" + dob + "',Phone='" + txtphnnum.Text + "',Mobile='" + txtmobnum.Text + "',Email='" + txtemailid.Text + "',Address='" + txtaddress.Text + "',Qualification='" + ddlqualification.SelectedValue.ToString() + "',LoginID='" + txtloginid.Text + "',Password='" + txtpassword.Text + "',Status='" + ddlstatus.SelectedValue.ToString() + "',Image='" + img + "' where UserID=" + int.Parse(Session["UserID"].ToString()) + "";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        fillgrid();
        
        Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values updated successfully');", true);
    }
    protected void gvfill_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from tblMasterUsers where UserID=" + int.Parse(e.CommandArgument.ToString());
        SqlDataReader dr;
        con.Open();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ddlusertype.SelectedValue = dr[1].ToString();
            txtfirstname.Text = dr[2].ToString();
            txtlastname.Text = dr[3].ToString();
            rbtnlgender.SelectedValue = dr[4].ToString();
            string s = dr[5].ToString();
            string[] s1 = new string[3];
            s1 = s.Split('/');
            ddldobday.SelectedValue = s1[0].ToString();
            ddldobmnth.SelectedValue = s1[1].ToString();
            ddldobyr.SelectedValue = s1[2].ToString();


            txtphnnum.Text = dr[6].ToString();
            txtmobnum.Text = dr[7].ToString();
            txtemailid.Text = dr[8].ToString();
            txtaddress.Text = dr[9].ToString();
            ddlqualification.SelectedValue = dr[10].ToString();
            txtloginid.Text = dr[11].ToString();
            txtpassword.Text = dr[12].ToString();
            Image1.ImageUrl = dr[14].ToString();
            ddlstatus.SelectedValue = dr[13].ToString();

        }
        Session["UserID"] = e.CommandArgument.ToString();
        con.Close();
        Panel1.Visible = true;
    }




    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserMyProfilePage.aspx");
    }
}