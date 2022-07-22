<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAnalytics.aspx.cs" Inherits="WebApplication6.AdminAnalytics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Serif&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-bottom: 1px solid #14A800 ;">
        <a class="navbar-brand" style="margin-left:36%; font-weight:900;font-size:50px;" href="#">Admin <span Style="color:#64C657;font-family:'Dancing Script';">Dashboard</span></a>
        
           
            <asp:Button ID="Button3" runat="server" Text="X"   style="position:relative;  right: -352px;" class="btn btn-secondary" data-toggle="tooltip" data-placement="bottom" title="Se deconnecter"   />
        
      </nav>

        <div class="container" style="margin-top:30px;">
    <div class="row">
    <div class="col-md-3" >
      <div class="card-counter primary" style="box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;">
        <i class="fa fa-code-fork"></i>
        <span class="count-numbers">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
        <span class="count-name">Client</span>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card-counter danger" style="box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;">
        <i class="fa fa-ticket"></i>
        <span class="count-numbers">
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span>
        <span class="count-name">Artisan</span>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card-counter success" style="box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;">
        <i class="fa fa-database"></i>
        <span class="count-numbers">
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></span>
        <span class="count-name">Earnings</span>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card-counter info" style="box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;">
        <i class="fa fa-users"></i>
        <span class="count-numbers">
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </span>
        <span class="count-name">Devis</span>
      </div>
    </div>
  </div>
</div>
        <H2 Style="color:#64C657;font-family:'Dancing Script';text-align:center;margin:80px 0px;">Artisan</H2>
                <asp:GridView ID="GridView1" runat="server" class="table table-hover table-dark" style="width:80%;margin:120px; box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;" AutoGenerateColumns="False" DataKeyNames="ID_ARTISAN" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="ID_ARTISAN" HeaderText="ID_ARTISAN" InsertVisible="False" ReadOnly="True" SortExpression="ID_ARTISAN" />
                        <asp:BoundField DataField="NOM_ARTISAN" HeaderText="NOM_ARTISAN" SortExpression="NOM_ARTISAN" />
                        <asp:BoundField DataField="EMAIL_ARTISAN" HeaderText="EMAIL_ARTISAN" SortExpression="EMAIL_ARTISAN" />
                        <asp:BoundField DataField="MDP_ARTISAN" HeaderText="MDP_ARTISAN" SortExpression="MDP_ARTISAN" />
                        <asp:BoundField DataField="VILLE_ARTISAN" HeaderText="VILLE_ARTISAN" SortExpression="VILLE_ARTISAN" />
                        <asp:BoundField DataField="TELEPHONE_ARTISAN" HeaderText="TELEPHONE_ARTISAN" SortExpression="TELEPHONE_ARTISAN" />
                        <asp:BoundField DataField="PROFESSION_ARTISAN" HeaderText="PROFESSION_ARTISAN" SortExpression="PROFESSION_ARTISAN" />
                        <asp:BoundField DataField="PRIXPARJOUR" HeaderText="PRIXPARJOUR" SortExpression="PRIXPARJOUR" />
                        <asp:BoundField DataField="ANNEE_EXP" HeaderText="ANNEE_EXP" SortExpression="ANNEE_EXP" />
                        <asp:BoundField DataField="NOTE" HeaderText="NOTE" SortExpression="NOTE" />
                        <asp:BoundField DataField="click" HeaderText="click" SortExpression="click" />
                        <asp:BoundField DataField="Statu" HeaderText="Statu" SortExpression="Statu" />
                    </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:V1artiConnectionString %>" SelectCommand="SELECT * FROM [Artisan] WHERE ([Statu] = @Statu)">
             <SelectParameters>
                 <asp:Parameter DefaultValue="1" Name="Statu" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
    <H2 Style="color:#64C657;font-family:'Dancing Script';text-align:center;margin:80px 0px;">Client</H2>
        <asp:GridView ID="GridView2" runat="server" class="table table-hover table-dark" style="width:80%;margin:120px; box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;" AutoGenerateColumns="False" DataKeyNames="ID_CLIENT" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ID_CLIENT" HeaderText="ID_CLIENT" InsertVisible="False" ReadOnly="True" SortExpression="ID_CLIENT" />
                <asp:BoundField DataField="NOM_CLIENT" HeaderText="NOM_CLIENT" SortExpression="NOM_CLIENT" />
                <asp:BoundField DataField="EMAIL_CLIENT" HeaderText="EMAIL_CLIENT" SortExpression="EMAIL_CLIENT" />
                <asp:BoundField DataField="MRP_CLIENT" HeaderText="MRP_CLIENT" SortExpression="MRP_CLIENT" />
                <asp:BoundField DataField="TELEPHONE_CLIENT" HeaderText="TELEPHONE_CLIENT" SortExpression="TELEPHONE_CLIENT" />
                <asp:BoundField DataField="ADRESSE_CLIENT" HeaderText="ADRESSE_CLIENT" SortExpression="ADRESSE_CLIENT" />
            </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:V1artiConnectionString %>" SelectCommand="SELECT * FROM [Client]"></asp:SqlDataSource>
       <H2 Style="color:#64C657;font-family:'Dancing Script';text-align:center;margin:80px 0px;">Devis</H2>
        <asp:GridView ID="GridView3" runat="server" class="table table-hover table-dark" style="width:80%;margin:120px; box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;" AutoGenerateColumns="False" DataKeyNames="ID_Devis,ID_Detail" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="ID_Devis" HeaderText="ID_Devis" InsertVisible="False" ReadOnly="True" SortExpression="ID_Devis" />
                <asp:BoundField DataField="Client_id" HeaderText="Client_id" SortExpression="Client_id" />
                <asp:BoundField DataField="Artisan_Id" HeaderText="Artisan_Id" SortExpression="Artisan_Id" />
                <asp:BoundField DataField="DateDevis" HeaderText="DateDevis" SortExpression="DateDevis" />
                <asp:BoundField DataField="ID_Detail" HeaderText="ID_Detail" InsertVisible="False" ReadOnly="True" SortExpression="ID_Detail" />
                <asp:BoundField DataField="Nom_Projet" HeaderText="Nom_Projet" SortExpression="Nom_Projet" />
                <asp:BoundField DataField="Budget" HeaderText="Budget" SortExpression="Budget" />
                <asp:BoundField DataField="Detail_Projet" HeaderText="Detail_Projet" SortExpression="Detail_Projet" />
                <asp:BoundField DataField="FK_ID_Devis" HeaderText="FK_ID_Devis" SortExpression="FK_ID_Devis" />
            </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:V1artiConnectionString %>" SelectCommand="SELECT Devis.ID_Devis, Devis.Client_id, Devis.Artisan_Id, Devis.DateDevis, Detail_Devis.ID_Detail, Detail_Devis.Nom_Projet, Detail_Devis.Budget, Detail_Devis.Detail_Projet, Detail_Devis.FK_ID_Devis FROM Devis INNER JOIN Detail_Devis ON Devis.ID_Devis = Detail_Devis.FK_ID_Devis"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:V1artiConnectionString %>" SelectCommand="SELECT * FROM [Artisan] WHERE ([Statu] = @Statu)">
             <SelectParameters>
                 <asp:Parameter DefaultValue="0" Name="Statu" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
        <H2 Style="color:#64C657;font-family:'Dancing Script';text-align:center;margin:80px 0px;">Nouveaux Artisans<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
         </H2>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
<asp:GridView ID="GridView4" runat="server" class="table table-hover table-dark" style="width:80%;margin:120px; box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="ID_ARTISAN" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" OnSelectedIndexChanging="GridView4_SelectedIndexChanging">
             <Columns>
                

                 <asp:BoundField DataField="ID_ARTISAN" HeaderText="ID_ARTISAN" InsertVisible="False" ReadOnly="True" SortExpression="ID_ARTISAN" />
                 <asp:BoundField DataField="NOM_ARTISAN" HeaderText="NOM_ARTISAN" SortExpression="NOM_ARTISAN" />
                 <asp:BoundField DataField="EMAIL_ARTISAN" HeaderText="EMAIL_ARTISAN" SortExpression="EMAIL_ARTISAN" />
                 <asp:BoundField DataField="MDP_ARTISAN" HeaderText="MDP_ARTISAN" SortExpression="MDP_ARTISAN" />
                 <asp:BoundField DataField="VILLE_ARTISAN" HeaderText="VILLE_ARTISAN" SortExpression="VILLE_ARTISAN" />
                 <asp:BoundField DataField="TELEPHONE_ARTISAN" HeaderText="TELEPHONE_ARTISAN" SortExpression="TELEPHONE_ARTISAN" />
                 <asp:BoundField DataField="PROFESSION_ARTISAN" HeaderText="PROFESSION_ARTISAN" SortExpression="PROFESSION_ARTISAN" />
                 <asp:BoundField DataField="PRIXPARJOUR" HeaderText="PRIXPARJOUR" SortExpression="PRIXPARJOUR" />
                 <asp:BoundField DataField="ANNEE_EXP" HeaderText="ANNEE_EXP" SortExpression="ANNEE_EXP" />
                 <asp:BoundField DataField="NOTE" HeaderText="NOTE" SortExpression="NOTE" />
                 <asp:BoundField DataField="click" HeaderText="click" SortExpression="click" />
                 <asp:BoundField DataField="Statu" HeaderText="Statu" SortExpression="Statu" />
             </Columns>
         </asp:GridView>

        <div>

            <table class="w-100" style="margin:160px;width:300px;background-color:#ABEBC6;border-radius:16px ; box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;">
                <tr >
                    <td class="auto-style1">
                        <asp:Image ID="Image1" runat="server" style="padding:30px;width:300px;height:400px;"/>
                    </td>
                    <td>ID : <asp:Label ID="Label13" runat="server" ></asp:Label>
                        <h3 style="font-family:'Poor Richard';">Nom : </h3> 
                        <asp:Label ID="Label5" runat="server" ></asp:Label>
                        <br />
                        Ville :
                        <asp:Label ID="Label6" runat="server" ></asp:Label>
                        <br />
                        Telephone :
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                        <br />
                        Profession :
                        <asp:Label ID="Label8" runat="server" ></asp:Label>
                        <br />
                        Prix Par Jour :
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                        <br />
                        Annee Experience :
                        <asp:Label ID="Label10" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>Message d introduction :
                        <asp:Label ID="Label11" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>Description :
                        <asp:Label ID="Label12" runat="server" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button5" runat="server"  class="btn btn-success" Text="Approve" OnClick="Button5_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="Don't Approve" style="margin:80px;"  class="btn btn-danger" OnClick="Button4_Click"/>
                    </td>
                </tr>
            </table>

        </div>

            </ContentTemplate>

        </asp:UpdatePanel>
         

        <div style="height:100px;">

        </div>

    </form>
</body>
    <style>
        .card-counter{
    box-shadow: 2px 2px 10px #DADADA;
    margin: 5px;
    padding: 20px 10px;
    background-color: #fff;
    height: 100px;
    border-radius: 5px;
    transition: .3s linear all;
  }

  .card-counter:hover{
    box-shadow: 4px 4px 20px #DADADA;
    transition: .3s linear all;
  }

  .card-counter.primary{
    background-color: #007bff;
    color: #FFF;
  }

  .card-counter.danger{
    background-color: #ef5350;
    color: #FFF;
  }  

  .card-counter.success{
    background-color: #66bb6a;
    color: #FFF;
  }  

  .card-counter.info{
    background-color: #26c6da;
    color: #FFF;
  }  

  .card-counter i{
    font-size: 5em;
    opacity: 0.2;
  }

  .card-counter .count-numbers{
    position: absolute;
    right: 35px;
    top: 20px;
    font-size: 32px;
    display: block;
  }

  .card-counter .count-name{
    position: absolute;
    right: 35px;
    top: 65px;
    font-style: italic;
    text-transform: capitalize;
    opacity: 0.5;
    display: block;
    font-size: 18px;
  }
        .auto-style1 {
            width: 270px;
        }
    </style>
</html>
