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
    public partial class Web_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            l_date.Text = DateTime.Now.ToString();
            if (Session["uid"] != null)
            {
                String email = Session["uid"].ToString();
                //txttest.Text = email;
                label_email.Text = email;
            }
            else
            {
                Response.Redirect("~/Sign_in.aspx");
                //label_email.Text = "You are not Logged in!";
               // btn_proceed.Visible = false;
            }
        }

        protected void btn_proceed_Click(object sender, EventArgs e)
        {
            Session["address"] = txt_address.Text;
            Session["landmark"] = txt_landmark.Text;
            Session["phone_no"] = txt_phone_number.Text;
            Session["zipcode"] = txt_zip.Text;
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("update details_eg set address='" + txt_address.Text + "', zipcode='" + txt_zip.Text + "',phone_no='" + txt_phone_number.Text + "',landmark='" + txt_landmark.Text +"',date_time='"+l_date.Text+ "' where email='"+label_email.Text+"'", con);
            //OleDbCommand cmd = new OleDbCommand("insert into details_eg(address,zipcode,phone_no,landmark,date_time) values('" + txt_address.Text + "','" + txt_zip.Text + "','" + txt_phone_number.Text + "','" + txt_landmark.Text + "','" + l_date.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Saved";
            Response.Redirect("Web_Report.aspx");

        }
    }
}