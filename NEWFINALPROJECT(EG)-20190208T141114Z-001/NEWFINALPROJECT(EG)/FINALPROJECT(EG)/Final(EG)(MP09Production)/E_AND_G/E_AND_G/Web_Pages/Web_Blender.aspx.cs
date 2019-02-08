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
    public partial class Web_Blender : System.Web.UI.Page
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

        protected void blender_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = blender_dropdown.SelectedItem.Value;
            string blank = "---choose brand---";
            if (i == blank)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }

            string bajaj = "Bajaj";
            if (i == bajaj)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_bajaj.png";
            }
            string usha = "Usha";
            if (i == usha)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_usha.png";
            }
            string prestige = "Prestige";
            if (i == prestige)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_prestige.png";
            }
            string philips = "Philips";
            if (i == philips)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_philips.png";
            }
            string crompton = "Crompton";
            if (i == crompton)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_crompton.jpg";
            }
            string havells = "Havells";
            if (i == havells)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_havells.jpeg";
            }
            string pigeon = "Pigeon";
            if (i == pigeon)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_pigeon.png";
            }
            string b = "Other";
            if (i == b)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
        }

        protected void btn_repaired_Click(object sender, EventArgs e)
        {
            Session["brand"] = blender_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_blender.Text;
            Session["warranty"] = blender_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_blender_des.Text;
            Session["servicename"] = lbl_service.Text;
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email) values('" + lbl_service.Text + "','" + blender_dropdown.SelectedValue.ToString() + "','" + txt_blender.Text + "','" + blender_rb.SelectedValue.ToString() + "','" + txt_blender_des.Text + "','" + label_email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge.Text;
            Response.Redirect("~/Web_Details.aspx");
        }
    }
}