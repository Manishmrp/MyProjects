﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace E_AND_G.Web_Pages
{
    public partial class Web_Lamination : System.Web.UI.Page
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

        protected void lamination_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = lamination_dropdown.SelectedItem.Value;
            string blank = "---choose brand---";
            if (i == blank)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
            string vms = "VMS";
            if (i == vms)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_vms.png";
            }
            string bme = "BME";
            if (i == bme)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_bme.png";
            }
            string texet = "Texet";
            if (i == texet)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_texet.png";
            }
            string bam = "Bambalio";
            if (i == bam)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_bambalio.jpg";
            }
            string b = "Other";
            if (i == b)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
        }

        protected void btn_repaired_Click(object sender, EventArgs e)
        {
            Session["brand"] = lamination_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_lamination.Text;
            Session["warranty"] = lamination_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_lamination_des.Text;
            Session["servicename"] = lbl_service.Text;
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email) values('" + lbl_service.Text + "','" + lamination_dropdown.SelectedValue.ToString() + "','" + txt_lamination.Text + "','" + lamination_rb.SelectedValue.ToString() + "','" + txt_lamination_des.Text + "','" + label_email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge.Text;
            Response.Redirect("~/Web_Details.aspx");
        }
    }
}