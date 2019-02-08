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
    public partial class Web_TV : System.Web.UI.Page
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

        protected void tv_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i=tv_dropdown.SelectedItem.Value;
            string aoc="AOC";
            if(i==aoc)
            {
            img_logo.ImageUrl = "~/TV_icon/logo_aoc.jpg";
            }
            string bpl = "BPL";
            if (i == bpl)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_bpl.jpg";
            }
            string haier = "Haier";
            if (i == haier)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_haier2.png";
            }
            string hitachi = "Hitachi";
            if (i == hitachi)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_hitachi2.png";
            }
            string lg = "LG";
            if (i == lg)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_lg.jpg";
            }
            string mitashi = "Mitashi";
            if (i == mitashi)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_mitashi.png";
            }
            string cb = "---choose brand---";
            if (i == cb)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
            string panasonic = "Panasonic";
            if (i == panasonic)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_panasonic.jpg";
            }
            string intex = "Intex";
            if (i == intex)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_intex2.png";
            }
            string micromax = "Micromax";
            if (i == micromax)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_micromax.jpg";
            }
            string onida = "Onida";
            if (i == onida)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_onida.png";
            }
            string philips = "Philips";
            if (i == philips)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_philips.png";
            }
            string samsung = "Samsung";
            if (i == samsung)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_samsung.png";
            }
            string sony = "Sony";
            if (i == sony)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_sony.png";
            }
            string videocon = "Videocon";
            if (i == videocon)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_videocon.png";
            }
            string lloyd = "Lloyd";
            if (i == lloyd)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_lloyd.jpeg";
            }
            string b = "Other";
            if (i == b)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["brand"] = tv_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_tv.Text;
            Session["warranty"] = tv_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_tv_des.Text;
            Session["servicename"] = lbl_service.Text;
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email,charge) values('" + lbl_service.Text + "','" + tv_dropdown.SelectedValue.ToString() + "','" + txt_tv.Text + "','" + tv_rb.SelectedValue.ToString() + "','" + txt_tv_des.Text + "','" + label_email.Text +"','"+lblcharge.Text+ "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge.Text;
            Response.Redirect("~/Web_Details.aspx");
        }

        

        

        
    }
}