using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PrCatImage_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["catno"] != null)
            SqlDataSource1.SelectCommand = "SELECT * FROM [Product] Where CatNo=" + Request.QueryString["CatNo"].ToString();
        else
            SqlDataSource1.SelectCommand = "SELECT * FROM [Product]";
    }
}