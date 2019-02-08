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
    public partial class Web_Contact : System.Web.UI.Page
    { 
        
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            //OleDbCommand cmd = new OleDbCommand("Select * from register_eg where email='"+txttest.Text+"'", con);
            OleDbCommand cmd = new OleDbCommand("Select * from register_eg where email='" + Session["uid"] + "'", con);
           // OleDbCommand cmd1 = new OleDbCommand("Select * from details_eg where email='" + lbl_display.Text + "'", con);
            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            //OleDbDataReader dr1 = cmd1.ExecuteReader();

            if (dr.Read())
            {
                String fname = dr["f_name"].ToString();
                String lname = dr["l_name"].ToString();
                String lemail = dr["email"].ToString();
                txtname.Text = fname + " " + lname;
                txtemail.Text = lemail;
                

            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "DONE!!";
        }
    }
}