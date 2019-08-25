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

public partial class ItemViewAgent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string scheduleid = Request.QueryString["ID"];
        string constr = ConfigurationManager.ConnectionStrings["logindbconnect"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            con.Open();
            string query = "SELECT ItemOnSchedule.[Schedule ID] AS schedule,Item.[Item ID] AS itemid,Item.Name AS itemname,Item.Weight AS itemweight,Item.Quantity AS itemquantity,Customer.Name AS custname FROM Item INNER JOIN ItemOnSchedule ON ItemOnSchedule.[Item ID]=Item.[Item ID] INNER JOIN Customer ON Customer.[Customer ID]=Item.[FKCustomerID] WHERE ItemOnSchedule.[Schedule ID]=" + scheduleid;
            SqlDataAdapter sqlda = new SqlDataAdapter(query, con);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            Schedule.DataSource = dtbl;
            Schedule.DataBind();
            con.Close();
        }
    }
}