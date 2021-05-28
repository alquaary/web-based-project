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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["product"].ConnectionString);


                string sorgu = "select * from Admin where email = @kullanici and password = @sifre;";


                con.Open();
                SqlCommand cmd = new SqlCommand(sorgu, con);

                try
                {
                    cmd.Parameters.AddWithValue("@kullanici", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Sifre", TextBox2.Text);


                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {

                        Label1.Text = "Basariyla kayit yapilmistir";
                        Session.Timeout = 3;
                        Session.Add("Name", TextBox1.Text);

                    }
                    else
                    {
                        Label1.Text = "no no no";
                    }

                }
                catch (Exception)
                {
                    Label1.Text = "404 .. there is a problem";
                }
            }
            else
            {
                Label1.Text = "Bosluklari Doldurun";
            }
        }
    }
}