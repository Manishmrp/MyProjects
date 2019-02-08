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
    public partial class Main : System.Web.UI.Page
    {
        
        //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-RBE4AR6\SQLEXPRESS;Initial Catalog=SanjeetDB;Integrated Security=True");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            con.Open();
            lbltemp.Visible = false;
            btnNext.Visible = false;
            totaltitle.Visible = false;
            l_custname.Visible = false;
            lblDate.Text = DateTime.Now.ToString("dd.MM.yyyy").ToString();
            Session["onlyDate"] = lblDate.Text;
        }

        
        protected void btnStarters_Click(object sender, EventArgs e)
        {
            int price = 0; int q_price = 0; string qty="";
            try
            {
                //fetching price of product
                SqlCommand cmd = new SqlCommand("select Price from tbl_Starters where List='" + txtStartersName.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    price = (int)dr["price"];
                }
                dr.Close();
                if (ddlStarters.SelectedItem.Value == "1/2")
                {
                    q_price = price / 2;
                    qty="1/2";
                }
                if (ddlStarters.SelectedItem.Value == "1")
                {
                    q_price = price;
                    qty = "1";
                }
                if (ddlStarters.SelectedItem.Value == "2")
                {
                    q_price = price*2;
                    qty = "2";
                }
                if (ddlStarters.SelectedItem.Value == "3")
                {
                    q_price = price*3;
                    qty = "3";
                }
                if (ddlStarters.SelectedItem.Value == "4")
                {
                    q_price = price*4;
                    qty = "4";
                }
                if (ddlStarters.SelectedItem.Value == "5")
                {
                    q_price = price*5;
                    qty = "5";
                }
                //storing to the temporary table
                SqlCommand cmd2 = new SqlCommand("insert into tbl_List1(Product_Name,Quantity,Unit_Price,Price_To_Pay) values('"+txtStartersName.Text+"','"+qty+"','"+price+"','"+q_price+"')",con);
                cmd2.ExecuteNonQuery();
                //lbl_totalStarters.Text = "Done!";
                Response.Redirect("Main.aspx");
                con.Close();

            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }
        

        protected void btnCurry_Click(object sender, EventArgs e)
        {
            int price = 0; int q_price = 0; string qty = "";
            try
            {
                //fetching price of product
                SqlCommand cmd = new SqlCommand("select Price from tbl_Curry where Curry_Name='" + txtCurryName.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    price = (int)dr["price"];
                }
                dr.Close();
                if (ddlCurry.SelectedItem.Value == "1/2")
                {
                    q_price = price / 2;
                    qty = "1/2";
                }
                if (ddlCurry.SelectedItem.Value == "1")
                {
                    q_price = price;
                    qty = "1";
                }
                if (ddlCurry.SelectedItem.Value == "2")
                {
                    q_price = price * 2;
                    qty = "2";
                }
                if (ddlCurry.SelectedItem.Value == "3")
                {
                    q_price = price * 3;
                    qty = "3";
                }
                if (ddlCurry.SelectedItem.Value == "4")
                {
                    q_price = price * 4;
                    qty = "4";
                }
                if (ddlCurry.SelectedItem.Value == "5")
                {
                    q_price = price * 5;
                    qty = "5";
                }
                //storing to the temporary table
                SqlCommand cmd2 = new SqlCommand("insert into tbl_List1(Product_Name,Quantity,Unit_Price,Price_To_Pay) values('" + txtCurryName.Text + "','" + qty + "','" + price + "','" + q_price + "')", con);
                cmd2.ExecuteNonQuery();
                //lbl_totalStarters.Text = "Done!";
                Response.Redirect("Main.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void btnSnacks_Click(object sender, EventArgs e)
        {
            int price = 0; int q_price = 0; string qty = "";
            try
            {
                //fetching price of product
                SqlCommand cmd = new SqlCommand("select Price from tbl_Snacks where Snacks_Name='" + txtSnacksName.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    price = (int)dr["price"];
                }
                dr.Close();
                if (ddlSnacks.SelectedItem.Value == "1/2")
                {
                    q_price = price / 2;
                    qty = "1/2";
                }
                if (ddlSnacks.SelectedItem.Value == "1")
                {
                    q_price = price;
                    qty = "1";
                }
                if (ddlSnacks.SelectedItem.Value == "2")
                {
                    q_price = price * 2;
                    qty = "2";
                }
                if (ddlSnacks.SelectedItem.Value == "3")
                {
                    q_price = price * 3;
                    qty = "3";
                }
                if (ddlSnacks.SelectedItem.Value == "4")
                {
                    q_price = price * 4;
                    qty = "4";
                }
                if (ddlSnacks.SelectedItem.Value == "5")
                {
                    q_price = price * 5;
                    qty = "5";
                }
                //storing to the temporary table
                SqlCommand cmd2 = new SqlCommand("insert into tbl_List1(Product_Name,Quantity,Unit_Price,Price_To_Pay) values('" + txtSnacksName.Text + "','" + qty + "','" + price + "','" + q_price + "')", con);
                cmd2.ExecuteNonQuery();
                //lbl_totalStarters.Text = "Done!";
                Response.Redirect("Main.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

        }

        protected void btnRice_Click(object sender, EventArgs e)
        {
            int price = 0; int q_price = 0; string qty = "";
            try
            {
                //fetching price of product
                SqlCommand cmd = new SqlCommand("select Price from tbl_Rice where Rice_Name='" + txtRiceName.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    price = (int)dr["price"];
                }
                dr.Close();
                if (ddlRice.SelectedItem.Value == "1/2")
                {
                    q_price = price / 2;
                    qty = "1/2";
                }
                if (ddlRice.SelectedItem.Value == "1")
                {
                    q_price = price;
                    qty = "1";
                }
                if (ddlRice.SelectedItem.Value == "2")
                {
                    q_price = price * 2;
                    qty = "2";
                }
                if (ddlRice.SelectedItem.Value == "3")
                {
                    q_price = price * 3;
                    qty = "3";
                }
                if (ddlRice.SelectedItem.Value == "4")
                {
                    q_price = price * 4;
                    qty = "4";
                }
                if (ddlRice.SelectedItem.Value == "5")
                {
                    q_price = price * 5;
                    qty = "5";
                }
                //storing to the temporary table
                SqlCommand cmd2 = new SqlCommand("insert into tbl_List1(Product_Name,Quantity,Unit_Price,Price_To_Pay) values('" + txtRiceName.Text + "','" + qty + "','" + price + "','" + q_price + "')", con);
                cmd2.ExecuteNonQuery();
                //lbl_totalStarters.Text = "Done!";
                Response.Redirect("Main.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

        }

        protected void btnNoodles_Click(object sender, EventArgs e)
        {
            int price = 0; int q_price = 0; string qty = "";
            try
            {
                //fetching price of product
                SqlCommand cmd = new SqlCommand("select Price from tbl_Noodles where Noodles_Name='" + txtNoodlesName.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    price = (int)dr["price"];
                }
                dr.Close();
                if (ddlNoodles.SelectedItem.Value == "1/2")
                {
                    q_price = price / 2;
                    qty = "1/2";
                }
                if (ddlNoodles.SelectedItem.Value == "1")
                {
                    q_price = price;
                    qty = "1";
                }
                if (ddlNoodles.SelectedItem.Value == "2")
                {
                    q_price = price * 2;
                    qty = "2";
                }
                if (ddlNoodles.SelectedItem.Value == "3")
                {
                    q_price = price * 3;
                    qty = "3";
                }
                if (ddlNoodles.SelectedItem.Value == "4")
                {
                    q_price = price * 4;
                    qty = "4";
                }
                if (ddlNoodles.SelectedItem.Value == "5")
                {
                    q_price = price * 5;
                    qty = "5";
                }
                //storing to the temporary table
                SqlCommand cmd2 = new SqlCommand("insert into tbl_List1(Product_Name,Quantity,Unit_Price,Price_To_Pay) values('" + txtNoodlesName.Text + "','" + qty + "','" + price + "','" + q_price + "')", con);
                cmd2.ExecuteNonQuery();
                //lbl_totalStarters.Text = "Done!";
                Response.Redirect("Main.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

        }

        protected void Dessert_Click(object sender, EventArgs e)
        {
            int price = 0; int q_price = 0; string qty = "";
            try
            {
                //fetching price of product
                SqlCommand cmd = new SqlCommand("select Price from tbl_Dessert where Dessert_Name='" + txtDessertName.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    price = (int)dr["price"];
                }
                dr.Close();
                if (ddlDessert.SelectedItem.Value == "1/2")
                {
                    q_price = price / 2;
                    qty = "1/2";
                }
                if (ddlDessert.SelectedItem.Value == "1")
                {
                    q_price = price;
                    qty = "1";
                }
                if (ddlDessert.SelectedItem.Value == "2")
                {
                    q_price = price * 2;
                    qty = "2";
                }
                if (ddlDessert.SelectedItem.Value == "3")
                {
                    q_price = price * 3;
                    qty = "3";
                }
                if (ddlDessert.SelectedItem.Value == "4")
                {
                    q_price = price * 4;
                    qty = "4";
                }
                if (ddlDessert.SelectedItem.Value == "5")
                {
                    q_price = price * 5;
                    qty = "5";
                }
                //storing to the temporary table
                SqlCommand cmd2 = new SqlCommand("insert into tbl_List1(Product_Name,Quantity,Unit_Price,Price_To_Pay) values('" + txtDessertName.Text + "','" + qty + "','" + price + "','" + q_price + "')", con);
                cmd2.ExecuteNonQuery();
                //lbl_totalStarters.Text = "Done!";
                Response.Redirect("Main.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }


        }

      
        protected void btnClearAll_Click(object sender, EventArgs e)
        {
            string prevPage = Request.UrlReferrer.ToString();
            Response.Redirect(prevPage);

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            totaltitle.Visible = true;
            btnNext.Visible = true;
            //lbldisplay.Text=lblStarters.Text+"<br/>"+lblCurry.Text+"<br/>"+lblSnacks.Text+"<br/>"+lblRice.Text+"<br/>"+lblNoodles.Text+"<br/>"+lblDessert.Text;
            
           // RequiredFieldValidator1.Visible = true;
           // txtTotal.Visible = true;
            l_custname.Text = txtName.Text;
            Session["c_name"] = l_custname.Text;
            Session["c_contact"] = txtContact.Text;
            Session["c_address"] = txtAddr.Text;
            Session["c_pay"] = ddlPayment.SelectedItem.Value;
            lbldisplay.Text = "";
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                lbldisplay.Text = lbldisplay.Text + GridView1.Rows[i].Cells[2].Text.ToString() + "|Quantity:" + GridView1.Rows[i].Cells[3].Text.ToString() + "|Unit Price:" + GridView1.Rows[i].Cells[4].Text.ToString() + "|Price to Pay:" + GridView1.Rows[i].Cells[5].Text.ToString() + "<br/>";
            }
            showTotal.Text = lblTotalAmount.Text;
            Session["bill_content"] = lbldisplay.Text;
            Session["payMode"] = ddlPayment.SelectedItem.Value.ToString();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (showTotal.Text == "0")
            {
                showTotal.Text = "ERROR::Unable To Calculate";
            }
            else
            {
                Response.Redirect("Page1.aspx");
            }
            
        }
        
        protected void btnSum_Click(object sender, EventArgs e)
        {
           
            //*******************Total*********************************//
            double sum = 0.0;
            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                //sum = sum + int.Parse(GridView1.Rows[i].Cells[5].Text.ToString());
                sum = sum + double.Parse(GridView1.Rows[i].Cells[5].Text.ToString());
            }
            lblTotalBeforeTax.Text = sum.ToString();
            //******************Total Tax****************************//
            double tax = (sum * 5) / 100;
            lblTax.Text = tax.ToString();
            //*******************Total Amount************************//
            double ttlAmt = sum + tax;
            lblAfterTax.Text = ttlAmt.ToString();
            //*********************Discount**************************//
            double discount_perct = double.Parse(txtDiscount.Text);
            double discount = (discount_perct * ttlAmt) / 100;
            lblDiscount.Text = discount.ToString();
            ttlAmt = ttlAmt - discount;
            lblTotalAmount.Text = ttlAmt.ToString();
            /********************Sessions*************************/
            Session["ttlBeforeTax"] = lblTotalBeforeTax.Text;
            Session["ttlTaxAmt"] = lblTax.Text;
            Session["ttlAfterTax"] = lblAfterTax.Text;
            Session["discount"] = txtDiscount.Text;
            Session["discountAmt"] = lblDiscount.Text;
            Session["ttlAmt"] = lblTotalAmount.Text;
            
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        

        
       }

        

      
        
    }
