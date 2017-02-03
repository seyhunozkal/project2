using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Masterpage : System.Web.UI.Page
{

    SqlConnection sql_connection = new SqlConnection();
    DataTable sqltable = new DataTable();
    
 
    protected void Page_Load(object sender, EventArgs e)
    {


        //sql_connection.ConnectionString = ConfigurationManager.ConnectionStrings["koldb"].ConnectionString;

        //add_datashare();
     
    }
    protected void facebook_Click(object sender, ImageClickEventArgs e)
    {

        Response.Redirect("https://www.facebook.com/callband/?fref=ts");
    }
    protected void instagram_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.instagram.com/call.band/");
    }
    protected void youtube_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.youtube.com/channel/UCDNfKgjVoXlcb9j55HLFdeA");
    }
    DataSet GetData(string queryString)
    {

        SqlDataAdapter adapter = new SqlDataAdapter(queryString, sql_connection);
        DataSet ds = new DataSet();
        try
        {
            sql_connection.Open();
            adapter.Fill(ds);
        }
        catch (Exception ex)
        {
            Response.Write("Wrong = " + ex.Message);
        }
        finally
        {
            sql_connection.Close();
        }

        return ds;

    }
   /* private void add_datashare()
    {
        string queryString = "Exec show";
        DataSet ds = GetData(queryString);


        if (ds.Tables.Count > 0)
        {

            listele.DataSource = ds;
            listele.DataBind();

        }
        // Label l = (Label)listele.Items[0].FindControl("duyuruicerik_label");
        //  string a = l.Text;

        //l.ForeColor = System.Drawing.Color.Red;

    }*/


    protected void mastera(object sender, EventArgs e)
    {
        Response.Redirect("MasterPage.master");
    }
}