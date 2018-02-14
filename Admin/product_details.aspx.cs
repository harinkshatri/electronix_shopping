using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_product_details : System.Web.UI.Page
{ 
        
    Connection c = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
          txtProductID.Enabled = false;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        c.openConnection();

        string temp = null;
        if (FileUpload1.HasFile)
        {
            temp = "~/img/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(temp));
        }

        String str;
        str = "insert into ProductDetail(Product_Name,Product_Description,Price,Product_Image,Date) values('" + txtProduct_name.Text + "','" + txtPro_Detail.Text + "'," + txtPrice.Text + ",'" + temp.ToString() + "','" + txtDate.Text + "') ";


        int x = c.changeTable(str);
        if (x > 0)
        {
            Label2.Text = "Product inserted successuful";
            Label2.Visible = true;
            clear();
        }
        else
        {
            Label2.Text = "Product insert unsuccessful";
        }
        c.closeConnection();

    }

    public void clear()
    {

        txtProduct_name.Text = "";
        txtPro_Detail.Text = "";
        txtPrice.Text = "";
        txtDate.Text = "";

    }
  
} 