using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;
using System.Data;
public partial class admin_edirdoctor : System.Web.UI.Page
{
    SqlDataReader dr;
    helper db = new helper();
    public string qs,dd;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        qs = Request.QueryString["r_id"];
       
            
            showrequestdata();
            showdonordata();
        
    }

    



    void showrequestdata()
    {
        db.Connection.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dtbl = new DataTable();
        cmd.CommandText = "select * from requests where Id='" + qs + "'";
        cmd.Connection = db.Connection;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = ds.Tables[0].Rows[0]["first"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["last"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["addr"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["country"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["state"].ToString();
            Label7.Text = ds.Tables[0].Rows[0]["city"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["gender"].ToString();
            Label9.Text = ds.Tables[0].Rows[0]["dob"].ToString();
            Label10.Text = ds.Tables[0].Rows[0]["bloodgrp"].ToString();
            Label11.Text = ds.Tables[0].Rows[0]["rage"].ToString();
            Label12.Text = ds.Tables[0].Rows[0]["uemail"].ToString();
            Label13.Text = ds.Tables[0].Rows[0]["did"].ToString();
            Label15.Text = ds.Tables[0].Rows[0]["demail"].ToString();
            Label14.Text = ds.Tables[0].Rows[0]["dname"].ToString();
            Label21.Text = ds.Tables[0].Rows[0]["status"].ToString();
            db.Connection.Close();
        }
    }

    void showdonordata()
    {
        dd = Label13.Text.ToString();
        db.Connection.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DataTable dtbl = new DataTable();
        cmd.CommandText = "select * from donations where Id='" + dd + "'";
        cmd.Connection = db.Connection;
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            
            Label16.Text = ds.Tables[0].Rows[0]["country"].ToString();
            Label17.Text = ds.Tables[0].Rows[0]["state"].ToString();
            Label18.Text = ds.Tables[0].Rows[0]["city"].ToString();
            Label19.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
            Label20.Text = ds.Tables[0].Rows[0]["rtype"].ToString();

            db.Connection.Close();
        }
 
    }

    
    protected void submit_Click(object sender, EventArgs e)
    {
        v2();
        v1();
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("pendingreq.aspx");
    }

    void v1()
    {
        db.Connection.Open();
        string q = "update requests set status='approved' WHERE Id = '" + qs + "'";

        SqlCommand sqlCmd = new SqlCommand(q, db.Connection);
        sqlCmd.ExecuteNonQuery();
        Response.Redirect("pendingreq.aspx");
        db.Connection.Close();
    }
    void v2()
    {
        dd = Label13.Text.ToString();
        db.Connection.Open();
        string q = "update donations set status='transplanted' WHERE Id = '" + dd + "'";

        SqlCommand sqlCmd = new SqlCommand(q, db.Connection);
        sqlCmd.ExecuteNonQuery();
        db.Connection.Close();
    }
}