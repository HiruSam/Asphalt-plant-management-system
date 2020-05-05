<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vehicleLog.aspx.cs" Inherits="ITP_group09_09.vehicleLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>Vehicle Log</title>

     <meta charset="UTF-8"/>
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'/>
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

        
    
        form {

            margin-left:400px;
             border-radius: 25px;
            border: 2px solid #86857f05;
            padding: 30px; 
            width: 697px;
            height: 596px;
             background:#f3f5e54a;
             font-weight: bold;
           
        }

        formlog {
            margin-left:400px;
           
        }
        #Label1{
            margin-left:200px;

        }

        

        #logid {
            margin-left:170px;
        }
        #date {
            margin-left:183px;
        }
        #roadname{
            margin-left:83px;
        }
        #time{
            margin-left:85px;
        }
        #qty{
            margin-left:154px;
        }
        #dname{
            margin-left:127px;
        }
        #sname {
            margin-left:125px;
        }
        #Button1{
              background-color: #4CAF50; /* Green */
              border: none;
              color: white;
              padding: 15px;
              text-align: center;
              text-decoration: none;
              display: inline-block;
              font-size: 16px;
              margin: 4px 2px;
              cursor: pointer;
              border-radius: 12px;
              margin-left:273px;
        }


        

        
    </style>
   
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center" style="height:100%">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='ProductionMain.aspx'">

        <a href="TraRegistration.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">Vehicle Registration</p>
        </a>
        <a href="vehicleDetails.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            <p style="font:bold 18px arial">View Vehicle details</p>

        </a>
        <a href="vehicleLog.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">Vehicle Log</p>

        </a>
       <a href="VehicleLogDetails.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">View Vehicle Log Details </p>

        </a>
        <a href="" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">Reports</p>

        </a>
       <a href="VehicleMain.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">HOME</p>

        </a>
    </nav>

</head>
<body>
     
    <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px" > WAGAWATTE ASPHALT PLANT</p>
       
    </div>

    <div  id="formlog"   >

        <form id="form1" runat="server">

            <p >   <asp:Label ID="Label1" runat="server" margin-left="199px" Text="VEHICLE LOG" ForeColor="#0a0045" Font-Size="XX-Large" ></asp:Label></p>


            <br />
            Log ID&nbsp;
            <asp:TextBox ID="logid" runat="server"></asp:TextBox>
            <br />
            <br />
            
            Date&nbsp;
            <asp:TextBox ID="date" runat="server"></asp:TextBox>
            <br /> 
            <br />
            Name of the Road&nbsp;
            <asp:TextBox ID="roadname" runat="server"></asp:TextBox>
            <br />
            <br />
            Time of departure&nbsp;
            <asp:TextBox ID="time" runat="server"></asp:TextBox>
            <br />
            <br />
            QTY (MT)&nbsp;
            <asp:TextBox ID="qty" runat="server"></asp:TextBox>
            <br />
            <br />
            Driver Name&nbsp;
            <asp:TextBox ID="dname" runat="server"></asp:TextBox>
            <br />
            <br />
            Store Keeper&nbsp;
            <asp:TextBox ID="sname" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
           
           
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="submit" />

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />


  </form>
     </div>
     
    <p>
        &nbsp;</p>
  
       
</body>
</html>
