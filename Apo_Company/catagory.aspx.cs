using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Apo_Company
{
    public partial class catagory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["product"].ConnectionString);

            if (Request.QueryString["type"] != null) {
                string type = Request.QueryString["type"];
                string query = "SELECT * from products where type = @type";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@type", type);

                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                catagory_list.DataSource = dr;
                catagory_list.DataBind();

                con.Close();
            }
        }
    }
}