using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Database_Helpers;

public partial class admin_home : System.Web.UI.Page
{
    helper db = new helper();

    protected void Page_Load(object sender, EventArgs e)
    {
        c1();
        c2();
        c3();
        c4();
        c5();
        c6();
        c7();
    }
    void c1()
    {
        db.Connection.Open();
        string q = "select COUNT(Id) from donations";
        SqlCommand cmd = new SqlCommand(q, db.Connection);

        Object o = cmd.ExecuteScalar();
        Label1.Text = o.ToString();
        db.Connection.Close();
    }

    void c2()
    {
        db.Connection.Open();
        string q = "select COUNT(Id) from donations where status='available'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);

        Object o1 = cmd.ExecuteScalar();
        Label2.Text = o1.ToString();
        db.Connection.Close();
    }
    void c3()
    {
        db.Connection.Open();
        string q = "select COUNT(Id) from donations where status='transplanted'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);

        Object o2 = cmd.ExecuteScalar();
        Label3.Text = o2.ToString();
        db.Connection.Close();
    }
    void c4()
    {
        db.Connection.Open();
        string q = "select COUNT(Id) from requests";
        SqlCommand cmd = new SqlCommand(q, db.Connection);

        Object o3 = cmd.ExecuteScalar();
        Label4.Text = o3.ToString();
        db.Connection.Close();
    }
    void c5()
    {
        db.Connection.Open();
        string q = "select COUNT(Id) from requests where status='pending'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);

        Object o4 = cmd.ExecuteScalar();
        Label5.Text = o4.ToString();
        db.Connection.Close();
    }

    void c6()
    {
        db.Connection.Open();
        string q = "select COUNT(Id) from requests where status='approved'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        Object o4 = cmd.ExecuteScalar();
        Label6.Text = o4.ToString();
        db.Connection.Close();
    }

    void c7()
    {
        db.Connection.Open();
        string q = "select COUNT(user_Id) from registration";
        SqlCommand cmd = new SqlCommand(q, db.Connection);

        Object o4 = cmd.ExecuteScalar();
        Label7.Text = o4.ToString();
        db.Connection.Close();
    }




}