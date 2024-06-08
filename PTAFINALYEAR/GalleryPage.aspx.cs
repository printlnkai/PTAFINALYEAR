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
    public partial class GalleryPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGalleryData();
            }
        }

        private void BindGalleryData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;
            string selectQuery = "SELECT galleryTittle, galleryLink, galleryImage FROM GalleryTable";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(selectQuery, connection))
                {
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        GalleryRepeater.DataSource = reader;
                        GalleryRepeater.DataBind();
                    }
                    catch (Exception ex)
                    {
                        // Handle the error
                        Response.Write("An error occurred: " + ex.Message);
                    }
                }
            }
        }
    }
}