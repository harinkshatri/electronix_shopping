using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_ViewProduct : System.Web.UI.Page
{

    //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\neha\Shopping Order(final)\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    Connection c = new Connection();

    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Session["Cust"] != null)
        //{
        //         = "Welcome" + Session["Cust"];
        //}
        //else
        //{

        //    Response.Redirect("~/Login.aspx");
        //}
    }

    protected void lbtnbuy_Click(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //      SqlConnection sqlcon = new SqlConnection();
            try
            {
                //        string strcon = (@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Mayur\Desktop\final work(Desk)1305\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
                //      SqlCommand cmd;
                string str;

                //    SqlConnection con = new SqlConnection(strcon);
                c.openConnection();
                str = "select * from ProductDetail  where Product_ID='" + Session["Cust"].ToString() + "'";


                //cmd = new SqlCommand(str, con);
                SqlDataReader reader = c.getData(str);
                if (reader.Read())
                {

                    //     = reader["Customer_Name"].ToString();

                }
            }
            catch (SqlException se)
            {
                se.ToString();
            }

        }
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
            
    }
}

