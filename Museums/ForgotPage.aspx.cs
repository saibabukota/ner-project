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

public partial class ForgotPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblMasterUsers where LoginId='" + txtloginid.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int i = dt.Rows.Count;
        if (i >= 1)
        {
            string s = dt.Rows[0].ItemArray[11].ToString();
            if (s == txtloginid.Text)
            {
                txtpassword.Text = dt.Rows[0].ItemArray[12].ToString();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "j", "alert('ReEnter LoginId');", true);

            }
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginPage.aspx");
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPage.aspx");
    }
}
