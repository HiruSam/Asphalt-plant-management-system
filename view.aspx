<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="ITP_group09_09.view" %>

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
            font-family: "Montserrat", sans-serif
        }

        .w3-sidebar {
            width: 180px;
            background: #EAB309;
        }

        .w3-row-padding img {
            margin-bottom: 12px
        }
        </style>
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center" style="height:100%">
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='ProductionMain.aspx'">

        <a href="AddSt.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
           
            <p style="font:bold 18px arial">Add / Reduce Stock</p>
        </a>
        <a href="view.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
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
        <div style ="margin-left:300px;">
             </div>
        <div style ="margin-left:250px;">
       <div> <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold; color: #FF6600">
            Stock Details</p>

  </div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Search" runat="server" Text="Search" OnClick="Button1_Click" />
            
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stockConnection %>" SelectCommand="SELECT * FROM [stock]" DeleteCommand="DELETE FROM [stock] WHERE [SId] = @original_SId" UpdateCommand="UPDATE [stock] SET [Date] = @Date, [Name] = @Name, [Amount] = @Amount, [StockLimit] = @StockLimit WHERE [SId] = @original_SId" InsertCommand="INSERT INTO [stock] ([Date], [Name], [Amount], [StockLimit]) VALUES (@Date, @Name, @Amount, @StockLimit)" OldValuesParameterFormatString="original_{0}">
    <DeleteParameters>
        <asp:Parameter Name="original_SId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Date" Type="DateTime" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Amount" Type="Double" />
        <asp:Parameter Name="StockLimit" Type="Double" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Date" Type="DateTime" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Amount" Type="Double" />
        <asp:Parameter Name="StockLimit" Type="Double" />
        <asp:Parameter Name="original_SId" Type="Int32" />
    </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="SId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" style="margin-right: 2px; margin-left: 0px;" Width="790px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="SId" HeaderText="SId" InsertVisible="False" ReadOnly="True" SortExpression="SId" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="StockLimit" HeaderText="StockLimit" SortExpression="StockLimit" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

        
            
            
       </form> 
</body>
</html>