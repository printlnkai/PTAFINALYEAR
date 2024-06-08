using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTAFINALYEAR
{
    public partial class AdminImagePage : System.Web.UI.Page
    {
        string connectionString = "UserDataBase";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Define your insert query
            string insertQuery = "INSERT INTO GalleryTable (galleryTittle, galleryImage, galleryLink) VALUES (@ImageTitle, @ImageImage, @ImageLink)";

            // Get the connection string from the configuration
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@ImageTitle", TextBox1.Text); // Assuming TextBox1 is for news title
                    command.Parameters.AddWithValue("@ImageLink", TextBox2.Text); // Assuming TextBox2 is for news description


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
                            command.Parameters.AddWithValue("@ImageImage", "/Uploads/" + fileName);  // Assuming "Uploads" is a folder in your project
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
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "successAlert", "alert('Image added successfully. Redirecting...'); window.location='" + ResolveClientUrl("~/AdminVideoPage.aspx") + "';", true);
                        }
                        else
                        {
                            // Insertion failed
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "insertionError", "alert('DImageata insertion failed.');", true);
                        }
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "databaseError", "alert('An error occurred: " + ex.Message + "');", true);
                    }
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Define your insert query
            string insertQuery = "INSERT INTO VideoTable (videoTittle, videoImage, videoLink) VALUES (@VideoTitle, @VideoImage, @VideoLink)";

            // Get the connection string from the configuration
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@VideoTitle", TextBox3.Text); // Assuming TextBox1 is for news title
                    command.Parameters.AddWithValue("@VideoLink", TextBox4.Text); // Assuming TextBox2 is for news description


                    if (FileUpload1.HasFile)
                    {
                        try
                        {
                            // Save the uploaded file to a specific location on the server
                            string fileName = System.IO.Path.GetFileName(FileUpload2.FileName);
                            string uploadFolderPath = Server.MapPath("~/Uploads/");
                            string filePath = uploadFolderPath + fileName;
                            FileUpload2.SaveAs(filePath);

                            // Set the image URL in the database to the file path
                            command.Parameters.AddWithValue("@VideoImage", "/Uploads/" + fileName);  // Assuming "Uploads" is a folder in your project
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
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "successAlert", "alert('Video added successfully. Redirecting...'); window.location='" + ResolveClientUrl("~/AdminVideoPage.aspx") + "';", true);
                        }
                        else
                        {
                            // Insertion failed
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "insertionError", "alert('Video insertion failed.');", true);
                        }
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "databaseError", "alert('An error occurred: " + ex.Message + "');", true);
                    }
                }
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
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
                    command.Parameters.AddWithValue("@NewsTitle", TextBox5.Text); // Assuming TextBox1 is for news title
                    command.Parameters.AddWithValue("@NewsDescription", TextBox6.Text); // Assuming TextBox2 is for news description
                    command.Parameters.AddWithValue("@NewsAuthor", TextBox7.Text); // Assuming TextBox3 is for author name

                    if (FileUpload1.HasFile)
                    {
                        try
                        {
                            // Save the uploaded file to a specific location on the server
                            string fileName = System.IO.Path.GetFileName(FileUpload3.FileName);
                            string uploadFolderPath = Server.MapPath("~/Uploads/");
                            string filePath = uploadFolderPath + fileName;
                            FileUpload3.SaveAs(filePath);

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
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
        }

    }

}
