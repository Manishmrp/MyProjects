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
    public partial class Web_Laptop : System.Web.UI.Page
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

        protected void laptop_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = laptop_dropdown.SelectedItem.Value;
            string blank = "---choose brand---";
            if (i == blank)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
            string b = "Other";
            if (i == b)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            } string acer = "Acer";
            if (i == acer)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_acer.png";
            }
            string toshiba = "Toshiba";
            if (i == toshiba)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_toshiba.png";
            }
            string hp = "HP";
            if (i == hp)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_hp.png";
            }
            string dell = "Dell";
            if (i == dell)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_dell.jpg";
            }

            string apple = "Apple";
            if (i == apple)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_apple.png";
            }

            string len = "Lenovo";
            if (i == len)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_lenovo.png";
            }
        }

        protected void btn_repaired_Click(object sender, EventArgs e)
        {
            Session["brand"] = laptop_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_laptop.Text;
            Session["warranty"] = laptop_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_laptop_des.Text;
            Session["servicename"] = lbl_service.Text;
            Session["problem_related"] = problem_laptop_drop.SelectedValue.ToString();
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email) values('" + lbl_service.Text + "','" + laptop_dropdown.SelectedValue.ToString() + "','" + txt_laptop.Text + "','" + laptop_rb.SelectedValue.ToString() + "','" + txt_laptop_des.Text + "','" + label_email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge2.Text;
            Response.Redirect("~/Web_Details.aspx");
        }

        protected void problem_laptop_drop_SelectedIndexChanged(object sender, EventArgs e)
        {
            String i = problem_laptop_drop.SelectedValue.ToString();
            string soft = "Software";
            if (i == soft)
            {
                txt_laptop_des.Text = soft + " " + "Problem";
            }
            string hard = "Hardware";
            if (i == hard)
            {
                txt_laptop_des.Text = hard + " " + "Problem";
            }

            string dk = "Dont Know";
            if (i == dk)
            {
                txt_laptop_des.Text = dk + " " + "Problem";
            }
        }
    }
}