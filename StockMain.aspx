
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

    <meta charset="UTF-8">
    <title>WAGAWATTE ASPHALT PLANTe>WAGAWATTE ASPHALT PLANT</title>
    <link rel ="stylesheet" href="prodmainst.css" />
    
   
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <style>
        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Montserrat", sans-serif
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
        </style>
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center" style="height:100%">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='ProductionMain.aspx'">

        <a href="AddSt.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">Add / Reduce Stock</p>
        </a>
        <a href="view.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            <p style="font:bold 18px arial">View Stock</p>

        </a>
        <a href="Reorder.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">Reorder </p>

        </a>
        <a href="" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">Reports</p>

        </a>
       <a href="StockMain.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">HOME</p>

        </a>
    </nav>

</head>
<body>
    <form id="form1" runat="server">
       <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
       
    </div>

        

    <div style="margin-left:350px">

    </div>
    <div style="margin-left:350px">
        <button class="button" style="vertical-align:middle">
            <img class="auto-style3" src="adstock.png" /><br /><a href="AddSt.aspx" style="text-decoration:none"> Add /Reduce Stock</></a></button>

        <button class="button" style="vertical-align:middle; margin-left:450px" >
            <img class="auto-style3" src="viewstock.png" /><br /><a href="view.aspx" style="text-decoration:none">View Stock</></button>
    </div>
        <br />
        <div style="margin-left:350px">
        <button class="button" style="vertical-align:middle">
            <img class="auto-style3" src="order.png" /><br /><a href="Reorder.aspx" style="text-decoration:none">Reorder</></button>
        <button class="button" style="vertical-align:middle ; margin-left:450px">
            <img class="auto-style3" src="report.png" /><br /><a href="ViewStock.aspx" style="text-decoration:none">Generate Reports</></button>
    </div>
    </form>
</body>
</html>
