using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                string username = UserName.Text;
                if (username != "")
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                    con.Open();
                    string qry = "select * from User_Details where username='" + username +"'";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        sdr.Read();
                        Session["username"] = username;
                        Response.Redirect("ResetPassword.aspx");
                    }

                    else
                    {
                        Forgot_Error.Text = username + " This UserName/Email is not register.";
                    }
                    con.Close();

                } else
                {
                    Forgot_Error.Text = "Please enter valid UserName/Email";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}