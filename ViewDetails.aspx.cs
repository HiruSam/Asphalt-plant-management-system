using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Procument_Management
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindAllBids();
            }
        }
        private void bindAllBids()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["StockConnection"].ConnectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM pro order by Id desc", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GVBidInfo.DataSource = dtbl;
                GVBidInfo.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GVBidInfo.DataSource = dtbl;
                GVBidInfo.DataBind();
                GVBidInfo.Rows[0].Cells.Clear();
                GVBidInfo.Rows[0].Cells.Add(new TableCell());
                GVBidInfo.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GVBidInfo.Rows[0].Cells[0].Text = "No Data Found ..!";
                GVBidInfo.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }

        protected void GVBidInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["StockConnection"].ConnectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM pro WHERE Id = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(GVBidInfo.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    bindAllBids();

                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }

        }
        
        protected void GVBidInfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["StockConnection"].ConnectionString))
                {
                    sqlCon.Open();
                    string query = "UPDATE pro SET Mobile_Tel=@Mobile_Tel,Bidder_Name=@Bidder_Name,Email=@Email WHERE Id=@Id";
                    
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Mobile_Tel", (GVBidInfo.Rows[e.RowIndex].FindControl("txtMobile_Tel") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Bidder_Name", (GVBidInfo.Rows[e.RowIndex].FindControl("txtBidder_Name") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Email", (GVBidInfo.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(GVBidInfo.DataKeys[e.RowIndex].Value.ToString()));

                    sqlCmd.ExecuteNonQuery();
                    GVBidInfo.EditIndex = -1;
                    bindAllBids();
                    lblSuccessMessage.Text = "Selected Record Updated";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }

            
        }

        protected void GVBidInfo_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GVBidInfo.EditIndex = e.NewEditIndex;
            bindAllBids();
        }

        protected void GVBidInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GVBidInfo.EditIndex = -1;
            bindAllBids();
        }

        protected void GVBidInfo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}