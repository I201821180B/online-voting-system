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
            
            DateTime dateOfBirth = Convert.ToDateTime(dob.Text);
            DateTime today = DateTime.Now;
            TimeSpan ts = today - dateOfBirth;
            DateTime age = DateTime.MinValue + ts;

            int years = age.Year - 1;
            if(years > 18)
            {
                String votername, uname, pass, cityname,reg_msg=null;
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
                    cmd.CommandText = "INSERT INTO login (Name,Password,login_type,Id) VALUES (@name,@pass,@login_type,(SELECT V_Id from voter_reg WHERE username = @name))";
                    cmd.Parameters.AddWithValue("@name", uname);
                    cmd.Parameters.AddWithValue("@pass", pass);
                    cmd.Parameters.AddWithValue("@login_type", "Voter");
                    int final_insert = cmd.ExecuteNonQuery();
                    if(final_insert > 0)
                    {
                        //insertion successful...
                        reg_msg = "Voter is Registered Successfully !";
                        Response.Redirect("login.aspx?msg="+reg_msg);
                    }
                    else
                    {
                        //insertion failure...
                        reg_msg = "Voter is Not Registered !";
                        Response.Redirect("login.aspx?msg=" + reg_msg);
                    }
                }
                con.Close();
            }
            else
            {
                reg_msg.Text = "You Cannot Register, Because you are below 18 years of age";
                reg_msg.CssClass = "alert alert-danger";
                reg_msg.Visible = true;
            }
        }
    }
}