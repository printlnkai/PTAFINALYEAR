using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTAFINALYEAR
{
    public partial class AdminNewsPage : System.Web.UI.Page
    {

        string connectionString = "UserDataBase";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        
            // Define your insert query
            string insertQuery = "INSERT INTO NewsTable (newsTitle, newsImage, newsDescription, newsAuthor) VALUES (@NewsTitle, @NewsImage, @NewsDescription, @NewsAuthor)";

            // Get the connection string from the configuration
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@NewsTitle", TextBox1.Text); // Assuming TextBox1 is for news title
                    command.Parameters.AddWithValue("@NewsDescription", TextBox2.Text); // Assuming TextBox2 is for news description
                    command.Parameters.AddWithValue("@NewsAuthor", TextBox3.Text); // Assuming TextBox3 is for author name

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
                            command.Parameters.AddWithValue("@NewsImage", "/Uploads/" + fileName);  // Assuming "Uploads" is a folder in your project
                        }
                        catch (Exception ex)
                        {
                            // Handle file upload errors
                            Response.Write("Error uploading image: " + ex.Message);
                            return;
                        }
                    }
                    else
                    {
                        // No file uploaded, handle this case as needed
                        Response.Write("Please select an image file.");
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
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "successAlert", "alert('News added successfully. Redirecting...'); window.location='" + ResolveClientUrl("~/AdminNewsPage.aspx") + "';", true);
                        }
                        else
                        {
                            // Insertion failed
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "insertionError", "alert('News insertion failed.');", true);
                        }
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "databaseError", "alert('An error occurred: " + ex.Message + "');", true);
                    }
                }
            }
            
        }
        private void ClearFormFields()
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
        }


    }
}