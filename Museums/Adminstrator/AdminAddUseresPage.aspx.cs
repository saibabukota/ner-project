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

public partial class Adminstrator_AdminAddUseresPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnclear_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminAddUseresPage.aspx");
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
       
        string st="Active";
        string dob = ddldobday.SelectedValue + "/" + ddldobmnth.SelectedValue + "/" + ddldobyr.SelectedValue;
        string img = string.Empty;
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + "\\" + FileUpload1.FileName);
            img = "~/Images/" + FileUpload1.FileName;
        }

        SqlDataAdapter da = new SqlDataAdapter("insert into tblMasterUsers values('" + ddlusertype.SelectedValue.ToString() + "','" + txtfirstname.Text + "','" + txtlastname.Text + "','" + rbtnlgender.SelectedValue.ToString() + "','" + dob + "','" + txtphnnum.Text + "','" + txtmobnum.Text + "','" + txtemailid.Text + "','" + txtaddress.Text + "','" + ddlqualification.SelectedValue.ToString() + "','" + txtloginid.Text + "','" + txtpassword.Text + "','" +st+ "','" + img + "')", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values inserted successfully');", true);
        gv();
        Response.Redirect("AdminAddUseresPage.aspx");
        }
    public void gv()
    {
        da = new SqlDataAdapter("select * from tblMasterUsers", con);
        dt = new DataTable();
        da.Fill(dt );
        gvview.DataSource = dt;
        gvview.DataBind();
    }
    }

