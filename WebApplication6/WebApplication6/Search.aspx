<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication6.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Pattaya&display=swap" rel="stylesheet">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <body>
    <nav class="navbar navbar-light bg-light">
        
        <asp:DropDownList ID="DropDownList1" runat="server" placeholder="Profession" class="custom-select mr-sm-2"  style="width: 200px;" DataSourceID="SqlDataSource1" DataTextField="PROFESSION_ARTISAN" DataValueField="PROFESSION_ARTISAN" ></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:V1artiConnectionString %>" SelectCommand="SELECT [PROFESSION_ARTISAN] FROM [Artisan]"></asp:SqlDataSource>
        <!--
   <select class="custom-select mr-sm-2" id="inlineFormCustomSelect"  style="width: 200px;">
                <option selected>Choose...</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="display:inline-block;">Search</button>


            -->
        <asp:TextBox ID="TextBox1" runat="server" class="form-control mr-sm-2" placeholder="Ville" style="width:250px;position:relative;left:-300px;"></asp:TextBox>
          
          
        
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Search" class="btn btn-outline-success my-2 my-sm-0" style="position:relative;left:-600px;" />
               

      </nav>
                 <asp:Label ID="Label5" runat="server" Text="     Nombre De Artisan : "></asp:Label>
                 <div style=" float: left; margin-left: 10px;  margin-top: 10px;border-radius: 10px; width: 200px; height: 580px;background: #43C6AC;box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px; background: -webkit-linear-gradient(to right, #F8FFAE, #43C6AC);   background: linear-gradient(to right, #F8FFAE, #43C6AC); ">
                      <asp:LinkButton ID="LinkButton1" runat="server" style="margin:60px;" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton><br />
                     <h2 style="font-family: 'Pattaya', sans-serif; color: #515A5A; text-align: center;"> Filtre</h2>
                     <asp:TextBox ID="TextBox2" runat="server" class="form-control mr-sm-2" placeholder="Annee Expe &#127891;" style="width:150px;margin:20px;"></asp:TextBox>
                     <asp:TextBox ID="TextBox3" runat="server" class="form-control mr-sm-2" placeholder="Prix Par Jour Min &#128178;" style="width:150px;margin:20px;"></asp:TextBox>
                     
                             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply filter" class="btn btn-outline-success my-2 my-sm-0" style="margin:40px;width:110px;" />

    </div>
                 <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                 &nbsp;
                <asp:Label ID="Label8" runat="server" Text="Votre ID : "></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
    
                 <div style="margin-right: 20px; float:right; height: 580px; width: 1000px; ">

                    


                     


<%--                 <asp:Panel ID="Panel2" runat="server" CssClass="col-lg-3 col-md-3 col-sm-3 col-xs-3 d-flex align-items-stretch">






                            </asp:Panel>--%>

                




                    <div class="col-md-12 pt-1" style="box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;">
        <div class="card">
            <div class="card-header">
                <h3>Results</h3>
            </div>
            <div class="card-body">
                <asp:ListView ID="ListView1" runat="server" GroupItemCount="16"  GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" OnSelectedIndexChanging="ListView1_SelectedIndexChanging">
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <div class="row text-center">
                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                        </div>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <hr />
                        <div class="row text-center">
                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                        </div>
                    </GroupTemplate>
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 d-flex align-items-stretch" >

                            

                           <div class="card">
                                <div class="card-body">
                                    <asp:Image ID="Image1" class="img-fluid max-width: 100%;" runat="server" ImageUrl='<%# GetImage(Eval("img")) %>'/>
                                </div>  

                                <div class="card-header">
                                     <asp:Label ID="Label10" runat="server" Text='<%#Eval("ID_ARTISAN")%>'></asp:Label>
                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("NOM_ARTISAN")%>'></asp:Label><br>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("VILLE_ARTISAN")%>'></asp:Label><br>
                                    <span>&#9935;</span> <asp:Label ID="Label1" runat="server" Text='<%#Eval("PROFESSION_ARTISAN")%>'></asp:Label><span>&#9935;</span><br>
                                   <span>&#128178;</span> &nbsp; <asp:Label ID="Label3" runat="server" Text='<%#Eval("PRIXPARJOUR")%>'></asp:Label>&nbsp;<span>&#128178;</span><br />
                                    <span>&#127891;</span>&nbsp; <asp:Label ID="Label4" runat="server" Text='<%#Eval("ANNEE_EXP")%>'></asp:Label>&nbsp;<span>&#127891;</span>
                                    
                                   
                                </div>
                                
                                <div class="card-footer">
                                    <asp:Button ID="Button4" runat="server" class="btn btn-primary" Text="Pick" OnClick="Button4_Click" />

                                   
                                    
                                </div>
                            </div> 
                     </div>
                    </ItemTemplate>
                    
                </asp:ListView>
            </div>
        </div>
    </div>



</div>
                     <!--hadi jdida -->





                     <!--
                     <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                      <asp:ListView ID="ListView2" runat="server" GroupItemCount="4" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1">  
                    <EmptyDataTemplate>  
                        <table runat="server" style="">  
                            <tr>  
                                <td></td>  
                            </tr>  
                        </table>  
                    </EmptyDataTemplate>  
                    <LayoutTemplate>  
                        <div class="row text-center">  
                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>  
                        </div>  
                    </LayoutTemplate>  
                    <GroupTemplate>  
                        <hr />  
                        <div class="row text-center">  
                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>  
                        </div>  
                    </GroupTemplate>  
                    <ItemTemplate>  
                          
                                <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="img/nejar.jpg" alt="Card image cap">
                        <div class="card-body">
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("NOM_ARTISAN")%>'></asp:Label>
                         
                       
                        <p class="card-text"><%#Eval("PROFESSION_ARTISAN")%></p>
                              <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Pick" />    
                            </div>
                      </div>
                    </ItemTemplate>  
                    <AlternatingItemTemplate>  
                         
                    </AlternatingItemTemplate>  
                </asp:ListView> 




       </div>

                -->

                
                 

                
                 </form>


    
    

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
</body>
    <script language="javascript" type="text/javascript">
        // <![CDATA[

        function Submit1_onclick() {
           
        }

// ]]>
    </script>
</html>
