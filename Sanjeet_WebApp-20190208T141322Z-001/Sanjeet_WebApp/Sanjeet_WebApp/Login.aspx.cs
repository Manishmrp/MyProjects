using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sanjeet_WebApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            if (txtLog.Text == "3009")
            {
                Session["uid"]=txtLog.Text;
                Response.Redirect("Main.aspx");
            }
            else
            {
                errorDisplay.Text="Wrong Passcode!";
            }
        }
    }
}