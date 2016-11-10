using System;

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
    }
}