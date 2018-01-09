using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=YASIR-PC; database=project; integrated security=true;  ");
            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("select * from dbo.users where name= '" + NAME.Text + "' and password= '" + password.Text + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                string Username = dt.Rows[0]["name"].ToString();
                string id = dt.Rows[0]["id"].ToString();
                Session["Username"] = Username;
                Session["id"] = id;
                Response.Redirect("index.aspx");
                
            }
            else
            {
                //LblError.VISIBLE = true;
                //LblError.text = "username/password ar incorrect........";

            }
        }
    }
}