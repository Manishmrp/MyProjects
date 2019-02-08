using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace E_AND_G.Web_Pages
{
    public partial class Sign_in : System.Web.UI.Page
    {
        //Sign In page is under Web_Page Folder!!
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {

            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void Btn_Signin_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            con.Open();
            OleDbCommand cmd = new OleDbCommand("select email, password from register_eg where email='" + txt_email.Text + "'and password='" + txt_password.Text + "'", con);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                String uid = dr["email"].ToString();

                Session["uid"] = txt_email.Text;
                Response.Redirect("~/Webform1.aspx");
            }
            else
            {
                Label1.Text = "check email or password!!";
            }
            con.Close();
        }
    }
}