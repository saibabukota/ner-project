using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Users_UserMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            string s = Session["uid"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select FirstName,Image from tblMasterUsers where UserID='" + int.Parse(Session["uid"].ToString()) + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Label1.Text = "Hi,"+dt.Rows[0].ItemArray[0].ToString() ;
        }
    }
}
