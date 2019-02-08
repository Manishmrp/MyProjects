using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_AND_G
{
    public partial class forg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd1 = new OleDbCommand("Select * from register_eg where email='" + email.Text + "'", con);
            con.Open();
            OleDbDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                String que = dr["s_question"].ToString();
                String ans = dr["s_answer"].ToString();
               
                Session["que"]=que;
                Session["ans"] = ans;
                con.Close();
                Response.Redirect("forg1.aspx");
           
           }
            else
            {
                error1.Text = "Email does not Exist!!";
            }
        }
    }
}