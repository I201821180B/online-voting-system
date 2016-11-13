using System;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace online_voting_system.organization
{
    public partial class register_for_election : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() != "organization")
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }
        }

        protected void reg_elec_btn_Click(object sender, EventArgs e)
        {
            String electionName = elec_name.SelectedValue.ToString();
            String candidateName = candidate_name.SelectedValue.ToString();
            if(electionName != "NA" && candidateName != "NA")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = WebConfigurationManager.ConnectionStrings["db_conn"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                // validation whether the organization has registered only one candidate or not  
                cmd.CommandText = "SELECT E_Id FROM Candidate_Reg WHERE O_id = (SELECT O_Id from org_table WHERE User_Name = @sess_uname)";
                cmd.Parameters.AddWithValue("@sess_uname",Session["username"].ToString());
                SqlDataReader checker = cmd.ExecuteReader(); 
                if(checker.HasRows)
                {
                    checker.Close();
                    reg_msg.Visible = true;
                    reg_msg.Text = "Sorry, You are allowed to register only once !";
                }
                else
                {
                    //validate whether the organization tries to register candidate on the day of election 
                    checker.Close();
                    cmd.CommandText = "SELECT vote_date FROM election WHERE E_Name = @e_name";
                    cmd.Parameters.AddWithValue("@e_name", electionName);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            if (rdr["vote_date"].ToString() == DateTime.Now.Date.ToString())
                            {
                                reg_msg.Visible = true;
                                reg_msg.Text = "Candidate Cannot Register on the day of Election";
                            }
                            else
                            {
                                //ok, allowed to register for election
                                cmd.CommandText = "UPDATE Candidate_Reg SET E_Id = (SELECT E_Id FROM election WHERE E_Name = @e_name) WHERE Name = @can_name";
                                cmd.Parameters.AddWithValue("@e_name", electionName);
                                cmd.Parameters.AddWithValue("@can_name", candidateName);
                                int num_rows = cmd.ExecuteNonQuery();
                                if (num_rows > 0)
                                {
                                    Response.Redirect("home.aspx");
                                }
                                con.Close();
                            }
                        }
                    }
                }
            }
            else
            {
                reg_msg.Visible = true;
                reg_msg.Text = "Please, Enter Some Value !";
            }
        }
    }
}