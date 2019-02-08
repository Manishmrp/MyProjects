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
    public partial class Forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
          //      txt_answer.Visible = false;
           //     Button2.Visible = false;
            
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd1 = new OleDbCommand("Select * from register_eg where email='" + txt_email.Text + "'", con);
            con.Open();
            OleDbDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                String data = dr["s_question"].ToString();
                String data2 = dr["s_answer"].ToString();
                Label1.Text = data;
                //txt_answer.Text = data2;
                if (txt_answer.Text == data2)
                {
                    Label2.Text = "DONE";
                }
                con.Close();
                //txt_answer.Visible = true;
                //Button2.Visible = true;
            }
            else
            {
                Label1.Text = "Email does not Exist!!";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd1 = new OleDbCommand("Select * from register_eg where email='" + txt_email.Text + "'", con);
            con.Open();
            OleDbDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                String data2 = dr["s_answer"].ToString();
                if (txt_answer.Text == data2)
                {
                    //Label2.Text = "Correct Answer";
                    Response.Redirect("WebForm1.aspx");
                }
                else if (txt_answer.Text == "")
                {
                    Label2.Text = "Enter Answer";
                }
                else
                {
                    Label2.Text = "Wrong Answer!!!";
                }
                con.Close();
            }
            else
            {
                Label2.Text = "Something went wrong!!";
                Label1.Text = "Email or Answer Does not Exist!!";
            }

        }
}
}

        
        
        
        
        
