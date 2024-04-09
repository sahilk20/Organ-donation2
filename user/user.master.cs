using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;
using System.Data;

public partial class home : System.Web.UI.MasterPage
{
    helper db = new helper();
    SqlDataReader reader;

    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dtbl = new DataTable();

    public string firstname, lastname;
    protected void Page_Load(object sender, EventArgs e)
    {
        showdata();
    }
    void showdata()
    {
        db.Connection.Open();
        string q = "select * from registration where email='" + Session["user"] + "'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);

        sda.SelectCommand = cmd;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 1)
        {

            firstname = ds.Tables[0].Rows[0]["first"].ToString();
            lastname = ds.Tables[0].Rows[0]["last"].ToString();

            //imagepath = ds.Tables[0].Rows[0]["image"].ToString();

            ulabel.Text = "Welcome " + firstname + " " + lastname;
            db.Connection.Close();
        }


    }
}
