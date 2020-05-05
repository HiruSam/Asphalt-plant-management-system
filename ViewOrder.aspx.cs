using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITP_group09_09
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;

        }

        protected void search_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;

        }

        protected void refresh_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
        }
    }
}