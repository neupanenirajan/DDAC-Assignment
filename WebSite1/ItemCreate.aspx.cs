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

public partial class ItemCreate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Msg.Visible = false;

    }

    protected void addBtn_Click(object sender, EventArgs e)
    {
        string customerid = Request.QueryString["ID"];
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "INSERT INTO Item (Name,Weight,Quantity,FKCustomerID) VALUES (@name,@weight,@quantity,@custid)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", name.Text.Trim());
            cmd.Parameters.AddWithValue("@weight", weight.Text.Trim());
            cmd.Parameters.AddWithValue("@quantity", quantity.Text.Trim());
            cmd.Parameters.AddWithValue("@custid", customerid);
            cmd.ExecuteNonQuery();
            Msg.Visible = true;
            name.Text = "";
            weight.Text = "";
            quantity.Text = "";
            con.Close();
        }
    }
}