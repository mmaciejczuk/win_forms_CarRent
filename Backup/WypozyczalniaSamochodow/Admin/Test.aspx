<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WypozyczalniaSamochodow.Admin.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent1" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
    <table class="style1">
        <tr>
            <td>
               <asp:ListView runat="server" 
                ID="ListViewClients"
                OnItemCommand="EmployeesListView_OnItemCommand"
                DataSourceID="EmployeesDataSource" 
                DataKeyNames="id_klienta">
                <LayoutTemplate>
                  <table runat="server" id="tblEmployees" 
                         cellspacing="0" cellpadding="1" width="440px" border="1">
                    <tr id="itemPlaceholder" runat="server"></tr>
                  </table>
                  <asp:DataPager ID="EmployeesDataPager" runat="server" PageSize="10">
                    <Fields>
                      <asp:NumericPagerField />
                    </Fields>
                  </asp:DataPager>
                </LayoutTemplate>
                <ItemTemplate>
                  <tr id="Tr1" runat="server">
                    <td>
                      <asp:Label runat="server" ID="NameLabel" 
                        Text='<%#Eval("imie") + ", " + Eval("nazwisko") %>' />
                    </td>
                    <td style="width:80px">
                      <asp:LinkButton runat="server" 
                        ID="SelectEmployeeButton" 
                        Text="Add To List" 
                        CommandName="AddToList" 
                        CommandArgument='<%#Eval("imie") + ", " + Eval("nazwisko") %>' />
                    </td>
                  </tr>
                </ItemTemplate>
              </asp:ListView>
            </td>
        </tr>
        <tr>
            <td>
                <br /><br />
                <b>Selected Employees:</b><br />
                <asp:ListBox runat="server" ID="ListBoxWybraniKlienci" Rows="10" Width="300px" />
                <asp:SqlDataSource ID="EmployeesDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT [id_klienta], [imie], [nazwisko]
                    FROM Clients
                    ORDER BY [id_klienta], [imie], [nazwisko]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
