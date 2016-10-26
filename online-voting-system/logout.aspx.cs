using System;

namespace online_voting_system
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String logout_msg = "You Have Logged Out !";
            Session.Abandon();
            Response.Redirect("login.aspx?msg="+logout_msg);
        }
    }
}