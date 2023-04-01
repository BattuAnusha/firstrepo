using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Security.Cryptography;

namespace WebApplication4
{
    public partial class Records : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //var textbox = PreviousPage.FindControl("TextBox1") as TextBox;
            string txt = Session["Uname"].ToString();
            Label2.Text = txt.ToString();

        //    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString()))
        //    {
               

        //        using (SqlCommand cmd = new SqlCommand("SELECT FirstName From User_Details where username='" + txt +"'", con))
        //        {
        //            cmd.CommandType = CommandType.Text;
        //            con.Open();
        //            DataTable dt = new DataTable();
        //            dt.Load(cmd.ExecuteReader());
        //            Label2.Text = dt.ToString();


        //            con.Close();
        //        }
        //    }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //string connectionString = "Data Source = LAPTOP-JV78MTHO\\SQLEXPRESS01; Initial Catalog = Test;Integrated Security = True";
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString()))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT ID,Page,UserName,FirstName,LastName FROM User_Details ORDER BY Page", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        con.Open();
                        DataTable dt = new DataTable();
                        dt.Load(cmd.ExecuteReader());
                        string nm = dt.Rows[0]["UserName"].ToString();
                        Label2.Text = nm;



                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        con.Close();
                    }
                }
            }
            catch (Exception)
            {
                Label1.Text = "Error";
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
