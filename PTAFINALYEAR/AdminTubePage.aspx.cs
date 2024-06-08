using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTAFINALYEAR
{
    public partial class AdminTubePage : System.Web.UI.Page
    {
        // Define your connection string here
        string connectionString = "UserDataBase";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            // Your event handling code here
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string insertQuery = "INSERT INTO TubeTable (tubeName, tubeDesc, tubeImage, tubeAmount) VALUES (@Name, @Description, @ImageURL, @TubeAmount)";

            // Get the connection string from the configuration
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    command.Parameters.AddWithValue("@Name", TextBox2.Text);
                    command.Parameters.AddWithValue("@Description", TextBox3.Text);
                    command.Parameters.AddWithValue("@TubeAmount", TextBox4.Text);

                    // Check if a file is uploaded
                    if (FileUpload1.HasFile)
                    {
                        try
                        {
                            // Save the uploaded file to a specific location on the server
                            string fileName = System.IO.Path.GetFileName(FileUpload1.FileName);
                            string uploadFolderPath = Server.MapPath("~/Uploads/");
                            string filePath = uploadFolderPath + fileName;
                            FileUpload1.SaveAs(filePath);

                            // Set the image URL in the database to the file path
                            command.Parameters.AddWithValue("@ImageURL", "/Uploads/" + fileName);  // Assuming "Uploads" is a folder in your project
                        }
                        catch (Exception ex)
                        {
                            // Handle file upload errors
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "fileUploadError", "alert('File upload error: " + ex.Message + "');", true);
                            return; // Exit the method if there's an error
                        }
                    }
                    else
                    {
                        // No file uploaded, set the image URL to an empty string or NULL as per your database schema
                        command.Parameters.AddWithValue("@ImageURL", DBNull.Value);
                    }

                    try
                    {
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Insertion successful
                            // Clear the form fields after successful insertion
                            ClearFormFields();
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "successAlert", "alert('Tube added successfully. Redirecting...'); window.location='" + ResolveClientUrl("~/AdminTubePage.aspx") + "';", true);
                        }
                        else
                        {
                            // Insertion failed
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "insertionError", "alert('Data insertion failed.');", true);
                        }
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "databaseError", "alert('An error occurred: " + ex.Message + "');", true);
                    }
                }
            }
        }

        // Method to clear form fields
        private void ClearFormFields()
        {
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
        }

    }
}
