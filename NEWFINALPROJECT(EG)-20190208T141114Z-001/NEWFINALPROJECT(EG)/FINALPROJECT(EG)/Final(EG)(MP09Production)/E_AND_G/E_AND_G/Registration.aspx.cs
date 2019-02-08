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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void register_Click(object sender, EventArgs e)
        {
            
            OleDbConnection con=new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd1 = new OleDbCommand("Select email from register_eg where email='" + email.Text + "'", con);           
           
           
            con.Open();
            OleDbDataReader dr = cmd1.ExecuteReader();

            if (dr.Read())//if select reads something then should though error
            {
                l_email.Text = "Email Already Exists";
            }
            else
            {
                OleDbCommand cmd = new OleDbCommand("Insert into register_eg (f_name,l_name,gender,dob,email,phone_no,password,s_answer,s_question) values('" + fname.Text + "','" + lname.Text + "','" + DropDowngender.SelectedValue.ToString() + "','" + dob.Text + "','" + email.Text + "','" + phnnumber.Text + "','" + password.Text +"','"+s_question.Text+"','"+question_drop.SelectedValue.ToString()+ "')", con);
                cmd.ExecuteNonQuery();
                rslt.Text = "Successfully Registered";
                Response.Redirect("Sign_in.aspx");
            }

            con.Close();
        }
    }
}