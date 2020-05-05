<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Production.aspx.cs" Inherits="ProductionManage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

    <meta charset="UTF-8">
    <title>WAGAWATTE ASPHALT PLANT</title>
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
        th {
            font-size:larger;
            color:black;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-size: medium;
            font-weight: bold;
        }
        #td {
            font-family: Verdana, Geneva, Tahoma, sans-serif; 
            font-size: large; 
            font-weight: bold; 
            color: #FF6600;
        
        }
        #form {
            font-weight: bold;
            margin-left: 300px;
            border-radius: 25px;
            border: 2px solid #86857f05;
            ;
            padding: 38px;
            width: 1180px;
            height: 100%;
            background: #f3f5e54a;
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
                
    }
       
        .auto-style2 {
            width: 480px;
        }
        .auto-style3 {
            width: 359px;
        }
    
        
    </style>
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center" style="height:100%">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;"onclick="window.location.href='ProductionMain.aspx' "/>

        <a href="ViewProduction.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">View Production</p>
        </a>
        <a href="Production.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
            <p style="font:bold 18px arial">Calculate Daily Production</p>

        </a>
        <a href="ViewOrder.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">View Orders </p>

        </a>
        <a href="#photos" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">Reports</p>

        </a>
       <a href="ProductionMain.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">HOME</p>

        </a>
    </nav>

</head>
<body>
    <div>
    
       <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
       
    </div>
        
        <div style="margin-left:250px;" id="form">
        <form id="form1" runat="server">
            <p style="margin-left:350px">
            <asp:Label ID="title" runat="server" Text="CALCULATE PRODUCTION" ForeColor="#000066" Font-Size="XX-Large" ></asp:Label>
        </p>
                <table>
           <tr>
               <td class="auto-style3">
      
            <div style="font-size: 20px;font-weight: bold; font-family: Georgia, 'Times New Roman', Times, serif">
            Select date:
              
              

            </div>
        <p>
            <asp:Calendar ID="CalendarProduction" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="07/23/2019 18:09:26" Width="350px" NextPrevFormat="FullMonth">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            
        </p>
            </td>
               
               <td>
                   <table style="margin-left:350px;">
                       <tr>
                           <th>Type</th>
                           <th>Cost per ton</th>
                       </tr>
                       <tr>
                           <td>Wearing course</td>
                           <td>
                               <asp:DropDownList ID="WearingCost" runat="server" Height="25px" Width="180px">
                                   <asp:ListItem Selected >10500.0</asp:ListItem>
                                   <asp:ListItem  >10000.0</asp:ListItem>
                                   <asp:ListItem  >12500.0</asp:ListItem>
                               </asp:DropDownList>
                           </td>
                       </tr>
                       <tr>
                           <td> Cut-Back course</td>
                           <td>
                               <asp:DropDownList ID="CutbackCost" runat="server" Height="25px" Width="180px">
                                   <asp:ListItem Selected >12500.0</asp:ListItem>
                                   <asp:ListItem  >16000.0</asp:ListItem>
                                   <asp:ListItem  >12700.0</asp:ListItem>
                               </asp:DropDownList>
                           </td>
                       </tr>
                       <tr>
                           <td>Binder course</td>
                           <td>
                               <asp:DropDownList ID="BinderCost" runat="server" Height="25px" Width="180px">
                                   <asp:ListItem Selected >13500.0</asp:ListItem>
                                   <asp:ListItem  >12000.0</asp:ListItem>
                                   <asp:ListItem  >12500.0</asp:ListItem>
                               </asp:DropDownList>
                           </td>
                       </tr>

                   </table>
               </td>
            </tr>
           <tr>
               <td class="auto-style3">
        <p class="auto-style1" >
            <asp:Label ID="Label1" runat="server" Text="Date : " Font-Bold="True" Font-Names="Georgia" Font-Size="Medium" ForeColor="black"></asp:Label>
            <asp:TextBox ID="dateDisplayProduction" runat="server" Width="221px" Height="22px"></asp:TextBox>
        </p>
                   </td>
            </tr>
        </table>
        <br />
        <table>
        <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #000066">
            Wearing Course</p>
            <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bitumen% is required*" ForeColor="Red" ControlToValidate="bitpWC"  Font-Size="X-Small"></asp:RequiredFieldValidator>
            </p>
            <tr>
        <th class="auto-style9">
            <asp:Label ID="Label2" runat="server"  Text="Kilo grams" ></asp:Label></th>
         <th  class="auto-style9">   
             <asp:Label ID="Label3" runat="server"  Text="Bitumen %" ></asp:Label></th>
        <th  class="auto-style9">   
             <asp:Label ID="Label4" runat="server"  Text="Bitumen Kg" ></asp:Label></th>
         <th class="auto-style9">   
             <asp:Label ID="Label5" runat="server"  Text="Material(KG)" ></asp:Label>
        </th></tr>
             <tr>
        <td  class="auto-style11" id="td">
            
            <asp:TextBox ID="wcKG" runat="server" Height="33px" Value Width="180px">27500</asp:TextBox></td>
        <td class="auto-style11">    
            <asp:TextBox ID="bitpWC" runat="server" AutoPostBack="True" CssClass="auto-style10" Height="33px" OnTextChanged="bitpWC_TextChanged1" Width="180px"></asp:TextBox>
           
         </td>  
          <td class="auto-style11">
            <asp:TextBox ID="bitWC" runat="server" CssClass="auto-style10" Height="33px" ReadOnly="True" Width="180px"></asp:TextBox>
                
                </td>
            <td class="auto-style11">
            <asp:TextBox ID="wcmaterial" runat="server" CssClass="auto-style10" Height="33px" ReadOnly="True" Width="180px"></asp:TextBox>
           
        </td>
                 <td>

                     <asp:Button ID="Button2" runat="server" Text="Insert Data" Width="150px" OnClick="Button2_Click" />

                 </td>
                 <td>

                     <asp:TextBox ID="WCInsert" runat="server" Width="200px" BorderStyle="None"></asp:TextBox>

                 </td>
                </tr>
            </table>
        <br />
        <table>
        <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #000066">
            Cut-Back Course</p>
            <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
                &nbsp;</p>
            <tr>
        <th class="auto-style9">
            <asp:Label ID="Label6" runat="server"  Text="Kilo grams" ></asp:Label></th>
         <th  class="auto-style9" >   
             <asp:Label ID="Label7" runat="server"  Text="Bitumen %" ></asp:Label></th>
        <th  class="auto-style9">   
             <asp:Label ID="Label8" runat="server"  Text="Bitumen Kg" ></asp:Label></th>
         <th  class="auto-style9">   
             <asp:Label ID="Label9" runat="server"  Text="Material(KG)" ></asp:Label>
        </th></tr>
        <tr>
        <td  class="auto-style11">
            
            <asp:TextBox ID="cbKG" runat="server" Height="33px" ReadOnly="True" Width="180px">30610</asp:TextBox></td>
        <td class="auto-style11">    
            <asp:TextBox ID="CBbi" runat="server" AutoPostBack="True" CssClass="auto-style10" Height="33px" OnTextChanged="CBbi_TextChanged" Width="180px"></asp:TextBox>
           
         </td>  
          <td class="auto-style11">
            <asp:TextBox ID="cbBit" runat="server" CssClass="auto-style10" Height="33px" ReadOnly="True" Width="180px"></asp:TextBox>
                
                </td>
            <td class="auto-style11">
            <asp:TextBox ID="cbMaterial" runat="server" CssClass="auto-style10" Height="33px"  ReadOnly="True" Width="180px"></asp:TextBox>
           
        </td>
            <td>

                <asp:Button ID="insertCBdata" runat="server" Text="Insert Data" Width="150px" OnClick="insertCBdata_Click" />

            </td>
            <td>

                <asp:TextBox ID="CBinsert" runat="server" Width="200px" BorderStyle="None"></asp:TextBox>

            </td>
                </tr>
            </table>

             <table>
        <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #000066">
            Binder Course</p>
                 <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
                     &nbsp;</p>
            <tr>
        <th  " class="auto-style9">
            <asp:Label ID="Label10" runat="server"  Text="Kilo grams" ></asp:Label></th>
         <th   class="auto-style9" >   
             <asp:Label ID="Label11" runat="server"  Text="Bitumen %" ></asp:Label></th>
        <th class="auto-style9">   
             <asp:Label ID="Label12" runat="server"  Text="Bitumen Kg" ></asp:Label></th>
         <th  class="auto-style9">   
             <asp:Label ID="Label13" runat="server"  Text="Material(KG)" ></asp:Label>
        </th></tr>
        <tr>
        <td class="auto-style11">
            
            <asp:TextBox ID="BindKG" runat="server" Height="33px" ReadOnly="True" Width="180px">100700</asp:TextBox></td>
        <td class="auto-style11">    
            <asp:TextBox ID="BinderBitP" runat="server" AutoPostBack="True" CssClass="auto-style10" Height="33px" OnTextChanged="BinderbitP_changed" Width="180px"></asp:TextBox>
           
         </td>  
          <td class="auto-style11">
            <asp:TextBox ID="BinderBitkg" runat="server" CssClass="auto-style10" Height="33px" ReadOnly="True" Width="180px"></asp:TextBox>
                
                </td>
            <td class="auto-style11">
            <asp:TextBox ID="BinderMatKg" runat="server" CssClass="auto-style10" Height="33px"  ReadOnly="True" Width="180px"></asp:TextBox>
           
        </td>
            <td>

                <asp:Button ID="BindButton" runat="server" Text="Insert Data" Width="150px" OnClick="BindButton_Click"/>

            </td>
            <td>

                <asp:TextBox ID="insertBC" runat="server" Width="200px" BorderStyle="None"></asp:TextBox>

            </td>
                </tr>
            </table>
            </div>
       </div>
        
        
    </form>
</body>
</html>
