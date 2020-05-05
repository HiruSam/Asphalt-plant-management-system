<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TandC.aspx.cs" Inherits="Procument_Management.TandC" %>

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
            font-family: "Montserrat", sans-serif
        }

        .w3-sidebar {
            width: 180px;
            background: #EAB309;
        }

        .w3-row-padding img {
            margin-bottom: 12px
        }
        .auto-style1 {
            margin-left: 40px;
        }
        .auto-style9 {
            height: 29px;
            width: 207px;
        }
        .auto-style10 {
            width: 207px;
        }
        .auto-style11 {
            width: 207px;
            height: 43px;
        }
    </style>
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center" style="height:100%">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='EmployeeManagement.html'"/>

       <a href="ProductionMain.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">HOME</p>

        </a>
    </nav>

</head>
<body>
    <form id="form1" runat="server" style="background-color:khaki">
       <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
       
    </div>

        <div style ="margin-left:250px; height: 723px; width: 710px;">
            <div>
                <h3><u>Terms And Conditions</u></h3>
            </div>
            <asp:Label ID="Label1" runat="server" Text="Label">
                <div>
                 <p>We, the undersigned,declare that:</p>
                     <p>1.We understand that, according to instructions to bidders, 
                     bids must be supported by a bid securing declarations;</p>
                     <p>2.We accept that we shall be suspended from being eligible 
                         for contract award in any contract where bids have being invited by any of
                         the procuring entity as defined in the Procurement Guidlines published by 
                         National Procurement Agency of Sri Lanka, for the period of time of three years 
                         starting on the latest date set for closing of bids of this bid, if we:
                            <p>(a) Withdraw our bid during the period of bid validity specified; or</P>
                            <p>(b) Having been notified of the acceptance of our Bid by you,
                                during the period of bid validity.</p>                            
                     </p>
                    <p> 3.We understand that if we are a JV, the Bid Securing Declaration must be
                        in the name of the JV that submits the bid. If the Jv has not been Legally 
                        constitued at the time of bidding the bid Securing Declaration shall be in the 
                        names of all future partners as named in the form.</p>
                </div>
            </asp:Label>
            <div style="height: 51px; width: 566px">
                <asp:CheckBox ID="CheckBox1" runat="server" Text=" I Agree" Font-Size="Medium" Font-Strikeout="False" OnCheckedChanged="CheckBox1_CheckedChanged" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="*Required" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate">**<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="50px" Width="190px" /></asp:CustomValidator>
            </div>
            <br />
            <div>
                 <asp:Button ID="Button1" runat="server" Text="Next" Height="35px" Width="70px" BorderStyle="None" BackColor="#000000" OnClick="Button1_Click" ForeColor="White"/>
                 
            </div>
        </div>
      
    </form>
</body>
</html>
