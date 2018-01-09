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
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void checkout_click(object sender, EventArgs e)
        {
             
            SqlConnection con = new SqlConnection("data source=YASIR-PC; Database=project; integrated security=true;  ");
            con.Open();
           
                List<product> Cart_list = Session["Cart"] as List<product>;
            
            string id =HttpContext.Current.Session["id"].ToString();
            DateTime dt1 = DateTime.Now;
            string dt = dt1.ToString();
            SqlCommand cmd = new SqlCommand("insert into dbo.orders ([customer-id],[order-date],[user-name],phone,address,email) values('" + id + "',  '" + dt + "','" + name.Text + "','" + phone.Text + "','" + address.Text + "','" + email.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            SqlCommand cmd1 = new SqlCommand("Select MAX(order_id) from dbo.orders ", con);
            con.Open();
            int ID = (int)cmd1.ExecuteScalar();
            
            con.Close();

            foreach (var m in Cart_list)
            {
                string quantity = "1";
                SqlCommand cmd2 = new SqlCommand("Insert into dbo.order_details   (order_id,[product-id],[product-name],price,quantity) values('"+ID+"','"+m.id+ "','" + m.product_name + "','" + m.price + "', '" + quantity + "' )", con);
                con.Open();
               cmd2.ExecuteNonQuery();

                con.Close();
            }
            //Session["Cart"] = null;
          

        }
    }
}