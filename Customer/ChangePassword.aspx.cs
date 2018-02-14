using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_ChangePassword : System.Web.UI.Page
{

    Connection c = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cust"] != null)
        {
            Label2.Text = "Welcome" + Session["Cust"];
        }
        else
        {

            Response.Redirect("~/Login.aspx");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        c.openConnection();
        String str;
        str=("UPDATE Register SET Password ='" + txtNewPassword.Text + "' WHERE UserName='" + txtUsername.Text + "' AND Password='" + txtOldPassword.Text + "'");

        int x = c.changeTable(str);
        if(x!=0)
        {
           Label3.Text = "Password changed successuful";
           Label3.Visible = true;
           clear();
       }
       else
       {
           Label3.Text = "Password not change";
           clear();
       }
       c.closeConnection();
    }
    void clear()
    {
        txtUsername.Text = " ";
        txtOldPassword.Text = " ";
        txtNewPassword.Text = " ";
        txtConfirmPass.Text = "  ";
    
    
    }
}