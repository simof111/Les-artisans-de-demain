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
    public partial class AdminAnalytics : System.Web.UI.Page
    {
        public static SqlConnection ocon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;initial catalog=V1arti;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                analyse();
                RemplirGrid();
            }
        }
        void analyse()
        {
            ocon.Open();
            SqlCommand cmd1 = new SqlCommand("select count(*) from Artisan where Statu=1", ocon);
            Label3.Text = Convert.ToString(cmd1.ExecuteScalar());
            SqlCommand cmd2 = new SqlCommand("select count(*) from Client ", ocon);
            Label2.Text = Convert.ToString(cmd2.ExecuteScalar());
            SqlCommand cmd3 = new SqlCommand("select sum(MTTC) from payement", ocon);
            Label4.Text = Convert.ToString(cmd3.ExecuteScalar());
            SqlCommand cmd4 = new SqlCommand("select count(*) from Devis", ocon);
            Label1.Text = Convert.ToString(cmd4.ExecuteScalar());
            ocon.Close();
        }
        void RemplirGrid()
        {
            //ocon.Open();
            //SqlCommand cmd = new SqlCommand("select * from Artisan where Statu=1", ocon);
            //SqlDataReader oda = cmd.ExecuteReader();
            //oda.Read();
            //GridView1.DataSource = oda;
            //GridView1.DataBind();
            //oda.Close();
            
            //ocon.Close();
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView4_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
            ocon.Open();
            
            SqlCommand cmd = new SqlCommand("select * from Artisan inner join Profile_artisan on Artisan.ID_ARTISAN=Profile_artisan.FK_ID_Artan where ID_ARTISAN = '" + Convert.ToInt32(GridView4.Rows[e.NewSelectedIndex].Cells[1].Text) + "'", ocon);
            SqlDataReader oda = cmd.ExecuteReader();
            oda.Read();
            Label13.Text = oda[0].ToString();
            Label5.Text = oda[1].ToString();
            Label6.Text = oda[4].ToString();
            Label7.Text = oda[5].ToString();
            Label8.Text = oda[6].ToString();
            Label9.Text = oda[7].ToString();
            Label10.Text = oda[10].ToString();
            Label11.Text = oda[14].ToString();
            Label12.Text = oda[15].ToString();
            byte[] imagem = (byte[])(oda[10]);
            string base64String = Convert.ToBase64String(imagem);
            Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String);
            // Response.Write(l);
            ocon.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("update Artisan set Statu=1 where  ID_ARTISAN = '" + Convert.ToInt32(Label13.Text) + "'", ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            Response.Redirect("AdminAnalytics.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("update Artisan set Statu=-1 where  ID_ARTISAN ='" + Convert.ToInt32(Label13.Text) + "'", ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            Response.Redirect("AdminAnalytics.aspx");

        }
    }
}