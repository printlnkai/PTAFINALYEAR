using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTAFINALYEAR
{
    public partial class FrontPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTubeRepeater();
            }
        }

        private void BindTubeRepeater()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;
            string query = "SELECT tubeID, tubeName, tubeDesc, tubeImage, tubeAmount, currentDonation FROM TubeTable"; // Updated query

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.HasRows)
                        {
                            DataTable dt = new DataTable();
                            dt.Load(reader);
                            TubeRepeater.DataSource = dt;
                            TubeRepeater.DataBind();
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle the error
                        Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
                    }
                }
            }
        }

        protected void TubeImage_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgButton = sender as ImageButton;
            RepeaterItem item = imgButton.NamingContainer as RepeaterItem;
            HiddenField hiddenTubeID = item.FindControl("HiddenTubeID") as HiddenField;
            string tubeID = hiddenTubeID.Value;
            Response.Redirect("DonationPage.aspx?tubeID=" + tubeID);
        }

        protected string CalculateProgress(object currentDonationObj, object tubeAmountObj)
        {
            decimal currentDonation = Convert.ToDecimal(currentDonationObj);
            decimal tubeAmount = Convert.ToDecimal(tubeAmountObj);
            if (tubeAmount == 0) return "0"; // To avoid division by zero

            decimal progress = (currentDonation / tubeAmount) * 100;
            return progress.ToString("F2"); // Returns the progress as a percentage with two decimal places
        }
    }
}