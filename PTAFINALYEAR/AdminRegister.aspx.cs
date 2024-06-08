using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTAFINALYEAR
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Check if all fields are filled
            if (string.IsNullOrWhiteSpace(TextBox1.Text) ||
                string.IsNullOrWhiteSpace(TextBox2.Text) ||
                string.IsNullOrWhiteSpace(TextBox3.Text) ||
                string.IsNullOrWhiteSpace(TextBox4.Text) ||
                string.IsNullOrWhiteSpace(TextBox5.Text))
            {
                // Display an error message or warning
                ScriptManager.RegisterStartupScript(this, this.GetType(), "formAlert", "alert('Please Fill The Form First.');", true);
                return; // Stop further processing
            }

            // Check if terms and conditions are agreed to
            if (!CheckBoxList1.Items[0].Selected)
            {
                // Display an error message or warning
                ScriptManager.RegisterStartupScript(this, this.GetType(), "checkBoxAlert", "alert('Please agree to the terms and conditions.');", true);
                return; // Stop further processing
            }

            // Define your insert query
            string insertQuery = "INSERT INTO adminTable (adminFirstName, adminLastName, adminEmail, adminPassword, adminRePassword) VALUES (@AdminFname, @AdminLname, @AdminEmail, @AdminPassword, @AdminRePassword)";

            // Get the connection string from the configuration
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@AdminFname", TextBox1.Text);
                    command.Parameters.AddWithValue("@AdminLname", TextBox2.Text);
                    command.Parameters.AddWithValue("@AdminEmail", TextBox3.Text);
                    command.Parameters.AddWithValue("@AdminPassword", TextBox4.Text);
                    command.Parameters.AddWithValue("@AdminRePassword", TextBox5.Text);

                    try
                    {
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Insertion successful, show success message and redirect to AdminLogin
                            ClearFormFields();
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "successAlert", "alert('Data inserted successfully. Redirecting to login page.'); window.location='" + ResolveClientUrl("~/AdminLogin.aspx") + "';", true);
                        }
                        else
                        {
                            // Insertion failed
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "insertFailAlert", "alert('Data insertion failed.');", true);
                        }
                    }
                    catch (Exception ex)
                    {
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
            TextBox5.Text = string.Empty;
        }
    }
}