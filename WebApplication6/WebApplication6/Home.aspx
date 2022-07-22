<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication6.WebForm1" %>

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

    <title>Les artisans de demain</title>
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-bottom: 1px solid #14A800 ;">
        <a class="navbar-brand" href="#">Les artisans de demain</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="#">Acceuil <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Connect.aspx">Trouver un artisan</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Connect.aspx">Trouver un job</a>
              </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search">
            <button id="opla" class="btn btn-outline-success my-2 my-sm-0" type="button" >Ooopla</button>
          </form>
        </div>
      </nav>


    <div class="mid1" style=" height: 550px; width: 500px; float:left;  margin: 40px;">
        <h1 style="font-family: 'Pattaya', sans-serif; font-size: 60px;">Join the world's work marketplace </h1>
        <h3 style="font-family: 'Pattaya', sans-serif; color: #95A5A6;margin-top: 40px;">Find great talent. Build your business.
            Take your career to the next level.
            
            </h3>
            <div class="but" style="margin-top: 100px; margin-left: 60px; ">
                
                <a class="btn btn-success" href="Connect.aspx">
                    Trouver un Aritsan
                </a>
                 <a class="btn btn-outline-success" href="Connect.aspx">
                    Trouver un Job
                </a>
               <%-- <button type="button" class="btn btn-success" onclick="Alert('Veuilliez vous inscrire autant que client!')">Trouver un Aritsan</button>
                <button type="button" class="btn btn-outline-success"  onclick="Alert('Veuilliez vous inscrire autant qu artisan!')">Trouver un Job</button>--%>

            </div>
         
    </div>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style=" height: 550px; width: 600px; float: right; margin-top: 40px;">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="img/artma.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/artisanat-cuir.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/zelij.jpg" alt="Third slide">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    

      <div class="forclientcontainer" style="position: relative;">
        <img src="img/forclient.jpg" style=" z-index: -1;margin: 15px; height: 600px; width: 1225px;border-radius: 8px;">
        <div class="forclient" style="transform: translateY(-100%);padding: 50px; z-index: 10;position: absolute;">
            <h2 style=" color: #2E4053; font-size: 25px; font-weight: 900; ">For Client</h2>
            <H1 style="font-family: 'Pattaya', sans-serif;padding-top: 40px; font-size: 60px;">Find Talent <br> Your way</H1>
            <p style="padding: 40px 0;color: white; font-size: 20px; font-weight: bold;">Work with the largest network of independent <br> professionals and get things done—from quick <br> turnarounds to big transformations.</p>
            <div >
                <button style="margin-right: 90px;height: 150px; width: 300px; border-radius: 10px; background-color: #14A800; font-size: 20px; font-weight: bold; color: white; border: none;  " onmouseover="this.style.backgroundColor='white'; this.style.color='#14A800'; " onmouseout="this.style.backgroundColor='#14A800'; this.style.color='white'; "> Post a Job and hire a Pro <br> Talent Marketplace -></button>
            <button  style="margin-right: 90px; height: 150px; width: 300px; border-radius: 10px; background-color: #14A800; font-size: 20px; font-weight: bold; color: white; border: none;  " onmouseover="this.style.backgroundColor='white'; this.style.color='#14A800'; " onmouseout="this.style.backgroundColor='#14A800'; this.style.color='white'; "> Browse and Buy a Poject <br> Project Catalogue -></button>
            <button  style="height: 150px; width: 300px; border-radius: 10px; background-color: #14A800; font-size: 20px; font-weight: bold; color: white; border: none;  " onmouseover="this.style.backgroundColor='white'; this.style.color='#14A800'; " onmouseout="this.style.backgroundColor='#14A800'; this.style.color='white'; "> chi haja <br> Talent Marketplace -></button>
        
            </div>
            </div>
        
    </div>
    
<div>
    <div style=" height: 95%; width: 50%; margin: 20PX; float: left; ">
        <div style="margin-left: 100PX">
        <h1 style="font-family: 'Noto Serif', serif;font-weight:1000; font-size: 80px;">Hire a Pro <br> for any skill</h1>
        <div  style="font-size: 40px; font-weight: bold; color: #7B7D7D;cursor: pointer; margin-top: 20px;">
            <span  id="sp1" onclick="sp1()" onmouseover="this.style.color='#14A800'; " onmouseout="this.style.color='#7B7D7D'">Poterie</span><br>
            <span id="sp2" onclick="sp2()" onmouseover="this.style.color='#14A800'; " onmouseout="this.style.color='#7B7D7D'">Couturier</span><br>
            <span  id="sp3" onclick="sp3()" onmouseover="this.style.color='#14A800'; " onmouseout="this.style.color='#7B7D7D'">Gebs Sculpture</span><br>
            <Span  id="sp4" onclick="sp4()" onmouseover="this.style.color='#14A800'; " onmouseout="this.style.color='#7B7D7D'">Menuisier</Span><br>
            <span  id="sp5" onclick="sp5()" onmouseover="this.style.color='#14A800'; " onmouseout="this.style.color='#7B7D7D'">Tapisereie</span><br>
            <span  id="sp6" onclick="sp6()" onmouseover="this.style.color='#14A800'; " onmouseout="this.style.color='#7B7D7D'">Broderie</span><br>
        </div>
        </div>
    </div>
    <div  style=" width: 30%; height: 95%; float:right; margin-top: 50px; margin-right: 100px; ">
       <div class="imgskill" style="height: 30%; width: 20%;"> 
        <img id="imsp1" src="img/zelij.jpg" style="height: 400px; width: 400px; border-radius: 8px;">
        <div id="amer">
           
          
           
        </div>
       </div>

    </div>
</div>
  

        <img src="img/ARTISAN-11.jpg" style=" position: relative; left: 50px ;height: 570px; width: 600px; border-radius: 8px 0px 0px 8px; ">  
    
        <div style="display: inline-block; float: right; background-color: #E9967A; height: 570px; width: 600px;position: relative; right: 15px;">
            <h2 style=" color: white; font-size: 25px; font-weight: 900; padding-left: 30px; ">For Talent</h2>
            <H1 style=" color: white;font-family: 'Pattaya', sans-serif;font-size: 60px;padding-top: 40px;  padding-left: 30px;">Find great <br>
                work</H1>
            <p style=" color: white;padding: 40px 0; font-size: 20px; font-weight: bold; padding-left: 30px;">  Meet clients you’re excited to work with and take <br>
                your career or business to new heights.</p>
                <button  type="button"  style="border-radius: 22px; border: none; position:relative; left:  350px; color:#E9967A; height: 30px; font-weight: bold;">Trouver des Opportunites</button>
            <hr >
            <div >

           
            <div style="margin-left:20px;display: inline-block;width: 200px;  font-family: 'Pattaya', sans-serif;font-size: 20px; color: white;">
                <p>Find opportunities for every stage of your  career</p>
            </div>
            <div style=" display: inline-block;width: 200px;  font-family: 'Pattaya', sans-serif;font-size: 20px;color: white;">
                <p>Control when, where, and how you work</p>
            </div>
            <div style="display: inline-block; width: 150px ; text-overflow: clip;  font-family: 'Pattaya', sans-serif;font-size: 20px;color: white;">
                <p>Explore different ways to earn</p>
            </div>
         </div>
        </div>
        <%--<div>
            <h2 style="color: #797D7F; font-size: small; padding-left: 20px; padding-top: 50px;">Nos Partenaires</h2>
            <div class="brands">
                <div class="small-container">
                <div class="row">
                <div class="col-5">
                <img src="img/micro.png">
                </div>
                <div class="col-5">
                <img src="img/go.png">
                </div>
                <div class="col-5">
                <img src="img/bnb.png">
                </div>
                <div class="col-5">
                <img src="img/g.png">
                </div>
                <div class="col-5">
                <img src="img/am.png" >
                </div>
                
                </div>
            </div>
        </div>

    
</div>--%>
<div class="bg-modal" >
	<div class="modal-contents" style="background-color: #8EC5FC;
background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);
; background-repeat: no-repeat; background-size: cover;" >

		<div class="close">+</div>
		
		<form runat="server" id="form2">

			<asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="E-mail"></asp:TextBox>
			<asp:TextBox ID="TextBox2" runat="server" type="password" placeholder="Mot de passe"></asp:TextBox>
			<asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" class="btn btn-outline-success" /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Connect.aspx" style="color:white;" onmouseover="this.style.color='white';">Creer un Compte</asp:HyperLink>
		</form>

	</div>
</div>




        <!--Bottom Footer-->
		<div class="bottom section-padding">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="copyright">
							<p>© <span>2021</span> <a href="#" class="transition">FALLAHI INC </a> All rights reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</div>















    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    
</body>
    <script>

        function sp1() {
            imsp1.src = 'img/pot3.jpg';
            this.style.color = '#14A800';

        }
        function sp2() {
            imsp1.src = 'img/coutu.jpeg';
            this.style.color = '#14A800';
        }
        function sp3() {
            imsp1.src = 'img/gebs.jpg';
            this.style.color = '#14A800';
        }
        function sp4() {
            imsp1.src = 'img/nejar.jpg';
            this.style.color = '#14A800';
        }
        function sp5() {
            imsp1.src = 'img/tapis.jpg';
            this.style.color = '#14A800';
        }
        function sp6() {
            imsp1.src = 'img/bro.jpg';
            this.style.color = '#14A800';
        }

        document.getElementById('opla').addEventListener("click", function () {
            document.querySelector('.bg-modal').style.display = "flex";
        });

        document.querySelector('.close').addEventListener("click", function () {
            document.querySelector('.bg-modal').style.display = "none";
        });
    </script>
    <style>
        
      
.brands{
    margin:100px auto;
    
}
.col-5{
    width: 160px;
}
.col-5 img{
    width: 100%;
    cursor: pointer;
    filter: grayscale(100%);
}
.col-5 img:hover{
    filter: grayscale(0%);
}
.small-container{
    max-width: 1080px;
    margin: auto;
    padding-left: 25px;
    padding-right: 25px;
}

.row{
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    justify-content: space-around;
}




a:hover{
    text-decoration:none;
}
.section-padding {
	padding: 20px 0;
}
.bottom {
    background-color: #0a1c2e;
}
.bottom .copyright {
    color: #e5e5e5;
    font-weight: 600;
}
.copyright a {
    color: #f2ff49;
    margin-left: 3px;
    padding-right: 3px;
}
.bottom p {
    margin-bottom: 0;
    line-height: 50px;
    font-size: 16px;
    font-weight: 400;
}
.copyright p span {
    color: #d1caca;
}
.bottom .copyright p, .bottom .copyright a:hover{
    color: #6c6d83;
}


.bg-modal {
	background-color: rgba(0, 0, 0, 0.8);
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	display: none;
	justify-content: center;
	align-items: center;
}

.modal-contents {
	height: 300px;
	width: 500px;
	background-color: white;
	text-align: center;
	padding: 20px;
	position: relative;
	border-radius: 4px;
}

input {
	margin: 15px auto;
	display: block;
	width: 50%;
	padding: 8px;
	border: 1px solid gray;
}

.close {
	position: absolute;
	top: 0;
	right: 10px;
	font-size: 42px;
	color: #333;
	transform: rotate(45deg);
	cursor: pointer;
	.close:hover {
		color: #666;
	}
}


    </style>
</html>
