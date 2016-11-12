using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_voting_system.admin
{
    public partial class add_election : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"].ToString() != "admin")
            {
                Session.Abandon();
                Response.Redirect("../default.aspx");
            }
            DateValidator.ValueToCompare = DateTime.Now.ToShortDateString();
        }

        protected void add_elec_btn_Click(object sender, EventArgs e)
        {

        }
    }
}