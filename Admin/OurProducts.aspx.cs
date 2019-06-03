using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OurProducts : System.Web.UI.Page
{
    ProductClass Pro = new ProductClass(); 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        GridView2.DataSource = Pro.Search(RadioButtonList1.SelectedValue, txtSearch.Text);
        GridView2.DataBind();
        lblaMsg.Text = "";
        BtnRemove.Enabled = false;
        BtnUpdate.Enabled = false;
        GridView2.SelectedIndex = -1;
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        txtProdNo.Text = "";
        txtQty.Text = "";
        txtDesc.Text = "";
        txtPrice.Text = "";
        lblMasg2.Text = "";
        ImgImg.ImageUrl = "";
        txtProdNo.ReadOnly = false;
        txtProdNo.Text = Pro.GetNextProdNo();
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        DropDownList1.SelectedValue = GridView2.SelectedRow.Cells[1].Text;
        txtProdNo.Text = GridView2.SelectedRow.Cells[2].Text;
        txtProdName.Text=GridView2.SelectedRow.Cells[3].Text;
        txtPrice.Text=GridView2.SelectedRow.Cells[4].Text;
        txtQty.Text = GridView2.SelectedRow.Cells[5].Text;
        txtDesc.Text = GridView2.SelectedRow.Cells[7].Text;
        
        txtProdNo.ReadOnly = true;
        ImgImg.ImageUrl = "../ProImage/" + txtProdNo.Text + ".jpg";
        MultiView1.ActiveViewIndex = 1;
        lblaMsg.Text = "";
    }
    protected void BtnRemove_Click(object sender, EventArgs e)
    {
        if (Pro.RemoveProduct(GridView2.SelectedRow.Cells[1].Text))
            lblaMsg.Text = "Product is Deleted Successfully";
        else
        {
            lblaMsg.Text = "Product Not Deleted";
            GridView2.DataBind();
            BtnRemove.Enabled = false;
            BtnUpdate.Enabled = false;
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BtnRemove.Enabled = true;
        BtnUpdate.Enabled = true;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Pro.CatNo =DropDownList1.SelectedValue;
        Pro.ProdNo =txtProdNo.Text;
        Pro.ProdName = txtProdName.Text;
        Pro.ProdPrice =Convert.ToDecimal(txtPrice.Text);
        Pro.ProdQuantity = Convert.ToInt32(txtQty.Text);
        Pro.ProdDescription = txtDesc.Text;

        if (txtProdNo.ReadOnly)
            if (Pro.UpDate())
            {
                lblaMsg.Text = "Product Updated Successfully";
                MultiView1.ActiveViewIndex = 0;
            }

            else
                lblMasg2.Text = "Product Not Updated";

        else
            if (Pro.Add())
            {
                lblaMsg.Text = "Product Added Successfully";
                MultiView1.ActiveViewIndex = 0;
            }
            else
                lblMasg2.Text = "Product Not Added ";

        if (Filup.HasFile)
        {
            Filup.SaveAs(Server.MapPath(("../ProImage") + "//" + txtProdNo.Text + ".jpg"));

        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}