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
    public partial class ClientProf : System.Web.UI.Page
    {
        public static SqlConnection ocon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;initial catalog=V1arti;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                remplirgrid();
                profile();
            }
        }

        public void remplirgrid()
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("select * from Devis  inner join Detail_Devis on Devis.ID_Devis=Detail_Devis.FK_ID_Devis where Client_id='" + Request.QueryString["id"].ToString() + "'", ocon);
            SqlDataReader oda = cmd.ExecuteReader();
            oda.Read();
            GridView1.DataSource = oda;
            GridView1.DataBind();
            oda.Close();
            ocon.Close();
        }
        void profile()
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("select * from Client where ID_CLIENT='" + Request.QueryString["id"].ToString() + "'", ocon);
            SqlDataReader oda = cmd.ExecuteReader();
            oda.Read();
            TextBox1.Text = oda[1].ToString();
            TextBox2.Text = oda[4].ToString();
            TextBox3.Text = oda[2].ToString();
            TextBox4.Text = oda[3].ToString();
            TextBox5.Text = oda[5].ToString();
            oda.Close();
            ocon.Close();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("update Client set NOM_CLIENT ='" + TextBox1.Text + "' , EMAIL_CLIENT ='" + TextBox3.Text + "' , MRP_CLIENT='" + TextBox4.Text + "' , TELEPHONE_CLIENT ='" + TextBox2.Text + "', ADRESSE_CLIENT ='" + TextBox5.Text + "' WHERE ID_CLIENT = '" + Request.QueryString["id"].ToString() + "' ; ", ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("deletecli", ocon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id_client",SqlDbType.Int).Value=Convert.ToInt32(Request.QueryString["id"].ToString());
            cmd.ExecuteScalar();
            ocon.Close();
        }
    }
}