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
    public partial class Reset_Pass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Reset_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("update register_eg set password='" + txt_pass.Text + "' where s_answer='" + txt_answer.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            //result.Text = "Detail Saved Successfully!!";
            Response.Redirect("Sign_in.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd1 = new OleDbCommand("Select * from register_eg where s_answer='" + txt_answer.Text + "'", con);
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