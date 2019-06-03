using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string User = Utility.ReadCookies("Login", "user", Request);
        if (User != null)
        {
            LblWelcome.Text = "Wellcom (" + User + ") Now You Can Made Shopping In Our Store ! ";
            lbnLogout.Visible = true;
        }      
   
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Utility.RemoveCookies("Login", Response);
        lbnLogout.Visible = false;
        LblWelcome.Text = "We Hope You To Enter Again !";
    }
}
