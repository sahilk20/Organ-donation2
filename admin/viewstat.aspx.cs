using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

public partial class admin_viewnurse : System.Web.UI.Page
{
    helper db = new helper();
    public string idd;


    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
            c1();
            c4();
            c7();
        }
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
        drpstate.Items.Clear();
        db.Connection.Open();
        string q = "select * from state where Id='"+drpcntry.SelectedValue.ToString()+"'";
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
        drpcity.Items.Clear();
        db.Connection.Open();
        string q = "select * from city where s_id='" + drpstate.SelectedValue.ToString() + "'";
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


    void c4()
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

    void c5()
    {
        drpstate2.Items.Clear();
        db.Connection.Open();
        string q = "select * from state where Id='" + drpcntry2.SelectedValue.ToString() + "'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ListItem l1 = new ListItem();
            l1.Text = dr["statename"].ToString();
            l1.Value = dr["s_id"].ToString();
            this.drpstate2.Items.Add(l1);

        }
        drpstate2.Items.Insert(0, new ListItem("--select--"));
        dr.Close();
        db.Connection.Close();
    }

    void c6()
    {
        drpcity2.Items.Clear();
        db.Connection.Open();
        string q = "select * from city where s_id='" + drpstate2.SelectedValue.ToString() + "'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ListItem l1 = new ListItem();
            l1.Text = dr["cityname"].ToString();
            l1.Value = dr["c_id"].ToString();
            this.drpcity2.Items.Add(l1);

        }
        drpcity2.Items.Insert(0, new ListItem("--select--"));
        dr.Close();
        db.Connection.Close();
    }

    void c7()
    {
        db.Connection.Open();
        string q = "select DISTINCT rtype from donations";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ListItem l1 = new ListItem();
            l1.Text = dr["rtype"].ToString();
            this.drporgan.Items.Add(l1);

        }
        drporgan.Items.Insert(0, new ListItem("--select--"));
        dr.Close();
        db.Connection.Close();
    }


    void loaddata1()
    {
        db.Connection.Open();
        string q = "select DISTINCT rtype, count(rtype)*1.0/(select DISTINCT count(ID) from donations where country='"+drpcntry.SelectedItem.Text+"') [organs],count(rtype) [noorgan] from donations where country='"+drpcntry.SelectedItem.Text+"' GROUP BY rtype";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        this.Chart1.DataSource = dt;
        this.Chart1.Series[0].XValueMember = "rtype";
        this.Chart1.Series[0].YValueMembers = "organs";




        //string[] x = new string[dt.Rows.Count];
        //int[] y = new int[dt.Rows.Count];

        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    x[i] = dt.Rows[i][0].ToString();
        //    y[i] = Convert.ToInt32(dt.Rows[i][1]);
        //}
        //Chart1.Series[0].Points.DataBindXY(x, y);
        //Chart1.Series[0].Label = "#PERCENT{P2}";
        Chart1.Series[0].ChartType = SeriesChartType.Pie;

        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.Legends[0].Enabled = true;
        

        db.Connection.Close();

        GridView1.DataSource = dt;
        GridView1.DataBind();

        msglbl.Text = "Organ Donated By Country : - "+drpcntry.SelectedItem.Text+"";
    }


    void loaddata2()
    {
        idd = drpstate.SelectedItem.Text;

        db.Connection.Open();
        string q = "select DISTINCT rtype, count(rtype)*1.0/(select DISTINCT count(Id) from donations where state='"+idd+"') [organs],count(rtype) [noorgan] from donations where state='" + drpstate.SelectedItem.Text + "' GROUP BY rtype";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        this.Chart1.DataSource = dt;
        this.Chart1.Series[0].XValueMember = "rtype";
        this.Chart1.Series[0].YValueMembers = "organs";




        //string[] x = new string[dt.Rows.Count];
        //int[] y = new int[dt.Rows.Count];

        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    x[i] = dt.Rows[i][0].ToString();
        //    y[i] = Convert.ToInt32(dt.Rows[i][1]);
        //}
        //Chart1.Series[0].Points.DataBindXY(x, y);


        Chart1.Series[0].ChartType = SeriesChartType.Pie;

        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.Legends[0].Enabled = true;

        db.Connection.Close();

        GridView1.DataSource = dt;
        GridView1.DataBind();

        db.Connection.Close();

        GridView1.DataSource = dt;
        GridView1.DataBind();

        msglbl.Text = "Organ Donated By State : - " + idd + "";
    }

    void loaddata3()
    {
        idd = drpcity.SelectedItem.Text;

        db.Connection.Open();
        string q = "select DISTINCT rtype, count(rtype)*1.0/(select Distinct count(Id) from donations where city='"+idd+"') [organs],count(rtype) [noorgan] from donations where city='" + idd + "' GROUP BY rtype";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        this.Chart1.DataSource = dt;
        this.Chart1.Series[0].XValueMember = "rtype";
        this.Chart1.Series[0].YValueMembers = "organs";




        //string[] x = new string[dt.Rows.Count];
        //int[] y = new int[dt.Rows.Count];

        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    x[i] = dt.Rows[i][0].ToString();
        //    y[i] = Convert.ToInt32(dt.Rows[i][1]);
        //}
        //Chart1.Series[0].Points.DataBindXY(x, y);

        Chart1.Series[0].ChartType = SeriesChartType.Pie;


        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.Legends[0].Enabled = true;

        db.Connection.Close();

        GridView1.DataSource = dt;
        GridView1.DataBind();

        msglbl.Text = "Organ Donated By city : - " + idd + "";
    }


    void loaddata4()
    {
        db.Connection.Open();
        string q = "select DISTINCT rorgan, count(rorgan)*1.0/(select DISTINCT count(ID) from requests where country='" + drpcntry2.SelectedItem.Text + "') [reqorg],count(rorgan) [reqnoorg] from requests where country='" + drpcntry2.SelectedItem.Text + "' GROUP BY rorgan";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        this.Chart2.DataSource = dt;
        this.Chart2.Series[0].XValueMember = "rorgan";
        this.Chart2.Series[0].YValueMembers = "reqorg";




        //string[] x = new string[dt.Rows.Count];
        //int[] y = new int[dt.Rows.Count];

        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    x[i] = dt.Rows[i][0].ToString();
        //    y[i] = Convert.ToInt32(dt.Rows[i][1]);
        //}
        //Chart1.Series[0].Points.DataBindXY(x, y);
        //Chart1.Series[0].Label = "#PERCENT{P2}";


        Chart2.Series[0].ChartType = SeriesChartType.Pie;

        Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart2.Legends[0].Enabled = true;


        db.Connection.Close();

        GridView2.DataSource = dt;
        GridView2.DataBind();

        msglbl2.Text = "Organ Requested By Country : - " + drpcntry2.SelectedItem.Text + "";
    }


    void loaddata5()
    {
        idd = drpstate2.SelectedItem.Text;

        db.Connection.Open();
        string q = "select DISTINCT rorgan, count(rorgan)*1.0/(select DISTINCT count(ID) from requests where state='" + drpstate2.SelectedItem.Text + "') [reqorg],count(rorgan) [reqnoorg] from requests where state='" + drpstate2.SelectedItem.Text + "' GROUP BY rorgan";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        this.Chart2.DataSource = dt;
        this.Chart2.Series[0].XValueMember = "rorgan";
        this.Chart2.Series[0].YValueMembers = "reqorg";




        //string[] x = new string[dt.Rows.Count];
        //int[] y = new int[dt.Rows.Count];

        //for (int i = 0; i < dt.Rows.Count; i++)
        //{
        //    x[i] = dt.Rows[i][0].ToString();
        //    y[i] = Convert.ToInt32(dt.Rows[i][1]);
        //}
        //Chart1.Series[0].Points.DataBindXY(x, y);
        //Chart1.Series[0].Label = "#PERCENT{P2}";


        Chart2.Series[0].ChartType = SeriesChartType.Pie;

        Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart2.Legends[0].Enabled = true;


        db.Connection.Close();

        GridView2.DataSource = dt;
        GridView2.DataBind();

        msglbl2.Text = "Organ Requested By State : - " + drpstate2.SelectedItem.Text + "";
    }

    void loaddata6()
    {
        idd = drpcity2.SelectedItem.Text;

        db.Connection.Open();
        string q = "select DISTINCT rorgan, count(rorgan)*1.0/(select DISTINCT count(ID) from requests where city='" + drpcity2.SelectedItem.Text + "') [reqorg],count(rorgan) [reqnoorg] from requests where city='" + drpcity2.SelectedItem.Text + "' GROUP BY rorgan";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        this.Chart2.DataSource = dt;
        this.Chart2.Series[0].XValueMember = "rorgan";
        this.Chart2.Series[0].YValueMembers = "reqorg";

        Chart2.Series[0].ChartType = SeriesChartType.Pie;

        Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart2.Legends[0].Enabled = true;


        db.Connection.Close();

        GridView2.DataSource = dt;
        GridView2.DataBind();

        msglbl2.Text = "Organ Requested By State : - " + drpcity2.SelectedItem.Text + "";
    }

    void loaddata7()
    {
        string q = "select DISTINCT country,count(country) [ccount] from donations where rtype='"+drporgan.SelectedItem.Text+"' GROUP BY country";
        SqlCommand cmd = new SqlCommand(q,db.Connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        
        this.Chart3.DataSource = dt;
        this.Chart3.Series[0].XValueMember = "country";
        this.Chart3.Series[0].YValueMembers = "ccount";

        GridView3.DataSource = dt;
        GridView3.DataBind();

        msg_lbl3.Text = " "+ drporgan.SelectedItem.Text + " Donated From Countries";


    }

    protected void drpcntry_SelectedIndexChanged1(object sender, EventArgs e)
    {
        loaddata1();
        c2();
    }

    protected void drpstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        loaddata2();
        c3();
    }

    protected void drpcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        loaddata3();
    }

    protected void drpcntry2_SelectedIndexChanged(object sender, EventArgs e)
    {
        c5();
        loaddata4();
    }

    protected void drpstate2_SelectedIndexChanged(object sender, EventArgs e)
    {
        c6();
        loaddata5();
    }

    protected void drpcity2_SelectedIndexChanged(object sender, EventArgs e)
    {
        loaddata6();
    }



    protected void drporgan_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        loaddata7();
    }
}