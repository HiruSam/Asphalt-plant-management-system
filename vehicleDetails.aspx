<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vehicleDetails.aspx.cs" Inherits="ITP_group09_09.vehicleDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vehicle Details</title>

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

        #GridView1 {
            margin-left: 250px;
            margin-top: -68px;
            font-weight: bold;
        }
        #margin {

            margin-top:249px;
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
       <a href="VehicleMain.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">HOME</p>

        </a>
       <a href="" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">Reports</p>

        </a>
    </nav>


 

</head>
<body>

    
    <form id="form1" runat="server">
    
        
    <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px" > WAGAWATTE ASPHALT PLANT</p>
       
    </div>
        <div id="margin">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" SelectCommand="SELECT * FROM [Vehicles]" DeleteCommand="DELETE FROM [Vehicles] WHERE [vid] = @vid" InsertCommand="INSERT INTO [Vehicles] ([vid], [model], [regno], [color], [NIC], [Owner]) VALUES (@vid, @model, @regno, @color, @NIC, @Owner)" UpdateCommand="UPDATE [Vehicles] SET [model] = @model, [regno] = @regno, [color] = @color, [NIC] = @NIC, [Owner] = @Owner WHERE [vid] = @vid">
                <DeleteParameters>
                    <asp:Parameter Name="vid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="vid" Type="Int32" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="regno" Type="String" />
                    <asp:Parameter Name="color" Type="String" />
                    <asp:Parameter Name="NIC" Type="String" />
                    <asp:Parameter Name="Owner" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="regno" Type="String" />
                    <asp:Parameter Name="color" Type="String" />
                    <asp:Parameter Name="NIC" Type="String" />
                    <asp:Parameter Name="Owner" Type="String" />
                    <asp:Parameter Name="vid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" SelectCommand="SELECT * FROM [Vehicles]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="vid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="196px" Width="462px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="vid" HeaderText="Vehicle ID" ReadOnly="True" SortExpression="vid" />
                    <asp:TemplateField HeaderText="Model" SortExpression="model">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Cab</asp:ListItem>
                                <asp:ListItem>Bowser</asp:ListItem>
                                <asp:ListItem>Backhoe loader</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("model") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="regno" HeaderText="Regno" SortExpression="regno" />
                    <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                    <asp:BoundField DataField="NIC" HeaderText="NIC" SortExpression="NIC" />
                    <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
                    <asp:CommandField ButtonType="Button" HeaderText="UPDATE" ShowEditButton="True" ShowHeader="True" />
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

        </div>
    
   </form>
</body>
</html>
