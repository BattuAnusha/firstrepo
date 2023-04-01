using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            if (username == "" || username == null)
            {
                Reset_Error.Text = "No User found";
                Response.Redirect("Login.aspx");
                return;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string newPassword = NewPassword.Text;
                string confirmPassword = ConfirmPassword.Text;
                string username = Session["username"].ToString();
                if (newPassword == confirmPassword)
                { 
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                    con.Open();
                    string qry = "UPDATE User_Details SET Password='" + newPassword + "' where username='"+ username + "'";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    Response.Redirect("Login.aspx");
                    //if (sdr.HasRows)
                    //{
                    //    sdr.Read();
                    //}
                    //else
                    //{
                    //    Reset_Error.Text = "Password not updated. Please try again...!";
                    //}
                    con.Close();
                }
                else
                {
                    Reset_Error.Text = "Password doesn't match!";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}