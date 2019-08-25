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

public partial class SSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "SELECT * FROM Schedule";
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
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "SELECT Availability FROM Schedule WHERE [Schedule ID]=@scheduleid";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@scheduleid", (sender as LinkButton).CommandArgument);
            string result = cmd.ExecuteScalar().ToString();

            string query2 = "SELECT [Date Of Departure] FROM Schedule WHERE [Schedule ID]=@scheduleid";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd2.Parameters.AddWithValue("@scheduleid", (sender as LinkButton).CommandArgument);
            DateTime dateofdeparture = Convert.ToDateTime(cmd2.ExecuteScalar());

            int result2 = DateTime.Compare(System.DateTime.Now, dateofdeparture);

            if (result2 == 0 || result2 > 0)
            {
                string query3 = "UPDATE Schedule SET Availability='NO' WHERE [Schedule ID]=" + (sender as LinkButton).CommandArgument;
                SqlCommand cmd3 = new SqlCommand(query3, con);
                cmd3.ExecuteNonQuery();
            }

            if (result.Equals("YES") && result2<0)
            {
                string scheduleid = (sender as LinkButton).CommandArgument;
                Response.Redirect("ItemAssign.aspx?ID=" + scheduleid);
            }
            else
            {
                string myStringVariable = "Ship is not available";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
            }
            con.Close();
        }

    }

    protected void ViewItem_Click(object sender, EventArgs e)
    {
        string scheduleid = (sender as LinkButton).CommandArgument;
        Response.Redirect("ItemViewAgent.aspx?ID=" + scheduleid);
    }
}