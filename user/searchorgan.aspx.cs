using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Database_Helpers;

public partial class user_payment : System.Web.UI.Page
{
    string idd, amt;
    public string org;

    helper db=new helper();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    void loaddata()
    {
        db.Connection.Open();
        string q = "select * from donations where rtype='" + organname.SelectedItem.Text + "' AND status='available'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gv1.DataSource = dt;
        gv1.DataBind();

        db.Connection.Close();

        
    }

    protected void order_Click(object sender, EventArgs e)
    {
        loaddata();
    }
}