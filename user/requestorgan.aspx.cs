using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;
using System.Data;

public partial class user_appointform : System.Web.UI.Page
{
    public string idd,dname,demail,sid,cid;
    public string did;
    
    helper db = new helper();
    protected void Page_Load(object sender, EventArgs e)
    {
        idd = Request.QueryString["order_id"];
        if(!IsPostBack)
        {
            
            c1();
        }
        showdata();

    }


    void showdata()
    {
        string seldata = "select * from donations where Id='"+idd+"'";
        SqlCommand cmd = new SqlCommand(seldata,db.Connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet dt = new DataSet();
        da.Fill(dt);
        if(dt.Tables[0].Rows.Count>0)
        {
            orgnm.Text = dt.Tables[0].Rows[0]["rtype"].ToString();
            dname = dt.Tables[0].Rows[0]["first"].ToString() +" "+ dt.Tables[0].Rows[0]["last"].ToString();
            demail = dt.Tables[0].Rows[0]["uemail"].ToString();
            did = dt.Tables[0].Rows[0]["Id"].ToString();
        }
 
    }

    bool reg()
    {
        db.values.Add("first", TextBox1.Text);
        db.values.Add("last", TextBox2.Text);
        db.values.Add("mobile", TextBox3.Text);
        db.values.Add("addr", TextBox4.Text);
        db.values.Add("country", srpcountry.SelectedItem.Text);
        db.values.Add("state", drpstate.SelectedItem.Text);
        db.values.Add("city", drpcity.SelectedItem.Text);
        db.values.Add("gender", sex.SelectedItem.Text);
        db.values.Add("dob", TextBox5.Text);
        db.values.Add("bloodgrp", bloodgrp.SelectedItem.Text);
        db.values.Add("rage", TextBox8.Text);
        db.values.Add("rorgan", orgnm.Text);
        db.values.Add("did", did.ToString());
        db.values.Add("demail", demail.ToString());
        db.values.Add("dname", dname.ToString());
        db.values.Add("status", "pending");
        db.values.Add("uemail", Session["user"].ToString());





        if (db.insert("requests", db.values))
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
            Response.Redirect("done.aspx");
        }
        else
        {
            Response.Write("failed");
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
        string q = "select * from state where Id='" + sid + "'";
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

    protected void srpcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        c2();
    }
    protected void drpstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        c3();
    }
}