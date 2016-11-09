using System;

namespace online_voting_system.admin
{
    public partial class _default : System.Web.UI.Page
    {
        public readonly String ADMIN_UNAME = "admin";
        public readonly String ADMIN_PASS = "adminpass123";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"] != null)
            {
                Response.Redirect("home.aspx");
            }
        }

        protected void admin_login_btn_Click(object sender, EventArgs e)
        {
            String uname = admin_uname.Text.ToString();
            String pass = admin_pass.Text.ToString(); 
            if(uname == ADMIN_UNAME && pass == ADMIN_PASS)
            {
                Session["admin"] = "admin_user";
                Response.Redirect("home.aspx");
            }
        }
    }
}