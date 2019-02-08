using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Data.OleDb;
using System.Data;

namespace E_AND_G
{
    public partial class Web_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            l_date.Text = DateTime.Now.ToString();
            if (Session["uid"] != null)
            {
                String email = Session["uid"].ToString();
                //txttest.Text = email;
                lbl_display.Text = email;
            }
            else
            {
                Response.Redirect("Sign_in.aspx");
            }
           
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            //OleDbCommand cmd = new OleDbCommand("Select * from register_eg where email='"+txttest.Text+"'", con);
            OleDbCommand cmd = new OleDbCommand("Select * from register_eg where email='" + lbl_display.Text + "'", con);
            OleDbCommand cmd1 = new OleDbCommand("Select * from details_eg where email='" + lbl_display.Text + "'", con);
            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            OleDbDataReader dr1 = cmd1.ExecuteReader();
            
            if (dr.Read())
            {
                String fname = dr["f_name"].ToString();
                String lname = dr["l_name"].ToString();
                String lemail = dr["email"].ToString();
                String lphn = dr["phone_no"].ToString();
               // String laddress = dr["email"].ToString();
               // String land = dr["email"].ToString();
               // String lservice = dr["email"].ToString();
                //String lcharge = dr["email"].ToString();
                Session["phn"] = lphn;
                l_name.Text = lname;
                f_name.Text = fname;
                if (lphn == Session["phone_no"].ToString())
                {
                    l_phonenumber.Text = lphn;
                }
                else
                {
                    l_phonenumber.Text = lphn + "," + Session["phone_no"].ToString();
                }
//                l_email.Text = txttest.Text;
                l_email.Text = lbl_display.Text;

            }
            if (dr1.Read())
            {
                String laddress = dr1["address"].ToString();
                String llandmark = dr1["landmark"].ToString();
                //String lelect_gadgets = dr1["elect_gadgets"].ToString();
                String lbrand_name = dr1["brand_name"].ToString();
                String lmodel = dr1["model_name"].ToString();
                String lwarranty = dr1["warranty_status"].ToString();
                String lzip = dr1["zipcode"].ToString();
                l_zip.Text = lzip;
                l_address.Text = laddress;
                l_landmark.Text = llandmark;
                l_service.Text = Session["servicename"].ToString();
                l_problem.Text = Session["des_problem"].ToString();
                lbrandname.Text = Session["brand"].ToString();
                lblmodel.Text = Session["model_name"].ToString();
                warranty.Text = Session["warranty"].ToString();
                l_charge.Text = Session["chr"].ToString();

            }
            
            con.Close();





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Document pdfDoc = new Document(PageSize.A4, 25, 10, 25, 10);
                PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                Paragraph Text = new Paragraph("::E_AND_G_SERVICE_REPORT_OF::" + l_email.Text);
                Paragraph Text1 = new Paragraph("________________________________________________________________________________");
                Paragraph Text2 = new Paragraph("Name:: " + f_name.Text + "  " + l_name.Text);
                Paragraph Text3 = new Paragraph("Service Applied::" + Session["servicename"]);
                Paragraph brand = new Paragraph("Brand:: " + Session["brand"]);
                Paragraph model = new Paragraph("Model No/Name:: " + Session["model_name"]);
                Paragraph war = new Paragraph("Warranty Status:: " + Session["warranty"]);
                Paragraph prob = new Paragraph("Described Problem:: " + Session["des_problem"]);
                Paragraph Text4 = new Paragraph("Charge:: Rs."+ Session["chr"]);
                if (Session["phn"].ToString() == Session["phone_no"].ToString())
                {
                    Paragraph Text5 = new Paragraph("Contact Number:: " + Session["phone_no"]);
                    Paragraph line11 = new Paragraph("________________________________________________________________________________");
                    pdfDoc.Add(Text5);
                    pdfDoc.Add(line11);
                }
                else
                {
                    Paragraph phnn = new Paragraph("Contact Number:: " + Session["phn"]+", " + Session["phone_no"]);
                    Paragraph line12 = new Paragraph("________________________________________________________________________________");
                    pdfDoc.Add(phnn);
                    pdfDoc.Add(line12);
                }
                Paragraph Text6 = new Paragraph("Address:: " + Session["address"]);
                Paragraph Text7 = new Paragraph("Zip Code:: " + Session["zipcode"]);
                Paragraph Text8 = new Paragraph("Landmark:: " + Session["landmark"]);
                Paragraph Text9 = new Paragraph("________________________________________________________________________________");
                Paragraph Textdt = new Paragraph("Date:: " + l_date.Text.ToString());
                Paragraph Text10 = new Paragraph("Thank You For Using Our Service!!");
                pdfDoc.Add(Text);
                pdfDoc.Add(Text1);
                pdfDoc.Add(Text2);
                pdfDoc.Add(Text3);
                pdfDoc.Add(brand);
                pdfDoc.Add(model);
                pdfDoc.Add(war);
                pdfDoc.Add(prob);
                // pdfDoc.Add(Text5);
                pdfDoc.Add(Text6);
                pdfDoc.Add(Text7);
                pdfDoc.Add(Text8);
                pdfDoc.Add(Text4);
                pdfDoc.Add(Text9);
                pdfDoc.Add(Textdt);
                pdfDoc.Add(Text10);
                pdfWriter.CloseStream = false;
                pdfDoc.Close();
                Response.Buffer = true;
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=E_AND_G_Service_Report.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
            }
            catch (Exception ex)
            { Response.Write(ex.Message); } 

        }
    }
}