using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class LogIn : System.Web.UI.Page
    {
        
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}