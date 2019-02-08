using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.OleDb;
using System.Data;
using System.Web.UI.WebControls;

namespace E_AND_G
{
    public partial class forg1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            que.Text = Session["que"].ToString();
         //   ans.Text = Session["ans"].ToString();
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            if (ans.Text != Session["ans"].ToString())
            {
                err2.Text = "Answer is incorrect";

            }
            else 
            {
                if (pwd.Text != cpwd.Text)
                {
                    err2.Text = "Password and Confirm Password doesn't match";
                }
                else 
                {
                    OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
                    OleDbCommand cmd = new OleDbCommand("update register_eg set password='" + pwd.Text + "' where s_answer='" + ans.Text + "'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    err2.Text = "Detail Saved Successfully!!";
                    Response.Redirect("Sign_in.aspx");
                    que.Text = " ";
                }
        
            }
        }
    }
}