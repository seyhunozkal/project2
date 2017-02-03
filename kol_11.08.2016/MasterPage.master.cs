using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{

    SqlConnection sql_connection = new SqlConnection();
    DataTable sqltable = new DataTable();
    public static int sayac = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //sql_connection.ConnectionString = ConfigurationManager.ConnectionStrings["koldb"].ConnectionString;

        //add_datashare();fb_icon
       /* facebook_img.Attributes.Add("onmouseover", "this.src='images/fbhover.png'");
        facebook_img.Attributes.Add("onmouseout", "this.src='images/fb_icon.png'");
        instagram_img.Attributes.Add("onmouseover", "this.src='images/instahover.png'");
        instagram_img.Attributes.Add("onmouseout", "this.src='images/instagram_icon.png'");
        youtube_img.Attributes.Add("onmouseover", "this.src='images/youtubehover.png'");
        youtube_img.Attributes.Add("onmouseout", "this.src='images/youtube.png'");*/
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

    protected string MouseOverOut(string s_id, string s_image_over)
    {

        string javascript_onmouseover = "this.src=\"images\fbhover.png";
        WebControl wc = (WebControl)FindControl(s_id);
        wc.Attributes.Add("onmouseover", string.Format(javascript_onmouseover, s_image_over));
      
        return "";
    }  
}
