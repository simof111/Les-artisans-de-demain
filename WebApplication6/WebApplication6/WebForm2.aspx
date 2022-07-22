<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication6.WebForm2" %>

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
        <link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">

    <title></title>
</head>
<body style="background-color: #52ACFF;
background-image: linear-gradient(180deg, #52ACFF 25%, #FFE32C 100%);
">
    <form id="form1" runat="server">
        <div>
            
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-bottom: 1px solid #14A800 ;">
        <a class="navbar-brand" href="#">Les artisans de demain</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            
            <li class="nav-item">
              <a class="nav-link" href="#"></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Search.aspx" style="font-size:15px; width:150px;"> Retour a l'Acceuil</a>
              </li>
          </ul>
         
            
        </div>
      </nav>
            <div style="border: 1px solid gray; margin: 50px; ">
                 <table class="w-100">
        <tr style="border-bottom:1px solid gray;">
            <td  colpan="2" style=" width:300px;">
                <asp:Image ID="Image1" runat="server"    style="margin:40px; border-radius: 50%; height: 200px;"/></td>
            <td > <h3>





            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp;<asp:Label ID="Label3" runat="server" ></asp:Label></h3>
                <h2> <asp:Label ID="Label2" runat="server"></asp:Label>&nbsp;,<asp:Label ID="Label6" runat="server"></asp:Label>&#128205;</h2>
                <h3> <asp:Label ID="Label4" runat="server" ></asp:Label> &nbsp; DH / Jour</h3>
                <h3>  &nbsp;Annee d expeirience :  <asp:Label ID="Label5" runat="server" ></asp:Label> &#11088;</h3>
            </td>
        </tr>
        <tr>
            <style>
                .dd:hover{
                    background-color:#14A800;
                    color:white;    
                }
            </style>
            <td style="width:300px;border-right:1px solid gray; ">
               <div class="dd" style="border: 1px solid gray; "> <h2>Profile</h2> </div> 
               <div class="dd"  style="border: 1px solid gray;"> <h2> Demander un Devis</h2></div>
              <div class="dd"  style="border: 1px solid gray;">  <h2> Payer le Devis</h2></div> 

            </td>
            <td style="border:1px solid gray;"><h2 style="margin:20px;"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h2>
                <p style="margin:20px;">
                <span style="margin:20px;"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></span>
                </p>
            </td>
        </tr>
        <tr>
            <td class="dd" style="border:1px solid gray;"><div >
                <h1 style="margin:90px; ">99 DH</h1>
                <h3> Tout les devis sont a </h3>
                </div>
             </td>
            <td>
            
                <div style="margin:20px;">
                <div class="row">
  <div class="col">
    <!-- Name input -->
    <div class="form-outline">
        <asp:TextBox ID="TextBox1" runat="server"  class="form-control" placeholder="Name"  ></asp:TextBox>
 
    </div>
  </div>
  <div class="col">
    <!-- Email input -->
    <div class="form-outline">
        <asp:TextBox ID="TextBox2" runat="server" class="form-control"  placeholder="Email address"  ></asp:TextBox>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate><br />
                <asp:Button ID="Button3" runat="server" class="btn btn-outline-success" style="position:relative;right:150px;width:250px;" Text="Demander Un Devis" OnClick="Button3_Click" />
               
            </ContentTemplate>
        </asp:UpdatePanel> 
        <br />
        

    </div>
  </div>
</div>

<hr />

                    <asp:Panel ID="Panel1" runat="server" style="opacity:0;">
<div id="devis" style="display:;" >
<div class="row">
  <div class="col">
    <!-- Name input -->
    <div class="form-outline">
        <asp:TextBox ID="TextBox3" runat="server" class="form-control"  placeholder="Nom Projet"></asp:TextBox>
    </div>
  </div>
  <div class="col">
    <!-- Name input -->
    <div class="form-outline">
        <asp:TextBox ID="TextBox4" runat="server"  class="form-control" placeholder="Budget"></asp:TextBox>
    </div>
  </div>
  <br /><br />
   
    
</div><br />
          <div>
              <asp:TextBox ID="TextBox5" runat="server" class="form-control"  placeholder="Give me more details about your project" style="height:100px; width:90%;"></asp:TextBox>
               <label class="form-label" for="form8Example4">Message</label>
    </div>     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
         <ContentTemplate>
                                 <asp:Button ID="Button1" runat="server" Text="Send it" class="btn btn-outline-success" style="float:right;width:150px;" OnClick="Button1_Click"/>

         </ContentTemplate>

               </asp:UpdatePanel>
                   
     </div> </asp:Panel>
           </div>    
            </td>
        </tr>
       
        <tr>
            <td class="dd" style="border:1px solid gray;">&nbsp;</td>
            <td>
            
                &nbsp;</td>
        </tr>
       
    </table>
            </d>
           
    </form>
</div>





        </div>
    </form>
    </div>
  
</body>
    <script>
        Button3.onclick = function () {
            Panel1.style.opacity  = 1;
        }
    </script>
    <style>
       


    </style>
</html>
