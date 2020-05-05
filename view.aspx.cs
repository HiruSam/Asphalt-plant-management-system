using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ITP_group09_09
{
    public partial class view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection mainconn = new SqlConnection(ConfigurationManager.ConnectionStrings["StockConnection"].ConnectionString);
            
                mainconn.Open();

                SqlCommand comm = new SqlCommand();
                string qu = "select* from [dbo].[stock] where Name like '%'+@stype+'%'";
                comm.CommandText = qu;
                comm.Connection = mainconn;
                comm.Parameters.AddWithValue("stype", Search.Text);
                DataSet dt = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter(comm);
                sda.Fill(dt);    
                GridView1.DataBind();
            }
           

        }
    }
