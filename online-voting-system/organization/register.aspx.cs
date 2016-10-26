using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_voting_system.organization
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            string organizationname, address,cityname,Email,Username,Password,reg_msg=null;
            organizationname = oname.Text.ToString();
            address = addr.Text.ToString();
            cityname = city.Text.ToString();
            Email = email.Text.ToString();
            Username = username.Text.ToString();
            Password = password.Text.ToString();

            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["db_conn"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO org_table (Name,Address,City,Email,User_Name,Password) VALUES (@organizationname,@address,@cityname,@Email,@Username,@Password)";
            cmd.Parameters.AddWithValue("@organizationname", organizationname);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@cityname", cityname);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Username", Username);
            cmd.Parameters.AddWithValue("@Password", Password);
            int num_rows = cmd.ExecuteNonQuery();
            if (num_rows > 0)
            {
                cmd.CommandText = "INSERT INTO login (Name,Password,login_type,Id) VALUES (@name,@pass,@login_type,(SELECT O_Id from org_table WHERE User_Name = @name))";
                cmd.Parameters.AddWithValue("@name", Username);
                cmd.Parameters.AddWithValue("@pass", Password);
                cmd.Parameters.AddWithValue("@login_type", "Organization");
                int final_insert = cmd.ExecuteNonQuery();
                if (final_insert > 0)
                {
                    //insertion successful...
                    reg_msg = "Organization is Registered Successfully !";
                    Response.Redirect("../login.aspx?msg="+reg_msg);
                }
                else
                {
                    //insertion failure...
                    reg_msg = "Organization is Not Registered !";
                    Response.Redirect("../login.aspx?msg=" + reg_msg);
                }
            }
            con.Close();
        }
    }
}