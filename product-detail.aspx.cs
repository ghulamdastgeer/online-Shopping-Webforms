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
    public partial class product_detail : System.Web.UI.Page
    {
        
             public List<product> list1 = new List<product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.AllKeys.Contains("id"))
            {
                string id = Request.QueryString["id"].ToString();
                SqlConnection con = new SqlConnection("data source=YASIR-PC; database=project; integrated security=true;  ");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from dbo.products where id=" + id + "", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    list1.Add(new product(reader["id"].ToString(), reader["product_name"].ToString(), reader["price"].ToString(), reader["images"].ToString(), reader["description"].ToString()));

                }

                con.Close();





            }
    }

}
    }
