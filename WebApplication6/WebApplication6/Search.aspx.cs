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
    public partial class WebForm3 : System.Web.UI.Page
    {
        public static SqlConnection ocon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;initial catalog=V1arti;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                RP();
                
            }
            //ocon.Open();
            //SqlCommand cmd = new SqlCommand("select * from Artisan", ocon);
            //SqlDataAdapter oda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //oda.Fill(dt);
            //ListView1.DataSource = dt;
            //ListView1.DataBind();
            //ocon.Close();


            if(Session["ID_Client"] == null && Session["ID_CLIENT_Home"] == null)
            {
                Session["pascnct"] = 1;
                Response.Redirect("Home.aspx");
                
            }

            if (Session["ID_Client"] == null)
            {
                Label9.Text = Session["ID_CLIENT_Home"].ToString();
            }
            else
            {
                Label9.Text = Session["ID_Client"].ToString();
            }
            LinkButton1.Text = Label9.Text;
        }
       
       
        public void RP()
        {
            ocon.Close();

            ocon.Open();
            SqlCommand cmd = new SqlCommand("select * from Artisan", ocon);
            SqlDataAdapter oda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            oda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            SqlCommand cmd1 = new SqlCommand("SELECT count(ID_ARTISAN) from Artisan ", ocon);
            int i = Convert.ToInt32(cmd1.ExecuteScalar());

            Label6.Text = i.ToString();
            ocon.Close();
        }

        public string GetImage(object img)
        {
            return "data:image/jpg;base64," + Convert.ToBase64String((byte[])img);
        }


        protected void Button4_Click(object sender, EventArgs e)
        {

            //string st = ListView1.SelectedItemTemplate[ListView1.SelectedIndex].
            //foreach (ListViewDataItem item in ListView1.Items)
            //{
            //    if(item)
            //    lar = (Label)item.FindControl("Label7");

            //}
            //Label9 = (Label)ListView1.FindControl("Label7");
            //Session["ID"] = (Label) ListView1.Items.
            //Response.Redirect("WebForm2.aspx");
            //ListViewItem listView1 = (Label)
            //Label9.Text = ListView1[Li]
            Button btn = sender as Button;
            ListViewItem item = (ListViewItem)(sender as Control).NamingContainer;
            Label lb = (Label)item.FindControl("Label10");
            string lbs = lb.Text;
            ocon.Open();
            SqlCommand cmd = new SqlCommand("update Artisan set click = click+1 where ID_ARTISAN='" + Convert.ToInt32(lbs) + "';", ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            Session["IDpArt"] = lbs;
            Session["idcli"] = Label9.Text;
            Response.Redirect("WebForm2.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            ocon.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from Artisan where VILLE_ARTISAN = '"+TextBox1.Text+"' AND PROFESSION_ARTISAN = '"+DropDownList1.Text+"' ", ocon);
            SqlDataAdapter oda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            oda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            SqlCommand cmd1 = new SqlCommand("SELECT count(ID_ARTISAN) from Artisan where VILLE_ARTISAN = '" + TextBox1.Text + "' AND PROFESSION_ARTISAN = '" + DropDownList1.Text + "' ", ocon);
            int i  = Convert.ToInt32(cmd1.ExecuteScalar());

            Label6.Text = i.ToString();
            ocon.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            ocon.Open();



            SqlCommand c1 = new SqlCommand("SELECT * from Artisan where PRIXPARJOUR<'" + Convert.ToInt32(TextBox3.Text) + "' and ANNEE_EXP < '" + Convert.ToInt32(TextBox2.Text) + "'", ocon);
            SqlDataAdapter oda = new SqlDataAdapter(c1);
            DataTable dt = new DataTable();
            oda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();


            Label6.Text = dt.Rows.Count.ToString();
            ocon.Close();
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
           
        }

        protected void ListView1_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
        {
           
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientProf.aspx?id=" + LinkButton1.Text );
        }
    }
}