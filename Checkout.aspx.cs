using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chekout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            WhenPageLoad();
        }
 

    }



    private void WhenPageLoad()
    {
        GridView1.DataSource = (DataTable)Session["Cart"];
        GridView1.DataBind();


        double Total = 0;
        int x = 0;
        for (x = 0; x < GridView1.Rows.Count; x++)

            Total += Convert.ToDouble(GridView1.Rows[x].Cells[5].Text);
        Label1.Text = Total.ToString();
        Label2.Text = x.ToString();
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
      
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable tbl = new DataTable();
        if (Session["Cart"] != null)
        {
            tbl = (DataTable)Session["Cart"];
            string[] PK = { GridView1.Rows[e.RowIndex].Cells[0].Text, GridView1.Rows[e.RowIndex].Cells[1].Text };
            DataRow row = tbl.Rows.Find(PK);
            if (row != null)
                row.Delete();
            Response.Redirect("Checkout.aspx");
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        WhenPageLoad();
        DataBind();
            
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        WhenPageLoad();
        DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQty =(TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];

        if (Session["Cart"] != null)
        {
            DataTable tbl = (DataTable)Session["Cart"];
            string[] PK = { GridView1.Rows[e.RowIndex].Cells[0].Text, GridView1.Rows[e.RowIndex].Cells[1].Text };
            DataRow row = tbl.Rows.Find(PK);

            row[4] = txtQty.Text;
            row[5] = Convert.ToInt16(txtQty.Text) * Convert.ToDouble(row[3]);

            Session["Cart"] = tbl;
            WhenPageLoad();
            GridView1.EditIndex = -1;
            DataBind();
           // Response.Redirect("Category.aspx");
        
        
        
        
        
        }
        
    }
}