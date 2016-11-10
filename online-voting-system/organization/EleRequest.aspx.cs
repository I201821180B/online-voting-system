using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace online_voting_system.organization
{
    public partial class EleRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() != "organization")
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }
        }

        protected void reg_button_Click(object sender, EventArgs e)
        {
            string Ele_Reqd, Ele_reason, Ele_location;
            Ele_Reqd = R_Doe.Text.ToString();
            Ele_reason = ereason.Text.ToString();
            Ele_location = city.Text.ToString();

            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["db_conn"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Election_Request(O_ID,Req_Doe,Reason,Location) VALUES ((SELECT O_Id FROM org_table WHERE User_Name = @sess_username),@req_doe,@reason,@location)";
            cmd.Parameters.AddWithValue("@sess_username",Session["username"].ToString());
            cmd.Parameters.AddWithValue("@req_doe", Ele_Reqd);
            cmd.Parameters.AddWithValue("@reason", Ele_reason);
            cmd.Parameters.AddWithValue("@location", Ele_location);
            int num_rows = cmd.ExecuteNonQuery();
            if (num_rows > 0)
            {
                // Registration Success...
                Response.Redirect("home.aspx");
            }
            else
            {
                // Registration Failure...
            }
        }


     }
 }
