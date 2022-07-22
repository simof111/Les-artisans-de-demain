using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication6
{
    public partial class Connect : System.Web.UI.Page
    {
        public static SqlConnection ocon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;initial catalog=V1arti;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            ocon.Open();
            SqlCommand cmd = new SqlCommand("insert into Client values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", ocon);
            cmd.ExecuteNonQuery();
            
            SqlCommand cmd1 = new SqlCommand("SELECT TOP 1 ID_CLIENT FROM Client ORDER BY ID_CLIENT DESC",ocon);
            
            int t = (int) cmd1.ExecuteScalar();
            Label1.Text = t.ToString();
            ocon.Close();
            Session["ID_Client"]= t.ToString();
            Response.Redirect("Search.aspx");
        }
        public int t;
        protected void Button2_Click(object sender, EventArgs e)
        {
            ocon.Open();

            HttpPostedFile postedfile = FileUpload2.PostedFile;
            string filename = Path.GetFileName(postedfile.FileName);
            string fileExt = Path.GetExtension(filename);
            Stream stream = postedfile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

            SqlCommand cmd = new SqlCommand("insert into Artisan  values ('" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "',5,@byte,0,0)", ocon);
            cmd.Parameters.AddWithValue("@byte", bytes);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("SELECT TOP 1 ID_ARTISAN FROM Artisan ORDER BY ID_ARTISAN DESC", ocon);

             t = (int)cmd1.ExecuteScalar();
            Label2.Text =t.ToString();

            //HttpPostedFile postedfile = FileUpload2.PostedFile;
            //string filename = Path.GetFileName(postedfile.FileName);
            //string fileExt = Path.GetExtension(filename);
            //Stream stream = postedfile.InputStream;
            //BinaryReader binaryReader = new BinaryReader(stream);
            //Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
            //SqlCommand cmd3 = new SqlCommand("insert into Profile_artisan values ('"+TextBox16.Text+"','"+TextBox17.Text+"','"+t+"',@byte)", ocon);
            //cmd3.Parameters.AddWithValue("@byte", bytes);
            ////cmd3.Parameters.AddWithValue("@intro", TextBox16.Text);
            ////cmd3.Parameters.AddWithValue("@detail", TextBox17.Text); 
            ////cmd3.Parameters.AddWithValue("@fkartisan", t);
            //cmd3.ExecuteNonQuery();
            ocon.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

           
            ocon.Open();
            SqlCommand cmd = new SqlCommand("insert into Profile_artisan values ('" + TextBox16.Text + "','" + TextBox17.Text + "','" +Convert.ToInt32(Label2.Text) + "',0)", ocon);
          
            cmd.ExecuteNonQuery();
            ocon.Close();
            Response.Write("<script language=javascript>alert('Veuilliez Attendre la confimation de votre demande .')</script>");

            Response.Redirect("Home.aspx");




            //Session["IDA"] = Label2.Text;
            //Response.Redirect("DashboardA.aspx");
        }
    }
}