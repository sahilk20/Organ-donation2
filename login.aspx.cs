using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    helper db = new helper();

    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    void signin()
    {
        if (email_tb.Text == "admin" && password_tb.Text == "admin")
        {
            Response.Redirect("~/admin/home.aspx");
        }
        else
        {
            username = email_tb.Text.Trim();
            string q = "select COUNT(email) from registration where email='" + email_tb.Text + "' AND password='" + password_tb.Text + "'";

            int res = db.get_scalar(q);
            if (res > 0)
            {
                Session["user"] = username;
                Response.Redirect("~/user/home.aspx");

            }
            else
            {
                //message box

                string message = "Login failed ";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                ////message box
            }
        }
    }
    protected void loginbtn_Click(object sender, EventArgs e)
    {
        signin();
    }
}