using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_History_Of_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cust"] != null)
        {
            Label1.Text = "" + Session["Cust"];
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

    }
}