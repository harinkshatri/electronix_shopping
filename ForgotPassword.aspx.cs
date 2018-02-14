using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ForgotPassword : System.Web.UI.Page
{
    Connection c = new Connection(); 
    protected void Page_Load(object sender, EventArgs e)
    {  
    }   
    protected void btnshow_Click(object sender, EventArgs e)
    {
            c.openConnection();
            String str;
            String q = DropQuestion.SelectedValue;
            str = "select Password from Register where Username='"+txtUsername.Text+"' and Question='" +q + "' and Answer='"+txtAnswer.Text+"'";
         
             SqlDataReader reader = c.getData(str);
             if (reader.Read())
             {
                 lblpwd.Text = reader["Password"].ToString();
                 lblpwd.Visible = true;
                 Label3.Visible = true;
                 reader.Close();
             }
             else
             {
                 lblpwd.Visible = true;
                 lblpwd.Text = "Invalid Username";
             }
             c.closeConnection();
    }
}
