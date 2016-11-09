using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.Configuration;

namespace online_voting_system.organization
{
    public partial class can_reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() != "organization")
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }
        }

        [System.Web.Services.WebMethod]
        public static bool UserNameChecker(string newUserName)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["db_conn"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select User_Name from Candidate_Reg where User_Name=@username", con);
            cmd.Parameters.AddWithValue("@username", newUserName);

            object found = cmd.ExecuteScalar();

            if (found != null)
                return true;
            else
                return false;
        }

        protected void reg_button_Click(object sender, EventArgs e)
        {
            String can_name, can_username, can_address, can_pass;
            String uname_available = hidden.Value;
            if(uname_available == "username available")
            {
                if(cphoto.PostedFile.FileName == "")
                {

                }
                else
                {
                    String extension = Path.GetExtension(cphoto.PostedFile.FileName);
                    switch (extension.ToLower())
                    {
                        case ".bmp":
                        case ".jpg":
                        case ".gif":
                        case ".png":
                            break;
                        default:
                            // this type of file is not allowed...
                            reg_msg.Visible = true;
                            reg_msg.Text = "This type of file is not allowed !";
                            return;
                    }
                    String serverfileName = Session["username"] + Path.GetExtension(cphoto.PostedFile.FileName);

                    int length = cphoto.PostedFile.ContentLength;
                    byte[] pic = new byte[length];

                    cphoto.PostedFile.InputStream.Read(pic, 0, length);
                    can_name = cname.Text.ToString();
                    can_username = username.Text.ToString();
                    can_address = cadd.Text.ToString();
                    can_pass = password.Text.ToString();

                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = WebConfigurationManager.ConnectionStrings["db_conn"].ConnectionString;
                    SqlCommand cmd = new SqlCommand();
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandText = "INSERT INTO Candidate_Reg (Name,Address,Image,User_Name,Password,O_Id) VALUES (@name,@address,@image,@user_name,@password,(SELECT O_Id FROM org_table WHERE User_Name = @sess_username))";
                    cmd.Parameters.AddWithValue("@name", can_name);
                    cmd.Parameters.AddWithValue("@address", can_address);
                    cmd.Parameters.AddWithValue("@image", pic);
                    cmd.Parameters.AddWithValue("@user_name", can_username);
                    cmd.Parameters.AddWithValue("@password",can_pass);
                    cmd.Parameters.AddWithValue("@sess_username", Session["username"].ToString());
                    int num_rows = cmd.ExecuteNonQuery();
                    if(num_rows > 0)
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
            else
            {
                reg_msg.Text = "Invalid Username provided !";
                reg_msg.CssClass = "alert alert-danger";
                reg_msg.Visible = true;
            }
        }
    }
}