using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ITP_group09_09
{
    public partial class AddSt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StockConnection"].ConnectionString);

                con.Open();

                string insert = "insert into stocks(Name,Amount)values(@stype,@quantity)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@stype", stype.Text);
                cmd.Parameters.AddWithValue("@quantity", quantity.Text);
                cmd.ExecuteNonQuery();
                Response.Redirect("view.aspx");
                con.Close();
            }
            catch (Exception Ex)
            {
                Response.Write(Ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("StockMain.aspx");
        }
    }
}