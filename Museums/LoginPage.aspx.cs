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

public partial class LoginPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPage.aspx");
    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string status = "Active";
        SqlDataAdapter da = new SqlDataAdapter("select * from tblMasterUsers where LoginId='" + txtloginid.Text + "' and Password='" + txtpassword.Text + "' and Status='"+status +"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int i = dt.Rows.Count;
        if (i >= 1)
        { 
            Session["uid"] = dt.Rows[0].ItemArray[0].ToString();
            string s = dt.Rows[0].ItemArray[1].ToString();
            //string st = dt.Rows[0].ItemArray[9].ToString();
            if (s == "Administrator")
            {
                Response.Redirect("~/Adminstrator/AdminHomePage.aspx");
            }
            else if (s == "User")
            {
                Response.Redirect("~/Users/UserHomePage.aspx");
            }
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("RegistrationPage.aspx");
    }

    [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
    public static AjaxControlToolkit.Slide[] GetSlides(string contextKey)
    {
        return default(AjaxControlToolkit.Slide[]);
    }
}
