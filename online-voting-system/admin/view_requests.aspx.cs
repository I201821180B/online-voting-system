using System;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace online_voting_system.admin
{
    public partial class view_requests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"].ToString() != "admin")
            {
                Response.Redirect("../default.aspx");
            }
            else
            {}
        }

        protected void edit_btn_Command(object sender, System.Web.UI.WebControls.CommandEventArgs e)
        {
            String id = e.CommandArgument.ToString();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["db_conn"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "UPDATE Election_Request SET status = 'yes' WHERE E_ID = @e_id";
            cmd.Parameters.AddWithValue("@e_id", id);
            int num_rows = cmd.ExecuteNonQuery();
            if(num_rows > 0)
            {
                //update success
                //Response.Redirect("home.aspx");
            }
            else
            {
              // UPdate failed !
            }
        }
    }
}