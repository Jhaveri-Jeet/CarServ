using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class Class1
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter sda;
    SqlDataReader sdr;
    DataTable d;
    public Class1()
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Desktop\carserv\carserv\App_Data\Car.mdf;Integrated Security=True");
        con.Open();
    }
    public DataTable get_data(string q)
    {
        d = new DataTable();
        sda = new SqlDataAdapter(q, con);
        sda.Fill(d);
        return d;
    }

    public bool action(string q)
    {
        cmd = new SqlCommand(q, con);
        cmd.ExecuteNonQuery();
        return true;
    }
}