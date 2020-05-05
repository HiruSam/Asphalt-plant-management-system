<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VehicleMain.aspx.cs" Inherits="ITP_group09_09.VehicleMain" %>

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
              background-image:url("https://images.pexels.com/photos/5230/road-fog-foggy-mist.jpg?cs=srgb&dl=fog-foggy-mist-5230.jpg&fm=jpg");
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
        </style>
     <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='EmployeeManagement.html'"/>

        <a href="#about" class="w3-bar-item w3-button w3-padding-large w3-hover-black"/>
           
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
<body>
    <form id="form1" runat="server">
       <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
       
    </div>

        

    
    <div id="form">
        <p style="margin-left:200px">
            <asp:Label ID="title" runat="server" Text="TRANSPORT MANAGEMENT" ForeColor="#000066" Font-Size="XX-Large" ></asp:Label>
        </p>

        <button class="button" style="vertical-align:middle">
            <img class="auto-style3" src="v1.png" /><br /><a href="TraRegistration.aspx" style="text-decoration:none">Vehicle Registration</></a></button>

        <button class="button" style="vertical-align:middle; margin-left:400px;border-color:aliceblue" >
            <img class="auto-style3" src="v2.png" /><br /><a href="vehicleDetails.aspx" style="text-decoration:none">Vehicle Details</></button>
   
        <br />
        
        <button class="button" style="vertical-align:middle">
            <img class="auto-style3" src="v3.png" /><br /><a href="vehicleLog.aspx" style="text-decoration:none">Vehicle Log</></button>
        <button class="button" style="vertical-align:middle ; margin-left:400px;border-color:aliceblue">
            <img class="auto-style3" src="v4.png" /><br /><a href="VehicleLogDetails.aspx" style="text-decoration:none">Vehicle Log Details</></button>
    </div>
        
    </form>
</body>
</html>
