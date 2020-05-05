<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockEdit.aspx.cs" Inherits="ITP_group09_09.StockEdit" %>

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

        <a href="AddStock.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">Add Stock</p>
        </a>
        <a href="ViewStock.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
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
        <div style ="margin-left:250px;">

        <div style =" margin-top:50px;"> <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
            Stock Id</p>
            
            <div style ="margin-left:150px; margin-top:-38px;">
                <p class="qun">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="22px"></asp:TextBox>
                </p>

                </div>

            <div style =" margin-top:25px;"> <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
            Added date</p>
            
            <div style ="margin-left:150px; margin-top:-38px;">
                <p class="qun">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="22px"></asp:TextBox>
                </p>

                </div>
       <div style="margin-top:30px;"> <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
            Stock Type</p>

           <div style ="margin-left:150px; margin-top:-40px;">
           <asp:RadioButtonList ID="RadioButtonList1" runat="server">
               <asp:ListItem Text="Bitumen" Value="1"></asp:ListItem>
               <asp:ListItem Text="Diesel" Value="2"></asp:ListItem>
               <asp:ListItem Text="Kerosene" Value="3"></asp:ListItem>
               <asp:ListItem Text="0 - 5" Value="4"></asp:ListItem>
               <asp:ListItem Text="5 - 10" Value="5"></asp:ListItem>
               <asp:ListItem Text="10 - 20" Value="6"></asp:ListItem>
           </asp:RadioButtonList>
               </div>
           <div style =" margin-top:35px;"> <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
            Quantity</p>
            
            <div style ="margin-left:150px; margin-top:-43px;">
                <p class="qun">
                <asp:TextBox ID="quantity" runat="server" Width="200px" Height="22px"></asp:TextBox>
                </p>

                </div>
            <div style="margin-left:150px;margin-top:32px">
            <asp:Button ID="Button1" runat="server" Text="Save" />
            </div>

            <div style="margin-left:230px;margin-top:-28px">
            <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </div>

           </div>
            </div>
        

    
    </form>
</body>
</html>
