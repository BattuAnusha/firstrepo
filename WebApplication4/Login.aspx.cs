using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Reflection.Emit;
using System.Data.SqlClient;
using Microsoft.Ajax.Utilities;

namespace WebApplication4
{
    public partial class Login : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            //string loggedUsername = Session["UserName"] as string;
            string StrUname = null;
            Session["Uname"] = StrUname;
            Session["username"] = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = TextBox1.Text;
                string pass = T.Text;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
                con.Open();
                string qry = "select * from User_Details where username='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                

                if (sdr.HasRows)
                {

                    sdr.Read();
                    if (sdr["Page"].ToString() == "1")
                    {
                        Session["Uname"] = sdr["FirstName"].ToString();
                        Response.Redirect("Records.aspx");
                    }
                    else
                    {
                        Response.Redirect("Email.aspx");

                    }

                }

                else
                {
                    Label4.Text = "UserId & Password Is not correct Try again..!!";
                    Response.Redirect("Login.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        public string PublicData
        {
            get
            {
                return TextBox1.Text;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            RegularExpressionValidator2.Visible = true;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
