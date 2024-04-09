using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Database_Helpers;

public partial class admin_Default : System.Web.UI.Page
{
    public string cid;
    helper db=new helper();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            c1();
            c2();
        }
        

    }
    protected void addcntry_Click(object sender, EventArgs e)
    {
        db.values.Add("country",conutry.Text);
        db.insert("country",db.values);
        msglbl.Text = "Country Added Successfully";
        conutry.Text = "";
        c1();
        c2();
    }

    void c1()
    {
        drpcntry.Items.Clear();
        db.Connection.Open();
        string q = "select * from country";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ListItem l1 = new ListItem();
            l1.Text = dr["country"].ToString();
            l1.Value = dr["Id"].ToString();
            this.drpcntry.Items.Add(l1);

        }
        drpcntry.Items.Insert(0, new ListItem("--select--"));
        dr.Close();
        db.Connection.Close();
    }

    void c2()
    {
        drpcntry2.Items.Clear();
        db.Connection.Open();
        string q = "select * from country";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ListItem l1 = new ListItem();
            l1.Text = dr["country"].ToString();
            l1.Value = dr["Id"].ToString();
            this.drpcntry2.Items.Add(l1);

        }
        drpcntry2.Items.Insert(0, new ListItem("--select--"));
        dr.Close();
        db.Connection.Close();
    }


    protected void showcountry_Click(object sender, EventArgs e)
    {

    }
    protected void addstatebtn_Click(object sender, EventArgs e)
    {
        db.values.Add("Id", drpcntry.SelectedValue.ToString());
        db.values.Add("statename", addstatename.Text);
        db.insert("state", db.values);
        msglbl.Text = "State Added Successfully";
        addstatename.Text = "";
    }
    protected void showstatebtn_Click(object sender, EventArgs e)
    {
        
    }
    protected void addcitybtn_Click(object sender, EventArgs e)
    {
        db.values.Add("Id", drpcntry2.SelectedValue.ToString());
        db.values.Add("s_id", drpstate.SelectedValue.ToString());
        db.values.Add("cityname", addcityname.Text);
        db.insert("city", db.values);
        msglbl.Text = "City Added Successfully";
        addstatename.Text = "";
    }
    protected void showcitybtn_Click(object sender, EventArgs e)
    {

    }
    protected void drpcntry_SelectedIndexChanged(object sender, EventArgs e)
    {
       

    }
    protected void drpcntry2_SelectedIndexChanged(object sender, EventArgs e)
    {
        cid=drpcntry2.SelectedValue.ToString();
        drpstate.Items.Clear();
        db.Connection.Open();
        string q = "select * from state where Id='"+cid+"'";
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
    protected void drpstate_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}