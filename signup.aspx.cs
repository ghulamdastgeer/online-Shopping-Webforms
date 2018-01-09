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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SIGNUP_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=YASIR-PC; database=project; integrated security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into dbo.users(name,password)values('" + NAME.Text + "', '" + password.Text + "') ", con);
            cmd.ExecuteNonQuery();
            con.Close();
        

        }
    }
}
