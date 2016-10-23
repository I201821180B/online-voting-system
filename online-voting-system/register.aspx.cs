using System;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace online_voting_system
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reg_button_Click(object sender, EventArgs e)
        {
            String votername, uname, pass, cityname;
            votername = vname.Text.ToString();
            uname = username.Text.ToString();
            pass = password.Text.ToString();
            cityname = city.Text.ToString();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["db_conn"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO voter_reg (name,city,username,password) VALUES (@votername,@city,@username,@password)";
            cmd.Parameters.AddWithValue("@votername", votername);
            cmd.Parameters.AddWithValue("@username", uname);
            cmd.Parameters.AddWithValue("@password", pass);
            cmd.Parameters.AddWithValue("@city", cityname);
            int num_rows = cmd.ExecuteNonQuery();
            if(num_rows > 0)
            { 
                cmd.CommandText = "INSERT INTO login (Name,Password,login_type) VALUES (@name,@pass,@login_type)";
                cmd.Parameters.AddWithValue("@name", uname);
                cmd.Parameters.AddWithValue("@pass", pass);
                cmd.Parameters.AddWithValue("@login_type", "Voter");
                int final_insert = cmd.ExecuteNonQuery();
                if(final_insert > 0)
                {
                    //insertion successful...
                    Response.Redirect("login.aspx");
                }
            }
            con.Close();
        }
    }
}