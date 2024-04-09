using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class user_admitform : System.Web.UI.Page
{
    public string amt,sid,cid;
    helper db = new helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            c1();
        }
        
    }

    void c1()
    {
        srpcountry.Items.Clear();
        db.Connection.Open();
        string q = "select * from country";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ListItem l1 = new ListItem();
            l1.Text = dr["country"].ToString();
            l1.Value = dr["Id"].ToString();
            this.srpcountry.Items.Add(l1);

        }
        srpcountry.Items.Insert(0, new ListItem("--select--"));
        dr.Close();
        db.Connection.Close();
    }


    void c2()
    {
        sid = srpcountry.SelectedValue.ToString();
        drpstate.Items.Clear();
        db.Connection.Open();
        string q = "select * from state where Id='"+sid+"'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ListItem l1 = new ListItem();
            l1.Text = dr["statename"].ToString();
            l1.Value = dr["s_id"].ToString();
            this.drpstate.Items.Add(l1);

        }
        drpstate.Items.Insert(0, new ListItem("--select--"));
        dr.Close();
        db.Connection.Close();
    }


    void c3()
    {
        cid = drpstate.SelectedValue.ToString();
        drpcity.Items.Clear();
        db.Connection.Open();
        string q = "select * from city where s_id='" + cid + "'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ListItem l1 = new ListItem();
            l1.Text = dr["cityname"].ToString();
            l1.Value = dr["c_id"].ToString();
            this.drpcity.Items.Add(l1);

        }
        drpcity.Items.Insert(0, new ListItem("--select--"));
        dr.Close();
        db.Connection.Close();
    }
    

    bool reg()
    {
        db.values.Add("first", TextBox1.Text);
        db.values.Add("last", TextBox2.Text);
        db.values.Add("mobile", TextBox3.Text);
        db.values.Add("addr", TextBox4.Text);
        db.values.Add("gender", sex.SelectedItem.Text);
        db.values.Add("dob", TextBox5.Text);
        db.values.Add("height", TextBox6.Text);
        db.values.Add("weight", TextBox7.Text);
        db.values.Add("bloodgrp", bloodgrp.SelectedItem.Text);
        db.values.Add("alco", alcoholdrp.SelectedItem.Text);
        db.values.Add("tabacoo", tabacoodrp.SelectedItem.Text);
        db.values.Add("drugs", drugsdrp.SelectedItem.Text);
        db.values.Add("dage", TextBox8.Text);
        db.values.Add("rtype", roomtype.SelectedItem.Text);
        db.values.Add("country", srpcountry.SelectedItem.Text);
        db.values.Add("state", drpstate.SelectedItem.Text);
        db.values.Add("city", drpcity.SelectedItem.Text);
        db.values.Add("status", "available");


        db.values.Add("uemail", Session["user"].ToString());
        




        if (db.insert("donations", db.values))
        {
            return true;

        }
        else
        {
            return false;
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        if (reg())
        {
            Response.Redirect("done2.aspx");
       
        }
        else
        {
           // msg_lbl.Text = "Failed to Add";
        }
    }


    protected void srpcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        c2();
    }


    protected void drpstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        c3();
    }
}