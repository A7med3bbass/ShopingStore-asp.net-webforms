using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MemberClass ME = new MemberClass();
        Label1.Text = ME.Register(txtfirstname.Text, txtlastname.Text, txtemail.Text, txtpass.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}