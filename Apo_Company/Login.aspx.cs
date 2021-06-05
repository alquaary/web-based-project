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
            object kullanici = Session["Name"];

            if (kullanici != null)
            {
                Response.Redirect("/");
            }
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
                        Response.Redirect("/");
                         
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "user_error()", true);
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

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["product"].ConnectionString);

                string dt1 = DateTime.Now.ToString("dd/MM/yyyy");

                string sorgu = "INSERT INTO [Customers] ([customerID], [name], [surname], [phone], [address], [password], [email], [date]) VALUES (@ID, @name, @surname, @phone, @address, @password, @email, " + dt1 + ");";


                using (SqlCommand cmd = new SqlCommand(sorgu, con))
                {
                    cmd.Parameters.AddWithValue("@ID", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@name", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@surname", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@phone", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@address", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@password", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox9.Text);

                    con.Open();
                    int result = cmd.ExecuteNonQuery();

                    // Check Error 
                    if (result < 0)
                    {
                        
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "register_error()", true);
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "User_register()", true);

                    }
                }
                






            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "user_error()", true);

            }

        }
    }
}