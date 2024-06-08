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
    public partial class VideoPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindVideoData();
            }
        }
        private void BindVideoData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["UserDataBase"].ConnectionString;
            string selectQuery = "SELECT videoTittle, videoLink, videoImage FROM VideoTable";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(selectQuery, connection))
                {
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        VideoRepeater.DataSource = reader;
                        VideoRepeater.DataBind();
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