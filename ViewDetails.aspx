<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="Procument_Management.ViewDetails" %>


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
            height: 192px;
        }
        </style>
    <nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center" style="height:100%"/>
        <!-- Avatar image in top left corner -->
        <img src="logo.png" style="width: 100%;" onclick="window.location.href='EmployeeManagement.html'"/>

       <a href="TandC.aspx" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
       
            <p style="font:bold 18px arial">HOME</p>

        </a>
    </nav>
</head>
<body>
     <form id="form1" runat="server" style="background-color:khaki">
     <div id="home" style="background-color:#EAB309">

        <p align="center" style=" height :158px;font-size:75px ;margin-top:0px;margin-left:190px;font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" > WAGAWATTE ASPHALT PLANT</p>
       
    </div>
    </div>
        
        <div style="margin-left:226px;">
            <asp:GridView ID="GVBidInfo" runat="server" Height="113px" Width="400px" AutoGenerateColumns="False" DataKeyNames="Id" 
               OnRowUpdating="GVBidInfo_RowUpdating" OnRowDeleting="GVBidInfo_RowDeleting" 
                OnRowEditing="GVBidInfo_RowEditing" OnRowCancelingEdit="GVBidInfo_RowCancelingEdit"
                ShowHeaderWhenEmpty="true"
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" style="margin-bottom: 101px" OnSelectedIndexChanged="GVBidInfo_SelectedIndexChanged" 
                >
              
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("ID") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtID" Text='<%# Eval("ID") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtIDFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Company Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Company_Name") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtCompany_Name" Text='<%# Eval("Company_Name") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCompany_NameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Company Address">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Company_Address") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtCompany_Address" Text='<%# Eval("Company_Address") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCompany_AddressFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Legal Status">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Legal_Status") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtLegal_Status" Text='<%# Eval("Legal_Status") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtLegal_StatusFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Power of Attony">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Power_of_Attony") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtPower_of_Attony" Text='<%# Eval("Power_of_Attony") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtPower_of_AttonyFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Bussiness Reg No">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Bussiness_Reg_No") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtBussiness_Reg_No" Text='<%# Eval("Bussiness_Reg_No") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtBussiness_Reg_NoFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Name of Partner">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Name_of_Partner") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtName_of_Partner" Text='<%# Eval("Name_of_Partner") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtName_of_PartnerFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Date of Reg">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Date_of_Reg") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtDate_of_Reg" Text='<%# Eval("Date_of_Reg") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDate_of_RegFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bidder Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Bidder_Name") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtBidder_Name" Text='<%# Eval("Bidder_Name") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtBidder_NameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bidder Id">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Bidder_Id") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtBidder_Id" Text='<%# Eval("Bidder_Id") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtBidder_IdFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Address") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtAddress" Text='<%# Eval("Address") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtAddressFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="Office_Tel">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Office_Tel") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtOffice_Tel" Text='<%# Eval("Office_Tel") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtOffice_TelFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile_Tel">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Mobile_Tel") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtMobile_Tel" Text='<%# Eval("Mobile_Tel") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtMobile_TelFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Fax">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Fax") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtFax" Text='<%# Eval("Fax") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFaxFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtEmail" Text='<%# Eval("Email") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtEmailFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField AccessibleHeaderText="Action">
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="Update.png" runat="server" CommandName="Edit" ToolTip="Edit"
                                Width="20px" Height="20px" />
                              <asp:ImageButton ImageUrl="Delete.png" runat="server" CommandName="Delete" ToolTip="Delete"
                                Width="20px" Height="20px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="save.png" runat="server" CommandName="Update" ToolTip="Update"
                             Width="20px" Height="20px" />
                            <asp:ImageButton ImageUrl="cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel"
                                Width="20px" Height="20px" />
                         </EditItemTemplate>
                  </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
         <div style="margin-left:250px" class="auto-style1">
             <br />
             <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green"/>
          <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red"/>
         </div>
         
    </form>
</body>
</html>
