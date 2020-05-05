<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProduction.aspx.cs" Inherits="ITP_group09_09.ViewProduction" %>

<!DOCTYPE html>
<html lang="en">
<head>

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

        .w3-sidebar {
            width: 180px;
            background: #EAB309;
        }

        .w3-row-padding img {
            margin-bottom: 12px
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
        }
        </style>
    
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='EmployeeManagement.html'">

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
<body style="height: 649px">
    <div >
    <div id="home" style="background-color:#EAB309">

        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
        
   </div>
    <form runat="server">
    <div id="form">
       <p style="margin-left:300px">
            <asp:Label ID="title" runat="server" Text="VIEW PRODUCTION" ForeColor="#000066" Font-Size="XX-Large" ></asp:Label>
        </p>
        <div style ="margin-left:400px">


            <asp:Label ID="Label1" runat="server" Text="Search by production ID"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="prodID" DataValueField="prodID" >
                <asp:ListItem Selected="True">Select date</asp:ListItem>
                
            </asp:DropDownList>
            <asp:Button ID="search" runat="server" Text="SEARCH" OnClick="search_Click" />
            <asp:Button ID="refresh" runat="server" Text="REFRESH" OnClick="refresh_Click" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" SelectCommand="SELECT DISTINCT [prodID] FROM [Production]"></asp:SqlDataSource>


        </div>
        <p style="color:#EAB309;margin-left:250px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="prodID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="900px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="prodID" HeaderText="Production ID" InsertVisible="False" ReadOnly="True" SortExpression="prodID" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="bitper" HeaderText="Bitumen %" SortExpression="bitper" />
                    <asp:BoundField DataField="initial_w" HeaderText="Initial_W" SortExpression="initial_w" />
                    <asp:BoundField DataField="materialkg" HeaderText="Material kg" SortExpression="materialkg" />
                    <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
                    <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" HeaderText="UPDATE" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" HeaderText="DELETE" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="prodID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="900px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="prodID" HeaderText="prodID" InsertVisible="False" ReadOnly="True" SortExpression="prodID" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="bitper" HeaderText="bitper" SortExpression="bitper" />
                    <asp:BoundField DataField="initial_w" HeaderText="initial_w" SortExpression="initial_w" />
                    <asp:BoundField DataField="materialkg" HeaderText="materialkg" SortExpression="materialkg" />
                    <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:CommandField ButtonType="Button" HeaderText="UPDATE" ShowEditButton="True" ShowHeader="True" />
                    <asp:CommandField ButtonType="Button" HeaderText="DELETE" ShowDeleteButton="True" ShowHeader="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" SelectCommand="SELECT * FROM [Production]" DeleteCommand="DELETE FROM [Production] WHERE [prodID] = @prodID" InsertCommand="INSERT INTO [Production] ([Date], [bitper], [initial_w], [materialkg], [cost], [type]) VALUES (@Date, @bitper, @initial_w, @materialkg, @cost, @type)" UpdateCommand="UPDATE [Production] SET [Date] = @Date, [bitper] = @bitper, [initial_w] = @initial_w, [materialkg] = @materialkg, [cost] = @cost, [type] = @type WHERE [prodID] = @prodID">
                <DeleteParameters>
                    <asp:Parameter Name="prodID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="bitper" Type="Double" />
                    <asp:Parameter Name="initial_w" Type="Double" />
                    <asp:Parameter Name="materialkg" Type="Double" />
                    <asp:Parameter Name="cost" Type="Double" />
                    <asp:Parameter Name="type" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="bitper" Type="Double" />
                    <asp:Parameter Name="initial_w" Type="Double" />
                    <asp:Parameter Name="materialkg" Type="Double" />
                    <asp:Parameter Name="cost" Type="Double" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="prodID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" SelectCommand="SELECT * FROM [Production] WHERE ([prodID] = @prodID)" DeleteCommand="DELETE FROM [Production] WHERE [prodID] = @prodID" InsertCommand="INSERT INTO [Production] ([Date], [bitper], [initial_w], [materialkg], [cost], [type]) VALUES (@Date, @bitper, @initial_w, @materialkg, @cost, @type)" UpdateCommand="UPDATE [Production] SET [Date] = @Date, [bitper] = @bitper, [initial_w] = @initial_w, [materialkg] = @materialkg, [cost] = @cost, [type] = @type WHERE [prodID] = @prodID">
                <DeleteParameters>
                    <asp:Parameter Name="prodID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="bitper" Type="Double" />
                    <asp:Parameter Name="initial_w" Type="Double" />
                    <asp:Parameter Name="materialkg" Type="Double" />
                    <asp:Parameter Name="cost" Type="Double" />
                    <asp:Parameter Name="type" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="prodID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="bitper" Type="Double" />
                    <asp:Parameter Name="initial_w" Type="Double" />
                    <asp:Parameter Name="materialkg" Type="Double" />
                    <asp:Parameter Name="cost" Type="Double" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="prodID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </div>
    </form>

 </div>


</body>
</html>
