using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SearchMember : System.Web.UI.Page
{
    MemberClass ME = new MemberClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lblSearch_Click(object sender, EventArgs e)
    {
       
       GridView1.DataSource=ME.Search(RadioButtonList1.SelectedValue,txtValueOfSearch.Text);
       GridView1.DataBind();
       GridView1.SelectedIndex = -1;
       btnRemoveMember.Enabled = false;
       lblMsg.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnRemoveMember.Enabled = true;
    }
    protected void btnRemoveMember_Click(object sender, EventArgs e)
    {
        if (ME.Delete(GridView1.SelectedRow.Cells[3].Text))
        {
            btnRemoveMember.Enabled = false;
            GridView1.DataBind();
            lblMsg.Text = "Member Is Deleted Succefully";
        }
        else
        {
            lblMsg.Text = "Not Deleted";
        }
    }
}