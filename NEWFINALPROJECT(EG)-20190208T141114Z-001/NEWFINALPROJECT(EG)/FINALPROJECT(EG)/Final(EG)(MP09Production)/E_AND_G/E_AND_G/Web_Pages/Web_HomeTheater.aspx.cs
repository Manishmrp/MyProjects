using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_AND_G.Web_Pages
{
    public partial class Web_HomeTheater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void theater_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = theater_dropdown.SelectedItem.Value;
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
            string ph = "Philips";
            if (i == ph)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_philips.png";
            }
            string intex = "Intex";
            if (i == intex)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_intex.png";
            }
            string son = "Sony";
            if (i == son)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_sony.png";
            }
            string vid = "iBall";
            if (i == vid)
            {
                img_logo.ImageUrl = "~/ref_icon/logo_iball.png";
            }
        }

        

        

        
    }
}