using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Sanjeet_WebApp
{
    public partial class HomeMain : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            ddl_qty.Visible = false;
        }

        protected void btn_starters_Click(object sender, EventArgs e)
        {
            lblvalues.Text = "";
            int sum = 0;
            foreach (ListItem lst in CheckBoxList1.Items)
            {
                
                
                if (lst.Selected == true)
                {
                    OleDbCommand cd = new OleDbCommand("select Price from tbl_starters where List='" + lst + "'", con);
                    OleDbDataReader ddr = cd.ExecuteReader();
                    if (ddr.Read())
                    {
                        lblprice.Text = ddr["Price"].ToString();
                        lblprice.Visible = false;
                    }
                    else
                    {
                        lblprice.Text = "Price Not Found!";
                    }
                    lblvalues.Text += "<b>Selected Item From Starters:</b> " + lst.Text + " <b>Price</b> " + lblprice.Text + "<br />";
                    int a = Int32.Parse(lblprice.Text);
                    sum = sum + a;
                }

            }
            lbltotal.Text = "Total Price:" + sum;
            con.Close();
        }

        protected void btn_show_Click(object sender, EventArgs e)
        {
            //Response.Write(lblvalues.Text);
        }

        
    }
}