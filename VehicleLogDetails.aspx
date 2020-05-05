<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VehicleLogDetails.aspx.cs" Inherits="ITP_group09_09.VehicleLogDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <title>Vehicle Log Details</title>

     <meta charset="UTF-8"/>
    
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

        
    
        form {

            margin-left:200px;
        }

        #GridView2 {
            
            margin-left:250px;
            margin-top:-68px;
            font-weight:bold;
           

        }
        .auto-style1 {
            margin-top: 0px;
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

    <form id="form1" runat="server">
        <div >
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LogID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="138px" Width="564px" CssClass="auto-style1">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="LogID" HeaderText="LogID" ReadOnly="True" SortExpression="LogID" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="road" HeaderText="road" SortExpression="road" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                    <asp:BoundField DataField="driver" HeaderText="driver" SortExpression="driver" />
                    <asp:CommandField ButtonType="Button" HeaderText="DELETE" ShowDeleteButton="True" ShowHeader="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" DeleteCommand="DELETE FROM [VehicleLog] WHERE [LogID] = @LogID" InsertCommand="INSERT INTO [VehicleLog] ([LogID], [date], [road], [time], [qty], [driver], [storekeeper]) VALUES (@LogID, @date, @road, @time, @qty, @driver, @storekeeper)" SelectCommand="SELECT * FROM [VehicleLog]" UpdateCommand="UPDATE [VehicleLog] SET [date] = @date, [road] = @road, [time] = @time, [qty] = @qty, [driver] = @driver, [storekeeper] = @storekeeper WHERE [LogID] = @LogID">
                <DeleteParameters>
                    <asp:Parameter Name="LogID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LogID" Type="Int32" />
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter Name="road" Type="String" />
                    <asp:Parameter Name="time" Type="String" />
                    <asp:Parameter Name="qty" Type="Double" />
                    <asp:Parameter Name="driver" Type="String" />
                    <asp:Parameter Name="storekeeper" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter Name="road" Type="String" />
                    <asp:Parameter Name="time" Type="String" />
                    <asp:Parameter Name="qty" Type="Double" />
                    <asp:Parameter Name="driver" Type="String" />
                    <asp:Parameter Name="storekeeper" Type="String" />
                    <asp:Parameter Name="LogID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
