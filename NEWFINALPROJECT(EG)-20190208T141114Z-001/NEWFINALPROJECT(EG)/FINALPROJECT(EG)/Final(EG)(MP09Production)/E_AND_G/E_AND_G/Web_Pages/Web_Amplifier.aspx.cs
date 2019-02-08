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
    public partial class Web_Amplifier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                String email = Session["uid"].ToString();
                //txttest.Text = email;
                label_email.Text = email;
            }
            else
            {
                Response.Redirect("~/Sign_in.aspx");
                //label_email.Text = "You are not Logged in!!";
                //btn_repaired.Visible = false;
            }
        }

        protected void amp_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = amp_dropdown.SelectedItem.Value;
            string blank = "---choose brand---";
            if (i == blank)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
            string b = "Other";
            if (i == b)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
            string sony = "Sony";
            if (i == sony)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_sony.png";
            }
            string ahu = "AHUJA";
            if (i == ahu)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_ahuja.png";
            }
            string trp = "TRP";
            if (i == trp)
            {
                img_logo.ImageUrl = "~/ref_icon/blank.png";
            }

        }

        protected void btn_repaired_Click(object sender, EventArgs e)
        {
            Session["brand"] = amp_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_amp.Text;
            Session["warranty"] = amp_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_amp_des.Text;
            Session["servicename"] = lbl_service.Text;
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email) values('" + lbl_service.Text + "','" + amp_dropdown.SelectedValue.ToString() + "','" + txt_amp.Text + "','" + amp_rb.SelectedValue.ToString() + "','" + txt_amp_des.Text + "','" + label_email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge.Text;
            Response.Redirect("~/Web_Details.aspx");
        }
    }
}