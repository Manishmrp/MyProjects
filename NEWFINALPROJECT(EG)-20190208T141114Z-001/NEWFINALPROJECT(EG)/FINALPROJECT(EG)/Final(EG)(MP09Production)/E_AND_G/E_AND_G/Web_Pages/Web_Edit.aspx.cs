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
    public partial class Web_Edit : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand("select * from register_eg where email='" + Session["uid"] + "'", con);
            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                String spc = " ";
                l_name.Text = dr["f_name"].ToString() +spc+ dr["l_name"].ToString();
                l_gender.Text = dr["gender"].ToString();
                l_dob.Text = dr["dob"].ToString();
                l_phn.Text = dr["phone_no"].ToString();
                l_question.Text = dr["s_question"].ToString();
                l_answer.Text = dr["s_answer"].ToString();
            }
            else
            {
                l_name.Text = "Nothing to display!";
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand("update register_eg set f_name='" + txt_fname.Text + "', l_name='" + txt_lname.Text +"'where email='"+Session["uid"]+ "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Web_Edit.aspx");
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btn_save_gender_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd1 = new OleDbCommand("update register_eg set gender='" + ddl_gender.SelectedValue.ToString() +"'where email='" + Session["uid"] + "'", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Web_Edit.aspx");
        }

        protected void btn_save_dob_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd2 = new OleDbCommand("update register_eg set dob='" + txt_date.Text + "'where email='" + Session["uid"] + "'", con);
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Web_Edit.aspx");
        }

        protected void btn_save_phn_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd3 = new OleDbCommand("update register_eg set phone_no='" + txt_phone.Text + "'where email='" + Session["uid"] + "'", con);
            con.Open();
            cmd3.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Web_Edit.aspx");
        }

        protected void btn_save_secty_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd4 = new OleDbCommand("update register_eg set s_answer='" + txt_answer.Text +"', s_question='"+ddl_qust.SelectedValue.ToString()+ "'where email='" + Session["uid"] + "'", con);
            con.Open();
            cmd4.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Web_Edit.aspx");
        }

        protected void btn_save_pas_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd5 = new OleDbCommand("update register_eg set password='" + txt_pass.Text + "'where email='" + Session["uid"] + "'", con);
            con.Open();
            cmd5.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Web_Edit.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_Account.aspx");
        }
    }
}