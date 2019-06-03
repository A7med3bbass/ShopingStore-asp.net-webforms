using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_OurCategory : System.Web.UI.Page
{
    CategoryClass Cat = new CategoryClass();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BtnRemove.Enabled = true;
        BtnUpdate.Enabled = true;
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        txtNum.Text = "";
        txtName.Text = "";
        txtDesc.Text = "";
        ImgImg.ImageUrl = "";
        txtNum.ReadOnly = false;
        txtNum.Text = Cat.GetNextCatNo();


    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        txtNum.Text = GridView2.SelectedRow.Cells[1].Text;
        txtName.Text = GridView2.SelectedRow.Cells[2].Text;
        txtDesc.Text = GridView2.SelectedRow.Cells[3].Text;
        txtNum.ReadOnly = true;
        ImgImg.ImageUrl = "../ImgImgs/" + txtNum.Text + ".jpg";
        MultiView1.ActiveViewIndex = 1;
        lblaMsg.Text = "";
    }
    protected void BtnRemove_Click(object sender, EventArgs e)
    {
        if (Cat.RemoveCategory(GridView2.SelectedRow.Cells[1].Text))
            lblaMsg.Text= "Category is Deleted Successfully";
        else
            lblaMsg.Text = "Category Not Deleted";
            GridView2.DataBind();
            BtnRemove.Enabled = false;
            BtnUpdate.Enabled = false;
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        GridView2.DataSource = Cat.Search(RadioButtonList1.SelectedValue,txtSearch.Text);
        GridView2.DataBind();
        lblaMsg.Text = "";
        BtnRemove.Enabled = false;
        BtnUpdate.Enabled = false;
        GridView2.SelectedIndex = -1;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Cat.CatNo = txtNum.Text;
        Cat.CatName = txtName.Text;
        Cat.CatDescription = txtDesc.Text;

        if (txtNum.ReadOnly)
            if (Cat.UpDate())
            {
                lblaMsg.Text = "Category Updated Successfully";
                MultiView1.ActiveViewIndex = 0;
            }

            else
                lblaMsg.Text = "Category Not Updated";

        else
            if (Cat.Add())
            {
                lblaMsg.Text = "Category Added Successfully";
                MultiView1.ActiveViewIndex = 0;
            }
            else
                lblaMsg.Text = "Category Not Added , Please Change Category Number";

        if (Filup.HasFile)
        {
            Filup.SaveAs(Server.MapPath(("..\\ImgImgs")+"\\"+txtNum.Text+".jpg"));
            
        }

    }
}