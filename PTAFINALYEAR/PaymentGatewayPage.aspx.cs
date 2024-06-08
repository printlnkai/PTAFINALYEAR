using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTAFINALYEAR
{
    public partial class PaymentGatewayPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string donationAmount = Session["DonAmount"]?.ToString();
                if (!string.IsNullOrEmpty(donationAmount))
                {
                    Label1.Text = donationAmount;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string donationAmount = Session["DonationAmount"]?.ToString();
            string tubeID = Session["TubeID"]?.ToString();
            string donAmmountID = Session["DonAmmountID"]?.ToString();

            if (string.IsNullOrEmpty(donationAmount) || string.IsNullOrEmpty(tubeID) || string.IsNullOrEmpty(donAmmountID))
            {
                // Show error message using JavaScript alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", "alert('Donation amount or Tube ID is missing.');", true);
                return;
            }

            if (!int.TryParse(donationAmount, out int donation))
            {
                // Show error message using JavaScript alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", "alert('Invalid donation amount.');", true);
                return;
            }

            if (!int.TryParse(tubeID, out int tubeIDInt))
            {
                // Show error message using JavaScript alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", "alert('Invalid Tube ID.');", true);
                return;
            }

            if (!int.TryParse(donAmmountID, out int donAmmountIDInt))
            {
                // Show error message using JavaScript alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", "alert('Invalid Donation Amount ID.');", true);
                return;
            }

            string insertQuery = "INSERT INTO PaymentTable (CardNumber, Expiry, CVV, DonAmmount, PhoneNumber) VALUES (@CardNum, @Exp, @CVV, @DonAmmount, @PhoneNum)";
            string updateQuery = "UPDATE TubeTable SET currentDonation = currentDonation + @DonAmmount WHERE tubeID = @TubeID";

            string connectionString = ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    command.Parameters.AddWithValue("@CardNum", TextBox1.Text);
                    command.Parameters.AddWithValue("@CVV", TextBox2.Text);
                    command.Parameters.AddWithValue("@Exp", TextBox3.Text);
                    command.Parameters.AddWithValue("@PhoneNum", TextBox4.Text);
                    command.Parameters.AddWithValue("@DonAmmount", donAmmountIDInt);

                    try
                    {
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            using (SqlCommand updateCommand = new SqlCommand(updateQuery, connection))
                            {
                                updateCommand.Parameters.AddWithValue("@DonAmmount", donation);
                                updateCommand.Parameters.AddWithValue("@TubeID", tubeIDInt);
                                updateCommand.ExecuteNonQuery();
                            }

                            ClearFormFields();

                            // Show success message using JavaScript alert and redirect to FrontPage
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "successAlert", "alert('Payment successful. Redirecting...'); window.location='" + ResolveClientUrl("~/FrontPage.aspx") + "';", true);
                        }
                        else
                        {
                            // Show error message using JavaScript alert
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", "alert('Data insertion failed.');", true);
                        }
                    }
                    catch (Exception ex)
                    {
                        // Show error message using JavaScript alert
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", "alert('An error occurred: " + ex.Message + "');", true);
                    }
                }
            }
        }

        private void ClearFormFields()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
        }
    }
}