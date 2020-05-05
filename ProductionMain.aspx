<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductionMain.aspx.cs" Inherits="ITP_group09_09.ProductionMain" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

    <meta charset="UTF-8">
    <title>WAGAWATTE ASPHALT PLANT</title>
    <link rel ="stylesheet" href="prodmainst.css" />
    
   
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <style>
        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Montserrat", sans-serif;
             background-image:  url("https://images.pexels.com/photos/5230/road-fog-foggy-mist.jpg?cs=srgb&dl=fog-foggy-mist-5230.jpg&fm=jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }

        .w3-sidebar {
            width: 180px;
            background: #EAB309;
        }

        .w3-row-padding img {
            margin-bottom: 12px
        }
        .auto-style3 {
            width: 79px;
            height: 64px;
        }
        .auto-style4 {
            margin-bottom: 174px;
        }
         #form {
            font-weight: bold;
            margin-left: 250px;
            border-radius: 25px;
            border: 2px solid #86857f05;
            ;
            padding: 38px;
            width: 1000px;
            height: 100%;
            background: #f3f5e54a;
        }
        </style>
   <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='AdminHome.html'">

        <a href="#about" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">Employee Management</p>
        </a>
        <a href="EmployeeDetails.html" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            <p style="font:bold 18px arial">Stock Control</p>

        </a>
        <a href="ProductionMain.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">Production Management</p>

        </a>
        <a href="VehicleMain.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">Transport Management</p>

        </a>
        <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">Tender Management</p>
        </a>

        <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            
            <p style="font:bold 18px arial">Procurement Management</p>
        </a>
        <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            
            <p style="font:bold 18px arial">Customer Management</p>
        </a>
        <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            
            <p style="font:bold 18px arial">Finance Management</p>
        </a>
    </nav>

</head>
<body style="height: 809px">
     <div >
    <form id="form1" runat="server">
       <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :172px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
       
    </div>

        

   
        <div id="form">
              <p style="margin-left:200px">
            <asp:Label ID="title" runat="server" Text="PRODUCTION MANAGEMENT" ForeColor="#000066" Font-Size="XX-Large" ></asp:Label>
        </p>

    <div >
        <button class="button" style="vertical-align:middle;border-color:aliceblue">
            <img class="auto-style3" src="prodIcon.png" /><br /><a href="ViewProduction.aspx" style="text-decoration:none"> View Production</a></button>

        <button class="button" style="vertical-align:middle; margin-left:400px;border-color:aliceblue" >
            <img class="auto-style3" src="cal.png" /><br /><a href="Production.aspx" style="text-decoration:none">Calculate Production</a></button>
    </div>
        <br />
        <div>
        <button class="button" style="vertical-align:middle;border-color:aliceblue">
            <img class="auto-style3" src="order.png" /><br /><a href="ViewOrder.aspx" style="text-decoration:none">View Orders</a></button>
        <button class="button" style="vertical-align:middle ; margin-left:400px;border-color:aliceblue">
            <img class="auto-style3" src="report.png" /><br /><a href="ViewOrder.aspx" style="text-decoration:none">Generate Reports</a></button>
    </div>
     </div>
        </div>
    </form>
 
</body>
</html>
