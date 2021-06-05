using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Apo_Company
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object kullanici = Session["Name"];

            if (kullanici != null)
            {
                Label1.Text = Session["Name"].ToString();
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "User_register()", true);
            }
            
        }
    }
}
