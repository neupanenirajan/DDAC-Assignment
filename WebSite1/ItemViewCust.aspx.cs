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

public partial class ItemViewCust : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string customerid = Request.QueryString["ID"];
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "SELECT * FROM Item WHERE FKCustomerID=" + customerid;          
            SqlDataAdapter sqlda = new SqlDataAdapter(query, con);        
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            Schedule.DataSource = dtbl;
            Schedule.DataBind();

            string query2 = "SELECT Name from Customer where [Customer ID]=" + customerid;
            SqlCommand cmd2 = new SqlCommand(query2, con);
            string name = cmd2.ExecuteScalar().ToString();
            spanid.InnerHtml = "Customer Item View - " + name;

            con.Close();
        }
    }
}