using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_state : System.Web.UI.Page
{
    Connection c = new Connection();

    protected void Page_Load(object sender, EventArgs e)
    {
        txtStateID.Enabled = false;
    }
  
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        c.openConnection();
        String str;
        str=("insert into State(State_Name)values('"+txtStateName.Text+"')");
        int x = c.changeTable(str);

        if (x > 0)
        {
            Label1.Text = "State inserted successfully";
            Label1.Visible = true;
            GridView1.DataBind();
            clear();
        
        }
        else
        {
            Label1.Text = "State insert unsuccessfully";
            Label1.Visible = true;
        }
        c.closeConnection();
    }
    public void clear()
    {

        txtStateName.Text = " ";
    }
}