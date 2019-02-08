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
    public partial class Web_AC : System.Web.UI.Page
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

        protected void ac_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = ac_dropdown.SelectedItem.Value;
            string god = "Godrej";
            if (i == god)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_godrej2.jpg";
            }
            string kel = "Kelvinator";
            if (i == kel)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_kelvinator.jpg";
            }
            string haier = "Haier";
            if (i == haier)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_haier2.png";
            }
            string hitachi = "Hitachi";
            if (i == hitachi)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_hitachi2.png";
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
            string cb = "---choose brand---";
            if (i == cb)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
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
            string blue = "Blue Star";
            if (i == blue)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_bluestar.jpg";
            }
            string daikin = "Daikin";
            if (i == daikin)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_daikin.png";
            }
            string pan = "Panasonic";
            if (i == pan)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_panasonic.jpg";
            }
            string vd = "Videocon";
            if (i == vd)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_videocon.png";
            }
            string b = "Other";
            if (i == b)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
        }

        protected void btn_repair_Click(object sender, EventArgs e)
        {
            Session["brand"] = ac_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_ac.Text;
            Session["warranty"] = ac_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_ac_des.Text;
            Session["servicename"] = lbl_service.Text;
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email) values('" + lbl_service.Text + "','" + ac_dropdown.SelectedValue.ToString() + "','" + txt_ac.Text + "','" + ac_rb.SelectedValue.ToString() + "','" + txt_ac_des.Text + "','" + label_email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge.Text;
            Response.Redirect("~/Web_Details.aspx");
        }
    }
}