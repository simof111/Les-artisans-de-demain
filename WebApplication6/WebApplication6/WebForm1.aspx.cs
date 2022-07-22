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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static SqlConnection ocon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;initial catalog=V1arti;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["pascnct"]==null)
            {

            }
            else
            {
                Response.Write("<script language=javascript>alert('Veuilliez vous connecter.')</script>");

            }
            
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            ocon.Close();
            ocon.Open();
            SqlCommand cmd1 = new SqlCommand("select ID_CLIENT,EMAIL_CLIENT, MRP_CLIENT from Client where EMAIL_CLIENT='" + TextBox1.Text + "' and MRP_CLIENT='" + TextBox2.Text + "'", ocon);
            SqlDataReader oda1 = cmd1.ExecuteReader();
           

            if (oda1.Read())
            {
                Session["ID_CLIENT_Home"] = oda1[0].ToString();
                Response.Redirect("Search.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Email ou Mot de passe incorrecte.')</script>");
            }
            oda1.Close();
            SqlCommand cmd = new SqlCommand("select ID_ARTISAN,EMAIL_ARTISAN, MDP_ARTISAN,Statu from Artisan where EMAIL_ARTISAN='" + TextBox1.Text + "' and MDP_ARTISAN='" + TextBox2.Text + "'", ocon);
            SqlDataReader oda = cmd.ExecuteReader();
            if (oda.Read() )
            {

                switch (Convert.ToInt32(oda[3].ToString()))
                {
                    case 1:
                        Session["ID_Artisan_Home"] = oda[0].ToString();
                        Response.Redirect("DashboardA.aspx");
                        break;
                    case 0:
                        Response.Write("<script language=javascript>alert('Votre compte et en attente de confirmation par notre equipe.')</script>");
                        break;
                    case -1:
                        Response.Write("<script language=javascript>alert('Notre equipe n a decliner votre demande .')</script>");
                        break;
                    default:
                        // code block
                        break;
                }
                

            }
            else
            {
                Response.Write("<script language=javascript>alert('Email ou Mot de passe incorrecte.')</script>");
            }
            ocon.Close();




            //SqlCommand cmd = new SqlCommand("select ID_CLIENT, EMAIL_ARTISAN, MDP_ARTISAN from Artisan where EMAIL_ARTISAN='" + TextBox1.Text + "' and MDP_ARTISAN='" + TextBox2.Text + "'", ocon);
            //SqlDataReader oda = cmd.ExecuteReader();
            //if (oda.Read())
            //{
            //    Session["ID_ARTISAN_Home"] = oda[0].ToString();
            //    Response.Redirect("Search.aspx");
            //}


        }
    }
}