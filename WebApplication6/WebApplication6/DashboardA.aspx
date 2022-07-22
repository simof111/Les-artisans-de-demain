<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashboardA.aspx.cs" Inherits="WebApplication6.DashboardA" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
        <a class="navbar-brand" style="margin-left:36%; font-weight:900;font-size:50px;" href="#">Artisan <span Style="color:#64C657;font-family:'Dancing Script';">Dashboard</span></a>
        
           
            <asp:Button ID="Button3" runat="server" Text="X"   style="position:relative;  right: -352px;" class="btn btn-secondary" data-toggle="tooltip" data-placement="bottom" title="Se deconnecter"  OnClick="Button3_Click" />
        
      </nav>
 <h4 style="margin-left:46%;">ID : <asp:Label ID="Label1" runat="server" style="font-family:'Poor Richard';" Text=""></asp:Label>
        </h4>
        <div class="container" style="margin-top:30px;">
    <div class="row">
    <div class="col-md-3" >
      <div class="card-counter primary" style="box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;">
        <i class="fa fa-code-fork"></i>
        <span class="count-numbers">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
        <span class="count-name">Click</span>
      </div>
    </div>

    <div class="col-md-3">
      <div class="card-counter danger" style="box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;">
        <i class="fa fa-ticket"></i>
        <span class="count-numbers">
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span>
        <span class="count-name">Devis</span>
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
        <span class="count-numbers">35</span>
        <span class="count-name">Projet</span>
      </div>
    </div>
  </div>
</div>

        <h3 style="font-family:'Poor Richard';margin:40px 0px 0px 540px;color:#64C657;">Profile  analitics</h3>
       
        <asp:Chart ID="Chart1" runat="server" style="width:450px;height:400px;box-shadow: rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px, rgba(17, 17, 26, 0.1) 0px 24px 80px;margin:80px; border-radius:15px;">
            <series>
                <asp:Series Name="Series1">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

        <asp:Chart ID="Chart2" runat="server" style="width:450px;height:400px;box-shadow: rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1) 0px 16px 56px, rgba(17, 17, 26, 0.1) 0px 24px 80px;margin:80px; border-radius:15px;">
            <series>
                <asp:Series Name="Series2" ChartType="Spline" YValuesPerPoint="2">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:GridView ID="GridView1" runat="server" class="table table-hover table-dark" style="width:80%;margin:120px; box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;"></asp:GridView>
    
    <div>
        <h2 style="font-family:'Poor Richard';margin-top:40px;margin-left:600px;">Profile</h2>
        <form class="needs-validation" novalidate>
  <div class="form-row" style="width:80%;margin-left:120px;">
    <div class="col-md-4 mb-3">
      <label for="validationCustom01">Full Name</label>
        <asp:TextBox ID="TextBox1" runat="server"  class="form-control" ></asp:TextBox>
      
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationCustom02">Numero Telepone</label>
        <asp:TextBox ID="TextBox2" runat="server"  class="form-control" ></asp:TextBox>
     
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationCustomUsername">Email and Paaseword</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text" id="inputGroupPrepend">@</span>
        </div>
          <asp:TextBox ID="TextBox3" runat="server"  class="form-control"></asp:TextBox>
          <asp:TextBox ID="TextBox4" runat="server"  class="form-control"></asp:TextBox>
      
      </div>
    </div>
  </div>
  <div class="form-row" style="width:80%;margin-left:120px;">
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Profession <span>&#9935;</span></label>
        <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
     
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom04">Ville &#128205;</label>
        <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
     
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom05">Prix par jour &#128178;</label>
        <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
    
    </div>
  </div>
  <div class="form-row" style="width:80%;margin-left:120px;">
    <div class="col-md-6 mb-3">
      <label for="validationCustom03"> Photo d profile</label>
        <asp:FileUpload ID="FileUpload1" runat="server"    class="form-control"  />     
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom04">Annee Experience &#127891;</label>
        <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>
     
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom05">Note 	&#11088;</label>
        <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox>
    
    </div>
  </div><br />
            <asp:Button ID="Button1" runat="server" Text="Save Edit" class="btn btn-success" style="margin-left:380px;" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Delite Profile"  class="btn btn-danger" style="margin-left:220px;" OnClick="Button2_Click"/>
</form>
    </div>
    
    <div style="height:350px;">

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
    </style>
</html>
