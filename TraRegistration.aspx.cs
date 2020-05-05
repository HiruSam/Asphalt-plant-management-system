using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;

namespace Transport
{
    public partial class WebForm1 : System.Web.UI.Page
    {

  

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Console.WriteLine("Hello");

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JJCRSEU;Initial Catalog=stock;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("addvehicle", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;


            int veid = int.Parse(vid.Text); 
            String model = DropDownList1.Text;
            String regno = regnum.Text;
            String color = clr.Text;
            String NIC = nic.Text;
            String Owner = owner.Text;
           

         

            cmd.Parameters.AddWithValue("vid", veid);
            cmd.Parameters.AddWithValue("model", model);
            cmd.Parameters.AddWithValue("regno", regno);
            cmd.Parameters.AddWithValue("color", color);
            cmd.Parameters.AddWithValue("NIC", NIC);
            cmd.Parameters.AddWithValue("Owner", Owner);


            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                TextBox6.Text = "Record Inserted Succesfully into the Database";
                TextBox6.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            con.Close();


           // Response.Write("Submit Button clicked");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            dateDis.Text = CalendarVehicle.SelectedDate.ToString();
        }

        
    }
}