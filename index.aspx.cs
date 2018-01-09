using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.model;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<product> product_list = new List<product>();
        public static List<product> cart_list = new List<product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            load_product();
            if (Request.QueryString.AllKeys.Contains("id") && Request.QueryString.AllKeys.Contains("Action"))
            {
                string id = Request.QueryString["id"].ToString();
                string action = Request.QueryString["action"].ToString();
                if (action.Equals("add"))
                {
                    add_cart(id);
                }
            }

        }
        public void add_cart(string product_id)
        {
            var product = product_list.Where(x => x.id == product_id);

            //  var product_id = product_list.Where(x => x.id == pro_id);
            foreach (var data in product)
            {
                cart_list.Add(data);
            }
            Session["cart"] = cart_list;
        }
        public void load_product()
        {
            SqlConnection con = new SqlConnection("data source=YASIR-PC; database=project; integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from dbo.products", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    product_list.Add(new product(reader["id"].ToString(), reader["product_name"].ToString(), reader["price"].ToString(), reader["images"].ToString(),reader["description"].ToString()));
                }
            }
        }
    }
}