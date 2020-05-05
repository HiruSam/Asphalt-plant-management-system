using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ITP_group09_09;

namespace ProductionManage
{
    public partial class WebForm1 : System.Web.UI.Page
    {

      


        protected void Page_Load(object sender, EventArgs e)
        {

           // Page previous = Page.PreviousPage;
            //if (previous.IsCrossPagePostBack)
            //{
              //  WcCost.Text = ((TextBox)previous.FindControl("WCcost")).Text;
                //BinderCCost.Text = ((TextBox)previous.FindControl("BCCost")).Text;
                //CutBcost.Text = ((TextBox)previous.FindControl("CBCost")).Text;
            //}
        }
       // int i = 52;
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            dateDisplayProduction.Text = CalendarProduction.SelectedDate.ToShortDateString();
          
        }



        
        protected void bitpWC_TextChanged1(object sender, EventArgs e)
        {
            //float f1 = (float)double.Parse(bitpWC.Text);
            float bitp = (float)double.Parse(bitpWC.Text) / 100;
            float wck = (float)double.Parse(wcKG.Text);
            bitWC.Text = (bitp * wck).ToString();
            double bitperc = (100.0 - bitp * 100);

            double y = wck * bitperc / 100;
            wcmaterial.Text = string.Format("{0:N2}", y);
        }

        protected void CBbi_TextChanged(object sender, EventArgs e)
        {
            //float f1 = (float)double.Parse(bitpWC.Text);
            float wcBit =( (float)double.Parse(CBbi.Text) )/ 100;
            float cbk = (float)double.Parse(cbKG.Text);
            cbBit.Text = (wcBit * cbk).ToString();
            double bitperC = (100.0 - wcBit * 100);
            //string s= ((cbk*bitperc)/100).ToString();
            double x = ((cbk * bitperC) / 100);
            cbMaterial.Text = string.Format("{0:N2}", x);
        }

        protected void BinderbitP_changed(object sender, EventArgs e)
        {
            float binBit = (float)double.Parse(BinderBitP.Text) / 100;
            float bindKg = (float)double.Parse(BindKG.Text);
            BinderBitkg.Text = (binBit * bindKg).ToString();
            double bindPerc = (100.0 - binBit * 100);
            double fin = (bindKg * bindPerc) / 100;
            BinderMatKg.Text = string.Format("{0:N2}", fin);
        }
       

        protected void Button2_Click(object sender, EventArgs e)
        {
            // float wcCost= float.Parse(WcCost.Text);

            float costWC = float.Parse((WearingCost.SelectedValue));


            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JJCRSEU;Initial Catalog=stock;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("AddNewProduction", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            float WCkg = float.Parse(wcKG.Text);
            DateTime date = DateTime.Parse(dateDisplayProduction.Text);
            
            float wcbitP = float.Parse(bitpWC.Text);
            float wcb = (float)Math.Round(wcbitP * 100f) / 100f;
            float material = float.Parse(wcmaterial.Text);
            float cost = (material / 1000) * costWC;
            String type = "Wearing Course";
           // Console.WriteLine(wcCost);
            

           // cmd.Parameters.AddWithValue("prodID", "ProWC0" + ++i);
            cmd.Parameters.AddWithValue("date", date.Date);
            cmd.Parameters.AddWithValue("bitPercen", wcb);
            cmd.Parameters.AddWithValue("initialW", WCkg);
            cmd.Parameters.AddWithValue("materialKg", material);
            cmd.Parameters.AddWithValue("cost", cost);
            cmd.Parameters.AddWithValue("type", type);

            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                WCInsert.Text = "Record Inserted Succesfully into the Database";
                WCInsert.ForeColor = System.Drawing.Color.PaleVioletRed;
            }
            con.Close();
        }

        protected void insertCBdata_Click(object sender, EventArgs e)
        {

            float costCB = float.Parse((CutbackCost.SelectedValue));
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JJCRSEU;Initial Catalog=stock;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("AddNewProduction", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
           ;
            DateTime date = DateTime.Parse(dateDisplayProduction.Text);
            float cutkg = float.Parse(cbKG.Text);
            float cutbitp = float.Parse(CBbi.Text);
            float cutmat = float.Parse(cbMaterial.Text);
            float cost = (cutmat / 1000) * costCB;
            String type = "Cut-Back";

          
           
          
           // cmd.Parameters.AddWithValue("prodID", "ProCB0" + ++i);
            cmd.Parameters.AddWithValue("date", date.Date);
            cmd.Parameters.AddWithValue("bitPercen", cutbitp);
            cmd.Parameters.AddWithValue("initialW", cutkg);
            cmd.Parameters.AddWithValue("materialKg", cutmat);
            cmd.Parameters.AddWithValue("cost", cost);
            cmd.Parameters.AddWithValue("type", type);

            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                CBinsert.Text = "Record Inserted Succesfully into the Database";
                CBinsert.ForeColor = System.Drawing.Color.PaleVioletRed;
            }
            con.Close();
        }

        protected void BindButton_Click(object sender, EventArgs e)
        {
            float costBC = float.Parse((BinderCost.SelectedValue));
            
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JJCRSEU;Initial Catalog=stock;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("AddNewProduction", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            ;
            DateTime date = DateTime.Parse(dateDisplayProduction.Text);
            float BCKg = float.Parse(BindKG.Text);
            float BcBitP = float.Parse(BinderBitP.Text);
            float bindMate = float.Parse(BinderMatKg.Text);
            float cost = (bindMate / 1000) * costBC;
            String type = "Binder Course";




           // cmd.Parameters.AddWithValue("prodID", "ProBC0" + ++i);
            cmd.Parameters.AddWithValue("date", date.Date);
            cmd.Parameters.AddWithValue("bitPercen", BcBitP);
            cmd.Parameters.AddWithValue("initialW", BCKg);
            cmd.Parameters.AddWithValue("materialKg", bindMate);
            cmd.Parameters.AddWithValue("cost", cost);
            cmd.Parameters.AddWithValue("type", type);

            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                insertBC.Text = "Record Inserted Succesfully into the Database";
                insertBC.ForeColor = System.Drawing.Color.PaleVioletRed;
            }
            con.Close();
        }
    }
   }

