using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DetailProducts : System.Web.UI.Page
{

    ProductClass Pro = new ProductClass();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Request.QueryString["catno"] != null && Request.QueryString["prono"] != null)
        {
            if (Pro.Find(Request.QueryString["catno"].ToString(),Request.QueryString["prono"].ToString()))
            {
                lblCat.Text = Pro.CatNo;
                lblProID.Text = Pro.ProdNo.ToString();
                lblProName.Text = Pro.ProdName;
                lblPrice.Text = Pro.ProdPrice.ToString();
                lblDesc.Text = Pro.ProdDescription;
                //---------------------------------------------------------------
                txtQuantity.Text = txtShop.Text;   
                lblQty.Text = Pro.ProdQuantity.ToString();
               //---------------------------------------------------------------

                Image1.ImageUrl = "ProImage//"+ Pro.ProdNo + ".jpg";
            }

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        DataTable tbl = new DataTable();
        if (Session["Cart"] == null)
        {
            tbl.Columns.Add("CatNo");
            tbl.Columns.Add("ProdNo");
            tbl.Columns.Add("ProdName");
            tbl.Columns.Add("ProdPrice");
            tbl.Columns.Add("ProdQuantity");
            tbl.Columns.Add("SubTotal");

            DataColumn [] Cols={tbl.Columns[0],tbl.Columns[1]};
            tbl.Constraints.Add("Cart-Pk", Cols, true);
        }
        else
        {
            tbl = (DataTable)Session["Cart"];
            DataRow Row = tbl.NewRow();
            Row[0] = Pro.CatNo;
            Row[1] = Pro.ProdNo;
            Row[2] = Pro.ProdName;
            Row[3] = Pro.ProdPrice;
            Row[4] = txtQuantity.Text;
            Row[5] =Convert.ToInt16(txtQuantity.Text) * Convert.ToDecimal(Pro.ProdPrice);

            tbl.Rows.Add(Row);
        }
        Session["Cart"] = tbl;
        Response.Redirect("Category.aspx");
    }
}