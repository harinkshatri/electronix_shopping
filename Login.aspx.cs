using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    //SqlConnection sqlcon = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Website\Shopping Order(final)\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    Connection c = new Connection();
    public SqlDataReader sqldr;

    protected void Page_Load(object sender, EventArgs e)
    {    
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if (txtUsername.Text == "Admin" && txtPassword.Text == "Admin")
        {
            Session["Admin"] = txtUsername.Text;
            Response.Redirect("~/Admin/AdminHome.aspx");
        } 
        else
        {
            c.openConnection();
            SqlCommand cmd;
            cmd = new SqlCommand("select * from Register where Username='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "'", sqlcon);
            //string str;
            //str = "select * from Register where Username='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            try
            {
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["Cust"] = txtUsername.Text;
                    Session["Pass"] = txtUsername.Text;
                    Response.Redirect("~/Customer/Home.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid Username";
                }
            }
            catch (Exception ex)
            {
                ex.ToString(); 
                Label1.Visible = true;
                Label1.Text = "unable to Connect Database";
            }
        }
    }
    public void clear()
    {
        txtUsername.Text = "";
        txtPassword.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ForgotPassword.aspx");
    }
}

    










