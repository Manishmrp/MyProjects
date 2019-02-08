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
    public partial class Web_Machine : System.Web.UI.Page
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

        protected void washing_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = washing_dropdown.SelectedItem.Value;
            string blank = "---choose brand---";
            if (i == blank)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
            string lg = "LG";
            if (i == lg)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_lg.jpg";
            }
            string sam = "Samsung";
            if (i == sam)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_samsung.png";
            }
            string wl = "Whirlpool";
            if (i == wl)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_whirlpool.jpg";
            }
            string lloyd = "Lloyd";
            if (i == lloyd)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_lloyd.jpeg";
            }
            string god = "Godrej";
            if (i == god)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_godrej2.jpg";
            }
            string philips = "Philips";
            if (i == philips)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_philips.png";
            }
            string b = "Other";
            if (i == b)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
        }

        protected void btn_repaired_Click(object sender, EventArgs e)
        {
            Session["brand"] = washing_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_washing.Text;
            Session["warranty"] = machine_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_washing_des.Text;
            Session["servicename"] = lbl_service.Text;
           // Session["problem_related"] = problem_laptop_drop.SelectedValue.ToString();
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email) values('" + lbl_service.Text + "','" + washing_dropdown.SelectedValue.ToString() + "','" + txt_washing.Text + "','" + machine_rb.SelectedValue.ToString() + "','" + txt_washing_des.Text + "','" + label_email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge.Text;
            Response.Redirect("~/Web_Details.aspx");
        }
    }
}