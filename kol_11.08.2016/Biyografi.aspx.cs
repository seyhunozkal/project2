using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Biyografi : System.Web.UI.Page
{
    public static SqlConnection sql_connection = new SqlConnection(ConfigurationManager.ConnectionStrings["demufder"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
         

       // add_datashare();
    }
    DataSet GetData(string queryString)
    {

        SqlDataAdapter adapter = new SqlDataAdapter(queryString, sql_connection);
        DataTable ds = new DataTable();
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

        return ds.DataSet;

    }
   /*  private void add_datashare()
     {
         string queryString = "Select userID,userName from tbl_User";
         DataSet ds = new DataSet();
         ds = GetData(queryString);

         
             listele.DataSource = ds;
             listele.DataBind();

     }*/
}