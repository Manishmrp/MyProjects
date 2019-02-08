using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Sanjeet_WebApp
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-RBE4AR6\SQLEXPRESS;Initial Catalog=SanjeetDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                string tname=DropDownList1.SelectedItem.Value.ToString();
                SqlCommand cmd = new SqlCommand("insert into tbl_CURRY values('" + txtName.Text.ToString() + "','" + txtPrice.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Record inserted successfully";
                Response.Redirect("Admin.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}