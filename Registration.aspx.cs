using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//using System.Windows.Forms;

public partial class Registraion : System.Web.UI.Page
{
  
   
    protected void Page_Load(object sender, EventArgs e)
    {
        txtCust_ID.Enabled = false;
       // txtCust_ID.Text = c.Scalar("select IsNull(max(Cust_ID),0)+1 from Register").ToString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Connection c = new Connection();

        c.openConnection();

         string temp = null;
        if (FileUpload1.HasFile)
        {
            temp = "~/img/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(temp));
        }
        String str;
        str = "insert into Register(Customer_Name,Address,Contact_no,State_Name,City_Name,Pincode,Email_ID,Question,Answer,Username,Password,Image,Gender,Birthdate) values ('" + txtCust_Name.Text + "','" + txtAddress.Text + "','" +txtContactno.Text + "','" + DropState.SelectedValue + "','" + DropCity.SelectedValue + "','" +txtPincode.Text+ "','" + txtEmailID.Text + "','" + DropQuestion.SelectedValue + "','" + txtAnswer.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "','"+temp.ToString()+ "','" + RadioButtonList1.SelectedValue + "','" + txtBirthdate.Text + "')";
        
       // Label1.Text = str;
       int x=c.changeTable(str);
       if(x>0)
       {
          // MessageBox.Show("Registration successuful");
           Label1.Text = "Registration successuful";
           Label1.Visible = true;
           clear();
       }
       else
       {
          // MessageBox.Show("Registration unsuccessful");
          Label1.Text = "Registration unsuccessful";
       }
       c.closeConnection();

    }
        public void clear()
        {
            
            txtCust_Name.Text="";
            txtAddress.Text="";
            txtContactno.Text="";
            txtPincode.Text="";
            txtEmailID.Text="";
            
            txtAnswer.Text="";
            txtUsername.Text="";
            txtPassword.Text="";
            txtBirthdate.Text="";
                     
        }
        
        
}