using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.IO;
using System.Xml.Serialization;
using System.Data;
using System.Text;

namespace Apo_Company
{
    /// <summary>
    /// Summary description for Api
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Api : System.Web.Services.WebService
    {
        private DataSet1TableAdapters.CustomersTableAdapter db = new DataSet1TableAdapters.CustomersTableAdapter();
        private DataSet1.CustomersDataTable dt;


        // return as json
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void getAllCustomers()
        {
            Context.Response.Write(getCustomer());
        }

        private string getCustomer()
        {
            dt = db.GetData();
            string myResponse = Newtonsoft.Json.JsonConvert.SerializeObject(dt);
            return myResponse;
        }

        // return as xml
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Xml)]
        public void getAllCustomersXml()
        {
            Context.Response.Write(getCustomerXml());
        }

        private string getCustomerXml()
        {
            string myReturn = string.Empty;
            dt = db.GetData();

            using (var memoryStream = new MemoryStream())
            {

                using (TextWriter streamwriter = new StreamWriter(memoryStream))
                {
                    var xmlSerialser = new XmlSerializer(typeof(DataTable));
                    xmlSerialser.Serialize(streamwriter, dt);
                    myReturn = Encoding.UTF8.GetString(memoryStream.ToArray());
                }
            }
            return myReturn;
        }
    }
}
