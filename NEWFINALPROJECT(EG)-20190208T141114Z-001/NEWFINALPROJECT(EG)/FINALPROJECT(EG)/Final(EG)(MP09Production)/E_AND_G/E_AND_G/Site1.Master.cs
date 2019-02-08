using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_AND_G
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signout_Click(object sender, EventArgs e)
        {
            Session["uid"] = null;
            Response.Redirect("Sign_in.aspx");
        }
    }
}