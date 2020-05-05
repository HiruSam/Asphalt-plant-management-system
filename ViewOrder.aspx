<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="ITP_group09_09.WebForm2" %>

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

        .w3-sidebar {
            width: 180px;
            background: #EAB309;
        }

        .w3-row-padding img {
            margin-bottom: 12px
        }
         #form {
            font-weight: bold;
            margin-left: 300px;
            border-radius: 25px;
            border: 2px solid #86857f05;
            ;
            padding: 38px;
            width: 1000px;
            height: 100%;
            background: #f3f5e54a;
        }
        </style>
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center" style="height:100%">
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
<body>
    <form id="form1" runat="server">
       <div id="home" style="background-color:#EAB309">
        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
       </div>
           
        <div id="form">
            <p style="margin-left:300px">
            <asp:Label ID="title" runat="server" Text="VIEW ORDERS" ForeColor="#000066" Font-Size="XX-Large" ></asp:Label>
        </p>
            <div style ="margin-left:500px">
                
                <asp:Label ID="searchdrp" runat="server" Text="Search By Order ID"></asp:Label>
                
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="ord_id" DataValueField="ord_id"></asp:DropDownList>
                <asp:Button ID="search" runat="server" Text="SEARCH" OnClick="search_Click" />
                <asp:Button ID="refresh" runat="server" Text="REFRESH" OnClick="refresh_Click" />

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" SelectCommand="SELECT DISTINCT [ord_id] FROM [Orders]"></asp:SqlDataSource>

            </div>
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ord_id" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="748px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ord_id" HeaderText="OrderID" ReadOnly="True" SortExpression="ord_id" />
                <asp:BoundField DataField="ord_type" HeaderText="Type" SortExpression="ord_type" />
                <asp:BoundField DataField="ord_date" HeaderText="Date" SortExpression="ord_date" />
                <asp:BoundField DataField="ord_email" HeaderText="Email" SortExpression="ord_email" />
                <asp:BoundField DataField="ord_phone" HeaderText="Phone" SortExpression="ord_phone" />
                <asp:CommandField ButtonType="Button" HeaderText="UPDATE" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" HeaderText="DELETE" ShowDeleteButton="True" ShowHeader="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" DeleteCommand="DELETE FROM [Orders] WHERE [ord_id] = @ord_id" InsertCommand="INSERT INTO [Orders] ([ord_id], [ord_type], [ord_date], [ord_email], [ord_phone]) VALUES (@ord_id, @ord_type, @ord_date, @ord_email, @ord_phone)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [ord_type] = @ord_type, [ord_date] = @ord_date, [ord_email] = @ord_email, [ord_phone] = @ord_phone WHERE [ord_id] = @ord_id">
                <DeleteParameters>
                    <asp:Parameter Name="ord_id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ord_id" Type="String" />
                    <asp:Parameter Name="ord_type" Type="String" />
                    <asp:Parameter Name="ord_date" DbType="Date" />
                    <asp:Parameter Name="ord_email" Type="String" />
                    <asp:Parameter Name="ord_phone" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ord_type" Type="String" />
                    <asp:Parameter Name="ord_date" DbType="Date" />
                    <asp:Parameter Name="ord_email" Type="String" />
                    <asp:Parameter Name="ord_phone" Type="Int32" />
                    <asp:Parameter Name="ord_id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ord_id" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="751px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ord_id" HeaderText="OrderID" ReadOnly="True" SortExpression="ord_id" />
                    <asp:BoundField DataField="ord_type" HeaderText="Type" SortExpression="ord_type" />
                    <asp:BoundField DataField="ord_date" HeaderText="Date" SortExpression="ord_date" />
                    <asp:BoundField DataField="ord_email" HeaderText="Email" SortExpression="ord_email" />
                    <asp:BoundField DataField="ord_phone" HeaderText="Phone" SortExpression="ord_phone" />
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" SelectCommand="SELECT DISTINCT * FROM [Orders] WHERE ([ord_id] = @ord_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="ord_id" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
       </form> 
</body>
</html>
