using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string MyUser = Utility.ReadCookies("Login", "user", Request);
        if (MyUser != null)
            GO(MyUser);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MemberClass ME = new MemberClass();

        if (ME.Login(txtemail.Text, txtpass.Text))
        {
            Utility.CreateCookies("Login", new string[] { "user", "Pass" }, new string[] { txtemail.Text,txtpass.Text }, !CheckBox1.Checked, Response);
            GO(txtemail.Text);
        }
        else
        {
            Label2.Text = "Email Address/Password 'Incorrect'";
        }
    }

    private void GO(string EmailAdd)
    {

        if (EmailAdd == "admin@yahoo.com")
        {
            Response.Redirect("Admin/Admin.aspx");
        }
        else
        {
            Label2.Text = "Email Address/Password 'Incorrect'";
            Response.Redirect("Default.aspx");
        }
    }
}