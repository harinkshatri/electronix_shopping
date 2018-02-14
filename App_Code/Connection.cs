using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

public class Connection
{

    SqlConnection sqlcon = null;
    SqlCommand sqlcmd = null;
    SqlDataReader sqldr = null;



    public object sc;
    public int x;
    public DataSet ds;
    public SqlDataAdapter da;

	public Connection()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void openConnection()
    {
        try
        {

            string connectionstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            sqlcon = new SqlConnection(connectionstring);
           // sqlcon = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\Infinity\Desktop\Shopping Order(final)\App_Data\Database.mdf; Integrated Security = True; Connect Timeout = 30");
            sqlcon.Open();

        }
        catch (SqlException se)
        {
            se.ToString();
        }
       
    }

    public int changeTable(String s)
    {
       openConnection();
        sqlcmd = new SqlCommand(s, sqlcon);
        int x = sqlcmd.ExecuteNonQuery();
        return x;

    }
    public SqlDataReader getData(String s)
    {
        openConnection();
        sqlcmd = new SqlCommand(s, sqlcon);
        sqldr = sqlcmd.ExecuteReader();
        return sqldr;
    }

    //g appcode coding start



    public object Scalar(string str)
    {

        sqlcon.Close();
        sqlcon.Open();
        sqlcmd = new SqlCommand(str, sqlcon);
        object no = sqlcmd.ExecuteScalar();
        return no;
    }
    public DataSet SelectAll(string str)
    {
        sqlcon.Close();
        sqlcon.Open();
        da = new SqlDataAdapter(str, sqlcon);
        ds = new DataSet();
        da.Fill(ds);
        return ds;

    }

    //End of g appcode

    public void closeConnection()
    {
        sqlcon.Close();
    }
}