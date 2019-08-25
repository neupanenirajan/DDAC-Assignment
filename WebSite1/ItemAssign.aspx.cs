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

public partial class ItemAssign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "SELECT Item.*,Customer.Name as CustName FROM Item INNER JOIN Customer ON Item.FKCustomerID=Customer.[Customer ID]";
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
        string scheduleid = Request.QueryString["ID"];
        string itemid = (sender as LinkButton).CommandArgument;
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "SELECT Quantity FROM Item where [Item ID]=" + itemid;
            string query2 = "SELECT TotalItem FROM Schedule where [Schedule ID]=" + scheduleid;

            SqlCommand cmd = new SqlCommand(query, con);
            int itemamount = Convert.ToInt32(cmd.ExecuteScalar());
            SqlCommand cmd2 = new SqlCommand(query2, con);
            int totalitem = Convert.ToInt32(cmd2.ExecuteScalar());

            totalitem = totalitem + itemamount;

            if (totalitem > 5)
            {
                string query3 = "UPDATE Schedule SET Availability='NO' WHERE [Schedule ID]=" + scheduleid;
                SqlCommand cmd3 = new SqlCommand(query3, con);
                cmd3.ExecuteNonQuery();
            }

            string query4 = "UPDATE Schedule SET TotalItem=" + totalitem.ToString() + "WHERE [Schedule ID]=" + scheduleid;
            SqlCommand cmd4 = new SqlCommand(query4, con);
            cmd4.ExecuteNonQuery();

            string query5 = "INSERT INTO ItemOnSchedule VALUES (@scheduleid,@itemid)";
            SqlCommand cmd5 = new SqlCommand(query5, con);
            cmd5.Parameters.AddWithValue("@scheduleid", scheduleid);
            cmd5.Parameters.AddWithValue("@itemid", itemid);
            cmd5.ExecuteNonQuery();

            con.Close();
        }
    }
}