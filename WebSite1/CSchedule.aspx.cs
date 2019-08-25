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

public partial class CSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Msg.Visible = false;
    }

    protected void creBtn_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "INSERT INTO Schedule ([Date Of Departure],[Date Of Arrival],Time,[Ship Name],Departure,Arrival,Availability) VALUES (@dateofdeparture,@dateofarrival,@time,@shipname,@departure,@arrival,'YES')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@dateofdeparture", departcalendar.SelectedDate);
            cmd.Parameters.AddWithValue("@dateofarrival", arrivalcalendar.SelectedDate);
            cmd.Parameters.AddWithValue("@time", time.Text.Trim());
            cmd.Parameters.AddWithValue("@shipname", shipname.Text.Trim());
            cmd.Parameters.AddWithValue("@departure", departure.Text.Trim());
            cmd.Parameters.AddWithValue("@arrival", arrival.Text.Trim());
            cmd.ExecuteNonQuery();
            Msg.Visible = true;
            con.Close();
        }
    }
}