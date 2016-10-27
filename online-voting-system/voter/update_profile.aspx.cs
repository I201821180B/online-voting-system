using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_voting_system.voter
{
    public partial class update_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() != "voter")
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }
            
        }

        protected void change_image_Click(object sender, EventArgs e)
        {
            Response.Redirect("update_picture.aspx");
        }
    }
}