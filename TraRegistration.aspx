<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TraRegistration.aspx.cs" Inherits="Transport.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8"/>
    <title>WAGAWATTE ASPHALT PLANT</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'/>
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

        
    
        .auto-style1 {
            margin-bottom: 0px;
        }

      
       #form {
               font-weight: bold;
            margin-left:400px;
             border-radius: 25px;
            border: 2px solid #86857f05;;
            padding: 38px; 
            width: 731px;
            height: 874px;
             background: #f3f5e54a;
           
        }
        #Label1{
            margin-left:170px;
        }

        #DropDownList1{
            margin-left:200px;
            height:36px;
        }
        #regnum{
             margin-left:36px;
        }
        #clr{
             margin-left:146px;
        }
        #check{
             margin-left:117px;
        }
        #dateDis{
             margin-left:70px;
        }
        #CalendarVehicle{
             margin-left:251px;
        }
        #nic{
             margin-left:98px;
        }
        #owner{
             margin-left:195px;
        }
        #vehicleDetails{
            text-decoration:underline;
        }
        #ownerDetails{
            text-decoration:underline;
        }
        .auto-style2 {
            width: 30px;
            height: 20px;
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
              margin-left:248px;

        }
        #vid{
            margin-left:172px;
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

    <div id="form" >
          
    <form id="form1" runat="server">
        
        <p>
            <asp:Label ID="Label1" runat="server" Text="VEHICLE REGISTRATION" ForeColor="#000066" Font-Size="XX-Large" ></asp:Label>
        </p>
        <p>
            <asp:Label ID="vehicleDetails" runat="server" ForeColor="#5c000c" Text="Vehicle Details" Font-Size ="Larger"></asp:Label>
        </p>

      <p>
            <asp:Label ID="Label12" runat="server" Text="Vehicle ID"></asp:Label>

            &nbsp;<asp:TextBox ID="vid" runat="server" MaxLength="8" ToolTip="Enter vehicle id" CausesValidation="True" ValidateRequestMode="Enabled" ViewStateMode="Enabled" Height="20px" Width="25px"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="REQUIRED*" ForeColor="Red" ControlToValidate ="vid"></asp:RequiredFieldValidator>
            
        </p>
       
        
        <p>
            <asp:Label ID="model" runat="server" Text="Model" ></asp:Label>

            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" CausesValidation="True" ValidateRequestMode="Enabled" ViewStateMode="Enabled">
            <asp:ListItem Value ="-1">Enter the vehicle </asp:ListItem>
            <asp:ListItem Value="Cab">Cab</asp:ListItem>
            <asp:ListItem Value="Bowser">Bowser</asp:ListItem>
            <asp:ListItem Value="Backhoe">Backhoe Loader</asp:ListItem>
        </asp:DropDownList>


        &nbsp;


       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="SELECT ONE*" ForeColor="Red" ControlToValidate ="DropDownList1"></asp:RequiredFieldValidator>

          


       

        </p>
        <p>
            <asp:Label ID="registrationum" runat="server" Text="Vehicle registration number"></asp:Label>

            &nbsp;<asp:TextBox ID="regnum" runat="server" MaxLength="8" ToolTip="Enter vehicle registration number" CausesValidation="True" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorregvehi" runat="server" ErrorMessage="REQUIRED*" ForeColor="Red" ControlToValidate ="regnum"></asp:RequiredFieldValidator>
            
        </p>
            <asp:Label ID="Label5" runat="server" Text="Vehicle color"></asp:Label>

            &nbsp;

            <asp:TextBox ID="clr" runat="server" MaxLength="8" ToolTip="Enter vehicle color" CausesValidation="True" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:TextBox>
            
        <br />
            &nbsp;<br />
            <asp:Label ID="Label6" runat="server" Text="Vehicle is insured"></asp:Label>

            &nbsp;<input id="check" type="checkbox" class="auto-style2" /><p>
            <asp:Label ID="Label7" runat="server" Text="Vehicle insurance date"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="dateDis" runat="server" CssClass="auto-style1"  ></asp:TextBox>
            &nbsp;
           
        </p>
        <p>
        <asp:Calendar ID="CalendarVehicle" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="ownerDetails" runat="server" ForeColor="#5c000c" Text="Vehicle Owner Details"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="NIC / Passport Num "></asp:Label>
            &nbsp;<asp:TextBox ID="nic" runat="server" MaxLength="10" ToolTip="Enter NIC/Passport Number" ></asp:TextBox>
         
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="Name"></asp:Label>
            &nbsp;
            <asp:TextBox ID="owner" runat="server" ToolTip="Enter Owner name"></asp:TextBox>
        </p>
        <p>

        <p>
            <asp:Button ID="Button1" runat="server" Text="Register Vehicle" OnClick="Button1_Click"  />
            <asp:TextBox ID="TextBox6" runat="server" Width="51px" Height="16px"></asp:TextBox>
        </p>
       
        

    </form>

     </div>
</body>
</html>
