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
public partial class Adminstrator_AdminHomePage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            fillimage();
        }

       

    }
    
    public void fillimage()
    {
        string s = Session["uid"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("select FirstName,Image from tblMasterUsers where UserID='" + int.Parse(Session["uid"].ToString())+ "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        ///lbltext.Text = dt.Rows[0].ItemArray[0].ToString();
        Image2.ImageUrl = dt.Rows[0].ItemArray[1].ToString();
    }

}
