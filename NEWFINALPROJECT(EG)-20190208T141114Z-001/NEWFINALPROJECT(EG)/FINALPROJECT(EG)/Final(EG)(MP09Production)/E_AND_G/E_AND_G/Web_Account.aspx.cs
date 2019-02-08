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
    public partial class Web_Account : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                String email = Session["uid"].ToString();
            }
            else
            {
                Response.Redirect("Sign_in.aspx");
            }
            if (!IsPostBack)
            {
                OleDbCommand cd = new OleDbCommand("select * from register_eg where email='" + Session["uid"] + "'", con);
                con.Open();
                OleDbDataReader ddr = cd.ExecuteReader();
                if (ddr.Read())
                {
                    txt_fname.Text = ddr["f_name"].ToString();
                    txt_lname.Text = ddr["l_name"].ToString();
                    gender_dropdown.Text = ddr["gender"].ToString();
                    //txt_oldpassword.Text = dr1["password"].ToString();
                    txt_phone.Text = ddr["phone_no"].ToString();
                    s_question_drop.Text = ddr["s_question"].ToString();
                    txt_s_answer.Text = ddr["s_answer"].ToString();
                    txt_dob.Text = ddr["dob"].ToString();
                }
                else
                {
                    result.Text = "Something Went Wrong!!";
                }
                con.Close();
            }
            lbl_email.Text = Session["uid"].ToString();
           /* OleDbCommand cmd1 = new OleDbCommand("select * from register_eg where email='" + Session["uid"] + "'", con);
            con.Open();
            OleDbDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                lbl_fname.Text = dr1["f_name"].ToString();
                lbl_lname.Text = dr1["l_name"].ToString();
                lbl_gender.Text = dr1["gender"].ToString();
                //txt_oldpassword.Text = dr1["password"].ToString();
                lbl_phone_no.Text = dr1["phone_no"].ToString();
                lbl_s_question.Text = dr1["s_question"].ToString();
                lbl_s_answer.Text = dr1["s_answer"].ToString();
                lbl_dob.Text = dr1["dob"].ToString();
            }
            else
            { }
            con.Close();*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            OleDbCommand cmd = new OleDbCommand("update register_eg set f_name='" + txt_fname.Text + "', l_name='" + txt_lname.Text + "', gender='" + gender_dropdown.SelectedValue.ToString() + "', dob='" + txt_dob.Text + "', phone_no='" + txt_phone.Text + "', password='" + txt_newpassword.Text +"', s_answer='"+txt_s_answer.Text+"',s_question='"+s_question_drop.SelectedValue.ToString()+ "' where email='" + lbl_email.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            result.Text = "Detail Saved Successfully!!";
            
        }
    }
}