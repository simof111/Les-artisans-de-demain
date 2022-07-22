using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication6
{
    public partial class Payement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("<script language=javascript>alert('Vous devriew paye.')</script>");


        }
        public static SqlConnection ocon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;initial catalog=V1arti;Integrated Security=True");

        protected void Button1_Click(object sender, EventArgs e)
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("insert into Payement values('" + Session["IdDevis"] + "',99)", ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            Response.Redirect("Home.aspx");
        }
    }
}