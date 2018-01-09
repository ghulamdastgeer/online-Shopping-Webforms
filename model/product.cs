using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.model
{
    public class product
    {
        public string id { get; set; }
        public string product_name { get; set; }
        public string price { get; set; }
        public string image { get; set; }
        public string description { get; set; }

        public product (string id,string product_name, string price ,string image ,string description)
        {
            this.id = id;
            this.product_name = product_name;
            this.price = price;
            this.image = image;
            this.description = description;
        }
    }
}