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
    public partial class Web_STB : System.Web.UI.Page
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

        protected void stb_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = stb_dropdown.SelectedItem.Value;
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
            string tata = "TATASKY";
            if (i == tata)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_tatasky.jpg";
            }
            string air = "Airtel";
            if (i == air)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_airtel.png";
            }
            string dish = "Dish Tv";
            if (i == dish)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_dishtv.png";
            }
            string vid = "Videocon";
            if (i == vid)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_videocon.png";
            }
        }

        protected void btn_repaired_Click(object sender, EventArgs e)
        {
            Session["brand"] = stb_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_stb.Text;
            Session["warranty"] = stb_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_stb_des.Text;
            Session["servicename"] = lbl_service.Text;
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email) values('" + lbl_service.Text + "','" + stb_dropdown.SelectedValue.ToString() + "','" + txt_stb.Text + "','" + stb_rb.SelectedValue.ToString() + "','" + txt_stb_des.Text + "','" + label_email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge.Text;
            Response.Redirect("~/Web_Details.aspx");
        }
    }
}