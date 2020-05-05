using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ITP_group09_09
{
    public partial class vehicleLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JJCRSEU;Initial Catalog=stock;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("addVehicleLog", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            int log = int.Parse(logid.Text);
            String dat = date.Text;
            String rn = roadname.Text;
            String t = time.Text;
            float q = float.Parse(qty.Text);
            String dn = dname.Text;
            String sn = sname.Text;


            cmd.Parameters.AddWithValue("logid", log);
            cmd.Parameters.AddWithValue("date", dat);
            cmd.Parameters.AddWithValue("road", rn);
            cmd.Parameters.AddWithValue("time", t);
            cmd.Parameters.AddWithValue("qty", q);
            cmd.Parameters.AddWithValue("driver", dn);
            cmd.Parameters.AddWithValue("storekeeper", sn);



            con.Open();
            int k = cmd.ExecuteNonQuery();

            if (k != 0)
            {
                TextBox1.Text = "Record Inserted Succesfully into the Database";
                TextBox1.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            con.Close();

        }
    }
}