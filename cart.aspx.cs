using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.model;

namespace WebApplication1
{
    public partial class cart : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
 
            if (Session["Cart"] != null)
            {
              List<product> Cart_list = Session["Cart"] as  List<product>;
                GV.DataSource = Session["Cart"];
                GV.DataBind();

            }

        }

        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            string key = GV.SelectedDataKey.Value.ToString();
            List<product> Cart_list = Session["Cart"] as List<product>;
            List<product> Cart_list1 = new List<product>();
            foreach (var data in Cart_list)
            {
                if (data.id != key)
                    Cart_list1.Add(data);

            }
            Session["Cart"] = Cart_list1;
            GV.DataSource = Session["Cart"];
            GV.DataBind();
            Response.Redirect("Cart.aspx");
        }

        
        
    }
}