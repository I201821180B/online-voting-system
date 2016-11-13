using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_voting_system.voter
{
    public partial class vote_action : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() != "voter")
            {
                Session.Abandon();
                Response.Redirect("../login.aspx");
            }
        }

        protected void vote_can_btn_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "VoteCanBtn")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
                string cid = commandArgs[0];
                string oid = commandArgs[1];
                string eid = commandArgs[2];
                Server.Transfer("add_vote.aspx?cid="+cid+"&oid="+oid+"&eid="+eid);
            }
        }
    }
}