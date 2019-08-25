using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "SELECT * FROM Customer";
            SqlDataAdapter sqlda = new SqlDataAdapter(query, con);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            Schedule.DataSource = dtbl;
            Schedule.DataBind();
            con.Close();
        }
    }

    protected void AddItem_Click(object sender, EventArgs e)
    {
        String customer = (sender as LinkButton).CommandArgument;
        Response.Redirect("ItemCreate.aspx?ID=" + customer);
    }

    protected void ViewItem_Click(object sender, EventArgs e)
    {
        String customer = (sender as LinkButton).CommandArgument;
        Response.Redirect("ItemViewCust.aspx?ID=" + customer);
    }
}