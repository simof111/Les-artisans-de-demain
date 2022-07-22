<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connect.aspx.cs" Inherits="WebApplication6.Connect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title></title>
     <style type="text/css">
         .auto-style1 {
             left: 2px;
             top: 79px;
         }
         .auto-style2 {
             left: 85px;
             top: 72px;
         }
     </style>
</head>
<body>
    <header>
          <nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-bottom: 1px solid #14A800 ;">
        <a class="navbar-brand" href="#">Les artisans de demain</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">

              <a class="nav-link" href="#">Acceuil </a>
            </li>
            <li class="nav-item">

              <a class="nav-link" href="#" onclick="client()">Vous etes un client</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#" onclick="artisan()">Vous etes un artisan</a>
              </li>
          </ul>
         
        </div>
      </nav>

    </header> 
    <form id="form1" runat="server">

        


        <div style ="background-color: #85FFBD;background-image: linear-gradient(45deg, #85FFBD 0%, #FFFB7D 100%);">
            <table style="width:100%; height:100%; margin: ;">
                <tr>
                    <td>
                        <h2 style="margin-left:75px;"> CLient</h2>
                    </td>
                    <td>
                         <h2  style="margin-left:75px;"> Artisan<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                         </h2>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%; "><div id="divclient" style="width:200px; display:none; position:relative; top:-330px; "  >
                        <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"  class="form-control" placeholder="Nom complet client" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox2" runat="server"  class="form-control" placeholder="Email client" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox3" runat="server"  class="form-control" placeholder="Mot de passe client" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox4" runat="server"  class="form-control" placeholder="Adresse client" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox5" runat="server"  class="form-control" placeholder="Telephone client" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:Button ID="Button1"  runat="server" Text="S'inscrire" class="btn btn-success" style="margin-left:150px" OnClick="Button1_Click"/>

                        </div>

                    </td>
                     <td style="width:50%;">
                          <div id="divartisan" style="margin:50px; width:200px;display:; ">
                        <asp:TextBox ID="TextBox6" runat="server"  class="form-control" placeholder="Nom complet artisan" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox7" runat="server"  class="form-control" placeholder="Email artisan" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox8" runat="server"  class="form-control" placeholder="Mot de passe artisan" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox9" runat="server"  class="form-control" placeholder="Ville artisan" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox10" runat="server"  class="form-control" placeholder="Telephone artisan" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox11" runat="server"  class="form-control" placeholder="Profession artisan" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox12" runat="server"  class="form-control" placeholder="Prix par jour artisan" style="width:250px;margin-left:40px;"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox13" runat="server"  class="form-control" placeholder="Nombre d annee d experience artisan" style="width:250px;margin-left:40px;"></asp:TextBox>
                              <br />
                              <asp:FileUpload class="form-control" ID="FileUpload2" runat="server" style="margin-left:40px; width:250px;" /> <br />
                        
                              <asp:Button ID="Button2" runat="server" Text="S'inscrire" class="btn btn-success" style="margin-left:150px" OnClick="Button2_Click"/> <br /><br />
                           
                              <h2  style="margin-left:75px;">  Profile</h2>
                              <br />
                             <asp:TextBox ID="TextBox16" runat="server"  class="form-control" placeholder="Titre" style="margin-left:50px;width:250px;"></asp:TextBox> <br />
                             <asp:TextBox ID="TextBox17" runat="server"   class="form-control" placeholder="Details" style="height:200px; width:250px;margin-left:50px;"></asp:TextBox> <br />
                      
                               <asp:Button ID="Button4" runat="server" Text="Creer un profile" class="btn btn-success" style="margin-left:150px;margin-left:150px;" OnClick="Button4_Click"/>
                            
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%; ">&nbsp;</td>
                     <td style="width:50%;">
                          &nbsp;</td>
                </tr>
            </table>

            














        </div>
    </form>
</body>
    <script>
        function artisan() {
            divartisan.style.display = "block";
        }
        function client() {
            divclient.style.display = "block";
        }
    </script>
</html>
