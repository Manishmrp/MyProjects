using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace E_AND_G
{
    public partial class Web_History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=XE;User ID=system;Password=manish;Unicode=True");
            OleDbCommand cmd = new OleDbCommand("select * from details_eg where email='" + Session["uid"].ToString() + "'", con);
            con.Open();
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                l_service.Text = dr["elect_gadgets"].ToString();
                l_model.Text = dr["model_name"].ToString();
                l_warranty.Text = dr["warranty_status"].ToString();
                l_problem.Text = dr["describe_problem"].ToString();
                l_datetime.Text = dr["date_time"].ToString();
                l_charge.Text = dr["charge"].ToString();
            
            }
            else
            {
                l_service.Text = "No History";
            }
            con.Close();
        }
    }
}