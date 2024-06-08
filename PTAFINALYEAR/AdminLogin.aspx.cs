using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTAFINALYEAR
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userEmail = TextBox1.Text.Trim(); // Get user email
            string userPassword = TextBox2.Text.Trim(); // Get user password

            // Define your query to check the admin credentials
            string query = "SELECT COUNT(*) FROM adminTable WHERE adminEmail = @Email AND adminPassword = @Password";

            // Get the connection string from the configuration
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", userEmail);
                    command.Parameters.AddWithValue("@Password", userPassword);

                    try
                    {
                        connection.Open();
                        int count = (int)command.ExecuteScalar();

                        if (count > 0)
                        {
                            // Correct credentials, show success message using JavaScript alert and redirect to AdminTubePage
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "successAlert", "alert('Login successful. Redirecting...'); window.location='" + ResolveClientUrl("~/AdminTubePage.aspx") + "';", true);
                        }
                        else
                        {
                            // Incorrect credentials, show error message using JavaScript alert
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "errorAlert", "alert('Invalid email or password.');", true);
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("An error occurred: " + ex.Message);
                    }
                }
            }
        }
    }
}