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
    public partial class DonationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string tubeID = Request.QueryString["tubeID"];
                if (!string.IsNullOrEmpty(tubeID))
                {
                    HiddenSelectedTubeID.Value = tubeID;
                    GetTubeName(tubeID);
                }
                else
                {
                    Response.Write("Tube ID is missing.");
                }
            }
        }

        private void GetTubeName(string tubeID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;
            string query = "SELECT tubeName FROM TubeTable WHERE tubeID = @tubeID";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@tubeID", tubeID);

                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.HasRows)
                        {
                            reader.Read();
                            string tubeName = reader["tubeName"].ToString();
                            lblTubeName.InnerText = tubeName;
                            HiddenSelectedTubeName.Value = tubeName;
                            Session["SelectedTubeName"] = tubeName;
                        }
                        else
                        {
                            Response.Write("Tube name not found.");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("An error occurred: " + ex.Message);
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string tubeName = HiddenSelectedTubeName.Value;
            string tubeID = Request.QueryString["tubeID"];
            if (!string.IsNullOrEmpty(tubeID))
            {
                string donationAmount = TextBox9.Text;

                if (string.IsNullOrEmpty(donationAmount) || !int.TryParse(donationAmount, out int _))
                {
                    Response.Write("Invalid donation amount.");
                    return;
                }

                string insertQuery = "INSERT INTO DonationTable (UFirstName, ULastName, UEmail, UPhoneNumber, ComName, ComEmial, ComFax, ComAddress) OUTPUT INSERTED.DonAmmount VALUES (@UFName, @ULName, @UEmail, @UPhoneNum, @ComName, @ComEmial, @ComFax, @ComAdd)";
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(insertQuery, connection))
                    {
                        command.Parameters.AddWithValue("@UFName", TextBox1.Text);
                        command.Parameters.AddWithValue("@ULName", TextBox2.Text);
                        command.Parameters.AddWithValue("@UEmail", TextBox3.Text);
                        command.Parameters.AddWithValue("@UPhoneNum", TextBox4.Text);
                        command.Parameters.AddWithValue("@ComName", TextBox5.Text);
                        command.Parameters.AddWithValue("@ComEmial", TextBox6.Text);
                        command.Parameters.AddWithValue("@ComFax", TextBox7.Text);
                        command.Parameters.AddWithValue("@ComAdd", TextBox8.Text);

                        try
                        {
                            connection.Open();
                            int insertedDonAmmount = (int)command.ExecuteScalar();

                            if (insertedDonAmmount > 0)
                            {
                                Session["DonationAmount"] = donationAmount;
                                Session["DonAmmountID"] = insertedDonAmmount;
                                Session["TubeID"] = tubeID;
                                Response.Redirect("PaymentGatewayPage.aspx");
                            }
                            else
                            {
                                Response.Write("Data insertion failed.");
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write("An error occurred: " + ex.Message);
                        }
                    }
                }
            }
            else
            {
                Response.Write("Tube ID is missing.");
            }
        }
    }
    
}