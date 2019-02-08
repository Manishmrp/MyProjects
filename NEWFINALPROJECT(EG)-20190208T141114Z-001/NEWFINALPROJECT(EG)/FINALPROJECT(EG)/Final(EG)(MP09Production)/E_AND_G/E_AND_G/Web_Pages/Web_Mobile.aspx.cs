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
    public partial class Web_Mobile : System.Web.UI.Page
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

        protected void mobile_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = mobile_dropdown.SelectedItem.Value;
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
            string nokia = "Nokia";
            if (i == nokia)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_nokia.png";
            }
            string samsung = "Samsung";
            if (i == samsung)
            {
                img_logo.ImageUrl = "~/TV_icon/logo_samsung.png";
            }
            string moto = "Motorola";
            if (i == moto)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_motorola.png";
            }
            string mi = "Mi";
            if (i == mi)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_mi.png";
            }
            string apple = "Apple";
            if (i == apple)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_apple.png";
            }
            string vivo = "Vivo";
            if (i == vivo)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_vivo.png";
            }
            string oppo = "Oppo";
            if (i == oppo)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_oppo.png";
            }
            string lava = "Lava";
            if (i == lava)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_lava.jpg";
            }
            string len = "Lenovo";
            if (i == len)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_lenovo.png";
            }
        }

        protected void btn_repaired_Click(object sender, EventArgs e)
        {
            Session["brand"] = mobile_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_mobile.Text;
            Session["warranty"] = mobile_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_mobile_ds.Text;
            Session["servicename"] = lbl_service.Text;
            Session["problem_related"] = mobile_problem_drop.SelectedValue.ToString();
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email) values('" + lbl_service.Text + "','" + mobile_dropdown.SelectedValue.ToString() + "','" + txt_mobile.Text + "','" + mobile_rb.SelectedValue.ToString() + "','" + txt_mobile_ds.Text + "','" + label_email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge2.Text;
            Response.Redirect("~/Web_Details.aspx");
        }

        protected void mobile_problem_drop_SelectedIndexChanged(object sender, EventArgs e)
        {
            String i = mobile_problem_drop.SelectedValue.ToString();
            string soft = "Software";
            if (i == soft)
            {
                txt_mobile_ds.Text = soft + " " + "Problem";
            }
            string hard = "Hardware";
            if (i == hard)
            {
                txt_mobile_ds.Text = hard + " " + "Problem";
            }

            string dk = "Dont Know";
            if(i==dk)
            {
                txt_mobile_ds.Text = dk + " " + "Problem";
            }
        }
    }
}