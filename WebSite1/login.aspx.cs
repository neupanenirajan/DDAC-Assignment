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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoginErrorMsg.Visible = false;
    }

    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        int userId = 0;
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query2 = "SELECT COUNT(1) FROM LoginTbl WHERE Username=@username AND Password=@password";
            SqlCommand cmd = new SqlCommand(query2, con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
            userId = Convert.ToInt32(cmd.ExecuteScalar());
            
            if(txtUsername.Text.Trim().Equals("admin") && txtPassword.Text.Trim().Equals("admin"))
            {
                Session["username"] = "Admin";
                Response.Redirect("AdminPage.aspx");
            }
            else if (userId == 1)
            {
                Session["username"] = txtUsername.Text.Trim();
                Response.Redirect("AgentPage.aspx");
            }
            else { LoginErrorMsg.Visible = true; }
            con.Close();
        }
    }
}