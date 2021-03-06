﻿using System;
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

public partial class Adminstrator_AdminViewAreaPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=SANDEEPKUMAR-PC;Initial Catalog=security system in museums;User ID=sa;Password=sa123");
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            filldvarea();
            fillddlstatus();
            fillddlmuseum();
        }
        Panel2.Visible = false ;
    }
    protected void gvarea_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvarea_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandText = "select * from tblMasterAreas where AreaID=" + int.Parse(e.CommandArgument.ToString());
        con.Open();
        dr = cmd.ExecuteReader();
       
        while(dr.Read())
        {
            ddlmuseumname.SelectedValue = dr[1].ToString();
            txtareaname.Text=dr[2].ToString();
            
            ddlstatus.SelectedValue = dr[3].ToString();
        }
        Session["AreaID"]=e.CommandArgument.ToString();
        con.Close();
        Panel2.Visible = true;
    }
   
protected void  btnupdate_Click(object sender, EventArgs e)
{
    da=new SqlDataAdapter("update tblMasterAreas set MuseumID='"+ddlmuseumname.SelectedValue.ToString()+"',AreaName='"+txtareaname.Text+"',Status='"+ddlstatus.SelectedValue.ToString()+"' where AreaID="+int.Parse(Session["AreaID"].ToString()),con);
    dt = new DataTable();
    da.Fill(dt);
    filldvarea();
    fillddlstatus();
    fillddlmuseum();
    Page.ClientScript.RegisterStartupScript(this.GetType(), "key", "alert('values updated successfully');", true);
    
}
public void fillddlmuseum()
{
    da = new SqlDataAdapter("select MuseumID,MuseumName from  tblMasterMuseums", con);
    dt = new DataTable();
    da.Fill(dt);
    ddlmuseumname.DataSource = dt;
    ddlmuseumname.DataTextField = "MuseumName";
    ddlmuseumname.DataValueField = "MuseumID";
    ddlmuseumname.DataBind();
    ddlmuseumname.Items.Insert(0, "--Select--");
}
public void filldvarea()
{
    da = new SqlDataAdapter("select a.AreaID,a.AreaName,b.MuseumName,a.Status from tblMasterAreas a,tblMasterMuseums b where a.MuseumID=b.MuseumID", con);
    dt = new DataTable();
    da.Fill(dt);
    gvarea.DataSource = dt;
    gvarea.DataBind();
}
public void fillddlstatus()
{
    ddlstatus.Items.Insert(0, "--select--");
    ddlstatus.Items.Insert(1, "Active");
    ddlstatus.Items.Insert(2, "InActive");
}

protected void btncancel_Click1(object sender, EventArgs e)
{
    Response.Redirect("AdminViewAreaPage.aspx");
}
protected void gvarea_PageIndexChanging(object sender, GridViewPageEventArgs e)
{
   gvarea.PageIndex = e.NewPageIndex;
   filldvarea();
}
}
