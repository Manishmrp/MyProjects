using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace E_AND_G
{
    public partial class Web_Feedback : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                String email = Session["uid"].ToString();
                //txttest.Text = email;
                //label_email.Text = email;
            }
            else
            {
                Response.Redirect("~/Sign_in.aspx");
                //label_email.Text = "You are not Logged in!!";
                //btn_repaired.Visible = false;
            }
            OleDbCommand cmd1 = new OleDbCommand("select * from feedback_eg", con);
            con.Open();
            OleDbDataReader dr = cmd1.ExecuteReader();
           /* if (dr.Read())
            {
                txt_reviews.Text = dr["feed"].ToString();
            }
            else
            {
                txt_reviews.Text = "No Reviews";
            }*/
            OleDbCommand cdn = new OleDbCommand("select f_name, l_name from register_eg where email='" + Session["uid"] + "'", con);
            OleDbDataReader ddr = cdn.ExecuteReader();
            if (ddr.Read())
            {
                String fnm = ddr["f_name"].ToString();
                String lnm = ddr["l_name"].ToString();
                String nme = fnm +" "+ lnm;
                Session["nme"] = nme;
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                String email = Session["uid"].ToString();
                label_display.Text = DateTime.Now.ToString();
                OleDbCommand cmd = new OleDbCommand("insert into feedback_eg(feed,email,date_time) values('" + txt_feed.Text + "','" + Session["nme"] + "','" + label_display.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Web_Feedback.aspx");
            
            
        }
    }
}