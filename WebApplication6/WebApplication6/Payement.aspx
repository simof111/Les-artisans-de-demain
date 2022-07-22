<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payement.aspx.cs" Inherits="WebApplication6.Payement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container mt-3 mb-3">
    <div class="d-flex justify-content-between align-items-center mb-5">
        <div class="d-flex flex-row align-items-center">
            <h4 class="text-uppercase mt-1">Les Artisans de Demain</h4> <span class="ml-2">Payement</span>
           
        </div> <a href="WebForm3.aspx" class="cancel com-color">Cancel and return</a>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h5 class="mb-0 text-success"> 99 DH </h5>
            <h5 class="mb-3">Demande de devis</h5>
            <div class="about">
                <div class="d-flex justify-content-between">
                    <div class="d-flex flex-row mt-1">
                        <h6>Secure payement</h6>
                       
                    </div>
                    <div class="d-flex flex-row align-items-center com-color"> <i class="fa fa-plus-circle"></i>  </div>
                </div>
                <p>Insurance claim and all neccessary dependencies will be submitted to your insurer for the covered portion of this order.</p>
                   <hr>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="d-flex flex-row mt-1">
                        <h6>Demande de devis</h6>
                        
                    </div>
                      </div>
                <p>Insurance claim and all neccessary dependencies will be submitted to your insurer for the covered portion of this order.</p>
                <div class="d-flex flex-column"> <label class="radio"> <input type="radio" name="gender" value="MALE" checked>
                        <div class="d-flex justify-content-between"> <span>VISA</span> <span>**** 5645</span> </div>
                    </label> <label class="radio"> <input type="radio" name="gender" value="FEMALE">
                        <div class="d-flex justify-content-between"> <span>MASTER CARD</span> <span>**** 5069</span> </div>
                    </label> </div>
                <div class="buttons"> <asp:Button ID="Button1" runat="server" Text="Proceed to payment" class="btn btn-success btn-block" OnClick="Button1_Click" /> </div>
            </div>
        </div>
        <div class="col-md-2"> </div>
        <div class="col-md-4">
            <div class="bg-pay p-3"> <span class="font-weight-bold">Reçu</span>
                <div class="d-flex justify-content-between mt-2"> <span class="fw-500">MHT </span> <span> 79.2 DH
                 </div>
                <div class="d-flex justify-content-between mt-2"> <span class="fw-500"> TAX(%)</span> <span>20%</span> </div>
                <div class="d-flex justify-content-between mt-2"> <span class="fw-500">TAX</span> <span>+ 19.8 DH  </div>
                <div class="d-flex justify-content-between mt-2"> <span class="fw-500">MTTC </span> <span>$ 99 DH </div>
                   <hr>
                <div class="d-flex justify-content-between mt-2"> <span class="fw-500">Total </span> <span class="text-success">99 DH</span> </div>
            </div>
        </div>
    </div>
</div>
        </div>
    </form>
</body>
    <style>
        .cancel {
    text-decoration: none
}

.bg-pay {
    background-color: #eee;
    border-radius: 2px
}

.com-color {
    color: #8f37aa !important
}

.radio {
    cursor: pointer
}

label.radio input {
    position: absolute;
    top: 0;
    left: 0;
    visibility: hidden;
    pointer-events: none
}

label.radio div {
    padding: 7px 14px;
    border: 2px solid #8f37aa;
    display: inline-block;
    color: #8f37aa;
    border-radius: 3px;
    text-transform: uppercase;
    width: 100%;
    margin-bottom: 10px
}

label.radio input:checked+div {
    border-color: #8f37aa;
    background-color: #8f37aa;
    color: #fff
}

.fw-500 {
    font-weight: 400
}

.lh-16 {
    line-height: 16px
}
    </style>
</html>
