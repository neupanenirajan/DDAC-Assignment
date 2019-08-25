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

public partial class RegCust : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Msg.Visible = false;
    }

    protected void regBtn_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "INSERT INTO Customer (Name,[Company Name],[Company Contact No.],[Phone Number],Email,[Agent Name]) VALUES (@name,@companyname,@companyno,@phoneno,@email,@agentname)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", name.Text.Trim());
            cmd.Parameters.AddWithValue("@companyname", companyname.Text.Trim());
            cmd.Parameters.AddWithValue("@companyno", companyphoneno.Text.Trim());
            cmd.Parameters.AddWithValue("@phoneno", phoneno.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email.Text.Trim());
            cmd.Parameters.AddWithValue("@agentname", agentname.Text.Trim());           
            cmd.ExecuteNonQuery();
            Msg.Visible = true;
            name.Text = "";
            companyname.Text = "";
            companyphoneno.Text = "";
            phoneno.Text = "";
            email.Text = "";
            agentname.Text = "";
            con.Close();
        }
    }
}