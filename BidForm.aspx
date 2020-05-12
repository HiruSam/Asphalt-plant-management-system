<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BidForm.aspx.cs" Inherits="Procument_Management.BidForm" %>

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
            height: 26px;
        }
        .auto-style2 {
            height: 36px;
        }
        .auto-style3 {
            height: 39px;
        }
        .auto-style4 {
            height: 37px;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style6 {
            height: 44px;
        }
        .auto-style7 {
            height: 50px;
        }
        .auto-style8 {
            height: 47px;
        }
        .auto-style9 {
            height: 45px;
        }
        .auto-style10 {
            height: 1001px;
            margin-left: 235px;
        }
        </style>
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center" style="height:100%">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='EmployeeManagement.html'"/>

        <a href="ViewDetails.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">View Details</p>
        </a>
        
        <a href="#photos" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">Reports</p>

        </a>
       <a href="TandC.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">Home</p>

        </a>
    </nav>
</head>
<body>
    <form id="form1" runat="server" style="background-color:khaki">
        <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>     
    </div>
     <div class="auto-style10" style="border-style:outset;border-width:2px">

         <div style="margin-left:226px;"><h2>Bidder's Qualifications</h2></div>
            <div style="margin-left:226px;">
             <table>
                <tr>
                    <td> <asp:Label ID="Label1" runat="server" Text="1. Name of the company/Firm"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBox1" runat="server" ErrorMessage="*Enter Company Name" ControlToValidate ="TextBox1"
                    ForeColor="Red">
                    </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="2. Address"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBox2" runat="server" ErrorMessage="*Enter Company Address" ControlToValidate ="TextBox1"
                    ForeColor="Red">
                </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="3. Legal Status"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"><u>Bidder's Authorized Representative</u></td>
                </tr>     
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label4" runat="server" Text="4. Name"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox4" runat="server" Width="170px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label5" runat="server" Text="5. ID No"></asp:Label></td>
                    <td class="auto-style3"><asp:TextBox ID="TextBox5" runat="server" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBox5" runat="server" ErrorMessage="*Enter ID No" ControlToValidate ="TextBox1"
                    ForeColor="Red">
                </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style4"><asp:Label ID="Label6" runat="server" Text="6. Designation"></asp:Label></td>
                    <td class="auto-style4"> <asp:TextBox ID="TextBox6" runat="server" Width="170px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label7" runat="server" Text="7. Address"></asp:Label></td>
                    <td class="auto-style3"><asp:TextBox ID="TextBox7" runat="server" Width="170px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:Label ID="Label8" runat="server" Text="8. Telephone Numbers"></asp:Label></td>
                    <td class="auto-style1">Office  <asp:TextBox ID="TextBox20" runat="server" Width="170px"></asp:TextBox><br /><br />Mobile <asp:TextBox ID="TextBox8" runat="server" Width="170px"></asp:TextBox></td>
                    <td </td>
                </tr>
                <tr>
                    <td class="auto-style5"><asp:Label ID="Label19" runat="server" Text="9. Fax Numbers"></asp:Label></td>
                    <td class="auto-style5"><asp:TextBox ID="TextBox9" runat="server" Width="170px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style6"><asp:Label ID="Labe20" runat="server" Text="10. Email Address" Name="Email"></asp:Label></td>
                    <td class="auto-style6"><asp:TextBox ID="TextBox10" runat="server" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter Email" ControlToValidate ="TextBox1"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label21" runat="server" Text="11. Power of Attony (in case of partnership or JV)*"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox11" runat="server" Width="170px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style7"><asp:Label ID="Label22" runat="server" Text="12. Bid Amount"></asp:Label></td>
                    <td class="auto-style7"><asp:TextBox ID="TextBox19" runat="server" Width="170px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBox19" runat="server" ErrorMessage="*Enter Bid Amount" ControlToValidate ="TextBox1"
                    ForeColor="Red">
                </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style8"><asp:Label ID="Label23" runat="server" Text="13. Bussiness Registration No"></asp:Label></td>
                    <td class="auto-style8"> <asp:TextBox ID="TextBox12" runat="server" Width="170px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBox12" runat="server" ErrorMessage="*Enter Bussiness Registration No" ControlToValidate ="TextBox1"
                    ForeColor="Red">
                </asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label24" runat="server" Text="14. Date of Registration"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox13" runat="server" Width="170px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style9"><asp:Label ID="Label25" runat="server" Text="15. Name of Proprietor:"></asp:Label></td>
                    <td class="auto-style9"><asp:TextBox ID="TextBox16" runat="server" Width="341px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"><asp:TextBox ID="TextBox17" runat="server" Width="340px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"><asp:TextBox ID="TextBox18" runat="server" Width="340px"></asp:TextBox></td>
                </tr>
            </table>
            <br />
               <div style="margin-left:650px;">
                  <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="Black" Font-Size="Medium" ForeColor="White" BorderStyle="Outset" Width="90px" Height="40px"/>
               </div>  
            <br />
            <br />
            <br />
        </div>
      </div>
    </form>
</body>
</html>


   

 

