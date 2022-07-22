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
    public partial class WebForm2 : System.Web.UI.Page
    {
        public static SqlConnection ocon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;initial catalog=V1arti;Integrated Security=True");

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView g = new GridView();
            if (Session["IDpArt"] == null)
            {
                Session["pascnct"] = 1;
                Response.Redirect("Home.aspx");
            }
            Label1.Text =  Session["IDpArt"].ToString();
            ocon.Open();
            SqlCommand cmd = new SqlCommand("select * from Profile_artisan inner join Artisan on Profile_artisan.FK_ID_Artan=Artisan.ID_ARTISAN where ID_ARTISAN='" + Convert.ToInt32(Label1.Text)+"'", ocon);
            SqlDataReader oda = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(oda);
            g.DataSource = dt;
            g.DataBind();
            oda.Close();
            SqlCommand cmd1 = new SqlCommand("select ID_ARTISAN, img from Artisan where ID_ARTISAN='" +Convert.ToInt32(Label1.Text) + "'", ocon);
            SqlDataReader oda1 = cmd1.ExecuteReader();
            oda1.Read();
            byte[] imagem = (byte[])(oda1[1]);
            string base64String = Convert.ToBase64String(imagem);
            Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String);
            oda1.Close();
            
            Label3.Text = g.Rows[0].Cells[6].Text;
            Label2.Text = g.Rows[0].Cells[11].Text;
            Label6.Text = g.Rows[0].Cells[9].Text;
            Label4.Text = g.Rows[0].Cells[12].Text;
            Label5.Text = g.Rows[0].Cells[13].Text;
            Label7.Text = g.Rows[0].Cells[2].Text;
            Label8.Text = g.Rows[0].Cells[3].Text;
            SqlCommand cmd2 = new SqlCommand("select NOM_CLIENT,EMAIL_CLIENT from Client where ID_CLIENT='" + Convert.ToInt32(Session["idcli"].ToString()) + "'", ocon);
            SqlDataReader oda2 = cmd2.ExecuteReader();
            oda2.Read();
            TextBox1.Text = oda2[0].ToString();
            TextBox2.Text = oda2[1].ToString();
            ocon.Close();
        }
        int DevisID;
        protected void Button3_Click(object sender, EventArgs e)
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("insert into Devis values('" + Convert.ToInt32(Session["idcli"].ToString()) + "','" + Convert.ToInt32(Label1.Text) + "','"+ DateTime.Now.ToString("MM/dd/yyyy") + "')", ocon);
            cmd.ExecuteNonQuery();
           
            ocon.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ocon.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT TOP 1 ID_Devis FROM Devis ORDER BY ID_Devis DESC", ocon);
            DevisID = (int)cmd1.ExecuteScalar();
            SqlCommand cmd = new SqlCommand("insert into Detail_Devis values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DevisID + "') ", ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            Session["IdDevis"] = DevisID;
            Response.Redirect("Payement.aspx");
        }
    }
}