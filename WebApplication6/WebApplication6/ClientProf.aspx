<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientProf.aspx.cs" Inherits="WebApplication6.ClientProf" %>

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
</head>
    
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-bottom: 1px solid #14A800 ;">
        <a class="navbar-brand" style="margin-left:36%; font-weight:900;font-size:50px;" href="#">Client <span Style="color:#64C657;font-family:'Dancing Script';">Dashboard</span></a>
        
           
            <asp:Button ID="Button3" runat="server" Text="X" style="position:relative;  right: -352px;" class="btn btn-secondary" data-toggle="tooltip" data-placement="bottom" title="Se deconnecter" OnClick="Button3_Click"  />
        
      </nav>
<div>
        <h2 style="font-family:'Poor Richard';margin-top:40px;margin-left:600px;">Profile</h2>
        <form class="needs-validation" >
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
      <div class="col-md-4 mb-3">
      <label for="validationCustom02">Adresse</label>
        <asp:TextBox ID="TextBox5" runat="server"  class="form-control" ></asp:TextBox>
     
    </div>
  </div>
  
  
            <asp:Button ID="Button1" runat="server" Text="Save Edit" class="btn btn-success" style="margin-left:380px;" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Delite Profile"  class="btn btn-danger" style="margin-left:220px;" OnClick="Button2_Click"/>
</form>
    </div>
                        <asp:GridView ID="GridView1" runat="server" class="table table-hover table-dark" style="width:80%;margin:120px; box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;"></asp:GridView>

         <div style="height:150px;">

    </div>
    
    </form>
</body>
</html>
