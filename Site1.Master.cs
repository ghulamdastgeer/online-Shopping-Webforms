using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.model;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    //this.Label1.Text = string.Format("Welcome {0}", Session["UserName"].ToString());
                }
                if (Session["cart"] != null)
                {
                    List<product> cart_list = Session["cart"] as List<product>;
                    Label2.Text = cart_list.Count.ToString();
                }

            }
        }
    }
}