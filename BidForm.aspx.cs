using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Procument_Management
{
    public partial class BidForm : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StockConnection"].ConnectionString);

            string cmdText = "INSERT INTO pro (Company_Name,Company_Address,Legal_Status,Power_of_Attony,Bussiness_Reg_No,Name_of_Partner,Bid_Amount,Date_of_Reg,Bidder_Name,Bidder_Id,Address,Office_Tel,Mobile_Tel,Fax,Email) VALUES (@Company_Name,@Company_Address,@Legal_Status,@Power_of_Attony,@Bussiness_Reg_No,@Name_of_Partner,@Bid_Amount,@Date_of_Reg,@Bidder_Name,@Bidder_Id,@Address,@OfficeTel,@MobileTel,@Fax,@Email)";
            SqlCommand cmd = new SqlCommand(cmdText, con);
            cmd.Parameters.AddWithValue("@Company_Name", TextBox1.Text) ;
            cmd.Parameters.AddWithValue("@Company_Address", TextBox2.Text) ;
            cmd.Parameters.AddWithValue("@Legal_Status", TextBox3.Text) ;
            cmd.Parameters.AddWithValue("@Power_of_Attony", TextBox11.Text) ;
            cmd.Parameters.AddWithValue("@Bussiness_Reg_No", TextBox12.Text) ;
            cmd.Parameters.AddWithValue("@Name_of_Partner", TextBox16.Text+" "+TextBox17.Text+" "+TextBox18.Text) ;
            cmd.Parameters.AddWithValue("@Bid_Amount", TextBox19.Text) ;
            cmd.Parameters.AddWithValue("@Date_of_Reg", TextBox13.Text) ;
            cmd.Parameters.AddWithValue("@Bidder_Name", TextBox4.Text) ;
            cmd.Parameters.AddWithValue("@Bidder_Id", TextBox5.Text) ;
            cmd.Parameters.AddWithValue("@Address", TextBox6.Text) ;
            cmd.Parameters.AddWithValue("@OfficeTel", TextBox20.Text) ;
            cmd.Parameters.AddWithValue("@MobileTel", TextBox8.Text) ;
            cmd.Parameters.AddWithValue("@Fax", TextBox9.Text) ;
            cmd.Parameters.AddWithValue("@Email", TextBox10.Text) ;

            
            

            if (con.State == ConnectionState.Closed)
            {
                con.Open();

                
            }
            cmd.ExecuteNonQuery();
            con.Close();
            
            
           
        }


        
    }
}