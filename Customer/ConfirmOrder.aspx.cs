using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_ConfirmOrder : System.Web.UI.Page
{
    Connection c = new Connection();

    protected void Page_Load(object sender, EventArgs e)
    {
        txtpayment_mode.Enabled = false;        
        txtpayment_mode.Text = "Cash On Delivery";
        //txtorder_no.Enabled = false;
        //txtorder_no.Text = c.Scalar("select IsNull(max(Order_No),0)+1 from ConfimOrder").ToString();
        txtdate_of_order.Enabled = false;
        txtdate_of_order.Text = DateTime.Now.ToShortDateString();
        
        Label3.Text = Request.QueryString[0].ToString();
       
        if (Session["Cust"] != null)
        {
            Label2.Text = "Welcome " + Session["Cust"]; 
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

        txtCust_Name.Text = ""+Session["Cust"];
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        c.openConnection();
        String str;
        str = "insert into ConfirmOrder(Product_ID,Customer_Name,Product_Name,Product_Description,Total_Price,Payment_Mode,Date_Of_Order,image)values ("+txtProduct_ID.Text+",'"+txtCust_Name.Text+"','"+txtproduct_name.Text+"','"+txtProduct_Description.Text+"',"+txttotal_price.Text+",'"+txtpayment_mode.Text+"','"+txtdate_of_order.Text+"','"+Image1.ImageUrl+"') ";
        int x = c.changeTable(str);
        if (x > 0)
        {

            Label7.Text = "Order has been sent,  successufully.. ";
            Label7.Visible = true;

        }
        else
        
        {
            Label7.Text = "  Order not send successfully.  ";
            Label7.Visible = true;
        }
    }    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow Row;
        Row = GridView1.SelectedRow;
        txtProduct_ID.Text = Row.Cells[1].Text;
        txtproduct_name.Text = Row.Cells[2].Text;
        txtProduct_Description.Text = Row.Cells[3].Text;
        txttotal_price.Text = Row.Cells[4].Text;
        Image1.ImageUrl = Row.Cells[5].Text;

    }
} 