using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;

public partial class donorregaspx : System.Web.UI.Page
{
    helper db = new helper();

    protected void Page_Load(object sender, EventArgs e)
    {

    }




    bool reg()
    {
        db.values.Add("first", fname.Text);
        db.values.Add("last", lname.Text);
        db.values.Add("mobile", mob.Text);

        db.values.Add("address", addr.Text);
        db.values.Add("email", email.Text);
        db.values.Add("password", pass.Text);
        db.values.Add("image", "images/loginFace.png");


        if (db.insert("registration", db.values))
        {
            return true;

        }
        else
        {
            return false;
        }
    }



    protected void signupbtn_Click(object sender, EventArgs e)
    {

        if (reg())
        {
            msg_lbl.Text = "Registration Successful";
            fname.Text = "";
            lname.Text = "";
            mob.Text = "";
            addr.Text = "";
            pass.Text = "";
            email.Text = "";


        }
        else
        {
            msg_lbl.Text = "Failed to register";
        }


    }
}