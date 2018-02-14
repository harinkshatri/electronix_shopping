using System;  
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customer_View_Profile : System.Web.UI.Page
{
    Connection c = new Connection(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cust"] != null)
        {
            Label2.Text = "Welcome " + Session["Cust"];
        }
        else
        {

            Response.Redirect("~/Login.aspx");
        }
        if (!IsPostBack)
        {

            try
            {  
                string str;
                
                c.openConnection();
                str = "select * from Register where Username='" +Session["Cust"].ToString()  + "'";
                SqlDataReader reader = c.getData(str);
                if (reader.Read()) 
                {
                    txtCust_Id.Text = reader["Customer_ID"].ToString();
                    txtCust_Name.Text = reader["Customer_Name"].ToString();
                    txtAddress.Text = reader["Address"].ToString();
                    txtContactno.Text = reader["Contact_no"].ToString();
                    txtStateName.Text = reader["State_Name"].ToString();
                    txtCityName.Text = reader["City_Name"].ToString();
                    txtPincode.Text = reader["Pincode"].ToString();
                    txtEmailID.Text = reader["Email_ID"].ToString();
                    txtquestion.Text = reader["Question"].ToString();
                    txtAnswer.Text = reader["Answer"].ToString();
                    txtUsername.Text = reader["Username"].ToString();
                    ImgCustomer.ImageUrl = reader["Image"].ToString();

                    reader.Close();
                    c.closeConnection();

                }
            }
            catch (SqlException se)
            {
                se.ToString();
            }


        }
    }


    
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
      c.openConnection();
      String str =  "UPDATE Register SET Customer_Name='" + txtCust_Name.Text + "',Address='" + txtAddress.Text + "',Contact_no='" + txtContactno.Text + "',Pincode='" + txtPincode.Text + "',Email_ID='" + txtEmailID.Text + "',Username='" + txtUsername.Text + "'WHERE Customer_ID='"+txtCust_Id.Text+"'";

      int x = c.changeTable(str);
      if (x!= 0)
      {
          Label3.Visible = true;
          Label3.Text = "Update successfully";
      }
      else
      {
          Label3.Visible = true;
          Label3.Text = "Un-successful Update";
      }
       
        Label3.Visible = true;
        c.closeConnection();
    }
 }

