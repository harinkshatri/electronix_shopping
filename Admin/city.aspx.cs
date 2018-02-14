using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_city : System.Web.UI.Page
{
    Connection c = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        city_id.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.openConnection();
        String str;
        str=("insert into City(City_Name)values ('"+txtCityName.Text+"')");
        int x = c.changeTable(str);
        if (x > 0)
        {
            Label2.Visible = true;
            Label2.Text = "City inserted successfully";
            GridView1.DataBind();
            Clear();
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "City insert unsuccessful";
        }

    }
    public void Clear()
    {
        txtCityName.Text = "";
        
    }
}