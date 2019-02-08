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
    public partial class Web_Heater : System.Web.UI.Page
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

        protected void heater_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = heater_dropdown.SelectedItem.Value;
            string aos = "A.O.Smith";
            if (i == aos)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_aosmith.jpg";
            }
            string bajaj = "Bajaj";
            if (i == bajaj)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_bajaj.png";
            }
            string rac = "Racold";
            if (i == rac)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_racold.jpg";
            }
            string blank = "---choose brand---";
            if (i == blank)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }
            string havells = "Havells";
            if (i == havells)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_havells.jpeg";
            }
            string kenstar = "Kenstar";
            if (i == kenstar)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_kenstar.png";
            }
            string usha = "Usha";
            if (i == usha)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_usha.png";
            }
            string venus = "Venus";
            if (i == venus)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_venus.jpeg";
            }
            string vg = "V-Guard";
            if (i == vg)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_vguard.png";
            }
            string b = "Other";
            if (i == b)
            {
                img_logo.ImageUrl = "~/TV_icon/blank.png";
            }

        }

        protected void btn_repaired_Click(object sender, EventArgs e)
        {
            Session["brand"] = heater_dropdown.SelectedValue.ToString();
            Session["model_name"] = txt_heater.Text;
            Session["warranty"] = heater_rb.SelectedValue.ToString();
            Session["des_problem"] = txt_heater_des.Text;
            Session["servicename"] = lbl_service.Text;
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("insert into details_eg(elect_gadgets,brand_name,model_name,warranty_status,describe_problem,email) values('" + lbl_service.Text + "','" + heater_dropdown.SelectedValue.ToString() + "','" + txt_heater.Text + "','" + heater_rb.SelectedValue.ToString() + "','" + txt_heater_des.Text + "','" + label_email.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_service.Text = "Saved";
            Session["chr"] = lblcharge.Text;
            Response.Redirect("~/Web_Details.aspx");
        }
    }
}