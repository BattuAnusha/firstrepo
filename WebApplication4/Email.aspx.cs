using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;



namespace WebApplication4
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                var textbox = PreviousPage.FindControl("TextBox1") as TextBox;
                string uid = textbox.Text;
                try
                {
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString()))
                    {
                        using (SqlCommand cmd = new SqlCommand("SELECT * FROM User_Details where UserName='" + uid + "'", con))
                        {
                            cmd.CommandType = CommandType.Text;
                            con.Open();
                            DataTable dt = new DataTable();
                            dt.Load(cmd.ExecuteReader());
                            GridView2.DataSource = dt;
                            GridView2.DataBind();
                            con.Close();
                        }
                    }
                }
                catch (Exception)
                {

                }
            }
        }
    }
}




