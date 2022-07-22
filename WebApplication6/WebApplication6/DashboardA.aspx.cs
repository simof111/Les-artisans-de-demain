using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication6
{
    public partial class DashboardA : System.Web.UI.Page
    {
        public static SqlConnection ocon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;initial catalog=V1arti;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["IDA"] == null && Session["ID_Artisan_Home"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            if (Session["IDA"] != null)
            {
                Label1.Text = Session["IDA"].ToString();
            }
            else
            {
                Label1.Text = Session["ID_Artisan_Home"].ToString();

            }
           
            
                Series series = Chart1.Series["Series1"];
                ocon.Open();
                SqlCommand cmd = new SqlCommand("SELECT  DateDevis ,COUNT(*) as NombreDevis FROM Devis where Artisan_Id = '" + Convert.ToInt32(Label1.Text) + "' group by DateDevis", ocon);
                SqlDataReader oda = cmd.ExecuteReader();
                while (oda.Read())
                {
                    series.Points.AddXY(oda[0].ToString(), oda[1].ToString());
                }
                oda.Close();
                Series series1 = Chart2.Series["Series2"];
                SqlCommand cmd1 = new SqlCommand("select DateDevis, SUM(MTTC) from Devis  inner join Payement on Devis.ID_Devis=Payement.FK_Id_devis where Artisan_Id= '" + Convert.ToInt32(Label1.Text) + "'  group by DateDevis", ocon);
                SqlDataReader oda1 = cmd1.ExecuteReader();
                while (oda1.Read())
                {
                    series1.Points.AddXY(oda1[0].ToString(), oda1[1].ToString());
                }
                oda1.Close();
                SqlCommand cmd2 = new SqlCommand("select * from Devis inner join Detail_Devis on Devis.ID_Devis=Detail_Devis.FK_ID_Devis where Artisan_Id= '" + Convert.ToInt32(Label1.Text) + "'  ", ocon);
                SqlDataReader oda2 = cmd2.ExecuteReader();
                GridView1.DataSource = oda2;
                GridView1.DataBind();
                oda2.Close();
                SqlCommand cmd3 = new SqlCommand("select * from Artisan where ID_ARTISAN= '" + Convert.ToInt32(Label1.Text) + "' ", ocon);
                SqlDataReader oda3 = cmd3.ExecuteReader();
                oda3.Read();
                TextBox1.Text = oda3[1].ToString();
                TextBox2.Text = oda3[5].ToString();
                TextBox3.Text = oda3[2].ToString();
                TextBox4.Text = oda3[3].ToString();
                TextBox5.Text = oda3[6].ToString();
                TextBox6.Text = oda3[4].ToString();
                TextBox7.Text = oda3[7].ToString();
               // TextBox8.Text = oda3[2].ToString();
                TextBox9.Text = oda3[8].ToString();
                TextBox10.Text = oda3[9].ToString();
                Label2.Text = oda3[11].ToString();
            oda3.Close();
            SqlCommand cmd4 = new SqlCommand("select count(*) from Devis where Artisan_Id ='" + Convert.ToInt32(Label1.Text) + "'", ocon);
            int i = (int)cmd4.ExecuteScalar();
            Label3.Text = i.ToString();
            Label4.Text = (i * 99).ToString();
            


            ocon.Close();
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                HttpPostedFile postedfile = FileUpload1.PostedFile;
                string filename = Path.GetFileName(postedfile.FileName);
                string fileExt = Path.GetExtension(filename);
                Stream stream = postedfile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
            ocon.Open();
            SqlCommand cmd = new SqlCommand("sss", ocon);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@idart", SqlDbType.Int).Value = Convert.ToInt32(Label1.Text);
            cmd.Parameters.Add("@Nom", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = TextBox3.Text;
            cmd.Parameters.Add("@MDP", SqlDbType.VarChar).Value = TextBox4.Text;
            cmd.Parameters.Add("@Ville", SqlDbType.VarChar).Value = TextBox6.Text;
            cmd.Parameters.Add("@Tele", SqlDbType.VarChar).Value = TextBox2.Text;
            cmd.Parameters.Add("@Profes", SqlDbType.VarChar).Value = TextBox5.Text;
            cmd.Parameters.Add("@PPJ", SqlDbType.Int).Value = Convert.ToInt32(TextBox7.Text);
            cmd.Parameters.Add("@Exp", SqlDbType.Int).Value = Convert.ToInt32(TextBox9.Text);
            cmd.Parameters.Add("@Note", SqlDbType.Int).Value = Convert.ToInt32(TextBox10.Text);
            cmd.Parameters.Add("@img", SqlDbType.VarBinary).Value = bytes;
            cmd.ExecuteScalar();
            //cmd.ExecuteNonQuery();
            //SqlCommand cmd = new SqlCommand("update Artisan set NOM_ARTISAN='" + TextBox1.Text + "', EMAIL_ARTISAN='" + TextBox3.Text + "',MDP_ARTISAN='" + TextBox4.Text + "',VILLE_ARTISAN='" + TextBox6.Text + "',TELEPHONE_ARTISAN='" + TextBox2.Text + "',PROFESSION_ARTISAN='" + TextBox5.Text + "',PRIXPARJOUR='" + Convert.ToInt32(TextBox7.Text) + "', ANNEE_EXP='" + Convert.ToInt32(TextBox9.Text) + "', NOTE='" +Convert.ToInt32(TextBox10.Text)+"', img=@img where ID_ARTISAN='"+ Convert.ToInt32(Label1.Text)+"';", ocon);
            //cmd.Parameters.AddWithValue("@img", bytes);
            //cmd.ExecuteNonQuery();
            ocon.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("deleteArti", ocon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@id_artisan", SqlDbType.Int).Value = Convert.ToInt32(Label1.Text);
            cmd.ExecuteScalar();
            ocon.Close();
        }
    }
}