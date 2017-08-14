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

public partial class RegistrationPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string usertype = "User";
        string st = "Active"; 
        string dob = ddldobday.SelectedValue + "/" + ddldobmnth.SelectedValue + "/" + ddldobyr.SelectedValue;
        string img = string.Empty;
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + "\\" + FileUpload1.FileName);
            img = "~/Images/" + FileUpload1.FileName;
        }

        SqlDataAdapter da = new SqlDataAdapter("insert into tblMasterUsers values('" + usertype  + "','" + txtfirstname.Text + "','" + txtlastname.Text + "','" + rbtnlgender.SelectedValue.ToString() + "','" + dob + "','" + txtphnnum.Text + "','" + txtmobnum.Text + "','" + txtemailid.Text + "','" + txtaddress.Text + "','" + ddlqualification.SelectedValue.ToString() + "','" + txtloginid.Text + "','" + txtpassword.Text + "','" +st+ "','" + img  + "')", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Response.Redirect("LoginPage.aspx");
        }
        

    protected void  btnback_Click(object sender, EventArgs e)
{
    Response.Redirect("LoginPage.aspx");
}
}

   

