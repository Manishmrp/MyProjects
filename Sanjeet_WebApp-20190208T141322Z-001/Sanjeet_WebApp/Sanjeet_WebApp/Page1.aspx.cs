using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Text;

namespace Sanjeet_WebApp
{
    public partial class Page1 : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-RBE4AR6\SQLEXPRESS;Initial Catalog=SanjeetDB;Integrated Security=True");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (Session["bill_content"] == null)
                {
                    lblContent.Text = "SOMETHING WENT WRONG! LOG IN AND RETRY!";
                    lblTitle.Text = "Error!";
                }
                else
                {
                    lblTotal.Text = Session["ttlAmt"].ToString();
                    lblDisplayName.Text = Session["c_name"].ToString().Trim();
                    lblDisplayContact.Text = Session["c_contact"].ToString();
                    lblDisplayAddr.Text = Session["c_address"].ToString().Trim();
                    lblDateTime.Text = DateTime.Now.ToString();
                    btnDoc.Visible = false;
                    /*********Sessions Data, TOTAL**************/
                    printBefTax.Text = Session["ttlBeforeTax"].ToString();
                    printAftTax.Text = Session["ttlAfterTax"].ToString();
                    printTaxAmt.Text = Session["ttlTaxAmt"].ToString();
                    printDis.Text = Session["discount"].ToString();
                    printDisAmt.Text = Session["discountAmt"].ToString();
                    printPayMode.Text = Session["payMode"].ToString();
                    lblShowTotal.Text = Session["ttlBeforeTax"].ToString();
                    /***********Date****************/
                    lDate.Text = Session["onlyDate"].ToString();
                }
            }
        }

        protected void btnDoc_Click(object sender, EventArgs e)
        {
            try
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Invoice.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                StringWriter sw = new StringWriter();
                HtmlTextWriter hw = new HtmlTextWriter(sw);
                Panel1.RenderControl(hw);
                gvContent.AllowPaging = false;
                gvContent.DataBind();
                //gvContent.RenderControl(hw);
                StringReader sr = new StringReader(sw.ToString());
                Document pdfDoc = new Document(PageSize.A4, 10, 10, 0, 0);
                HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                htmlparser.Parse(sr);
                pdfDoc.Close();
                Response.Write(pdfDoc);
                Response.End();
                
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

                    }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("insert into tbl_ALLRECORDS(C_NAME,C_CONTACT,C_ADDRESS,C_RECORD,TAX_AMOUNT,DISCOUNT_AMOUNT,TOTAL_AMOUNT,PAYMENT_MODE,DATE_TIME,ONLY_DATE) values('" + lblDisplayName.Text + "','" + lblDisplayContact.Text + "','" + lblDisplayAddr.Text +"','"+Session["bill_content"].ToString()+"','"+printTaxAmt.Text.ToString()+"','"+printDisAmt.Text.ToString()+"','"+lblTotal.Text.ToString()+"','"+printPayMode.Text.ToString()+"','"+lblDateTime.Text.ToString()+"','"+lDate.Text.ToString()+ "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                lblStatus.Text = "Saved Successfully";
                btnDoc.Visible = true;
                btnSave.Visible = false;
                con.Close();
            }
            catch (Exception ex)
            {
                lblStatus.Text = ex.ToString();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            /*********Truncating Temp Table List1***************/
            SqlCommand md = new SqlCommand("Truncate table tbl_list1", con);
            con.Open();
            md.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Main.aspx");
        }
    }
}