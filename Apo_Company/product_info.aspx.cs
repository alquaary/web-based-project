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
    public partial class product_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["product_id"] == null)
            {
                Response.Redirect("/products.aspx");
            }
            else
            {
                proccess();
            }
            
        }
        private void proccess()
        {
            string id = Request.QueryString["product_id"];


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["product"].ConnectionString);

            string query = "SELECT * from products where productID = @id";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@id", id);

            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                product_info_img.ImageUrl = dr["image"].ToString();
                label_name.Text = dr["product_name"].ToString();
                price.Text = dr["price"].ToString() + "$";
                brand.Text = "Brand: " + dr["brand"].ToString();
            }

            con.Close();
        }
    }
}