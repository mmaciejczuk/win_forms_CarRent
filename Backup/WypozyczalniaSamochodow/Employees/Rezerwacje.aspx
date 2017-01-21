<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Employee.Master" AutoEventWireup="true" CodeBehind="Rezerwacje.aspx.cs" Inherits="WypozyczalniaSamochodow.Employees.Rezerwacje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent3" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent3" runat="server">
    <table class="style1">
        <tr>
            <td>
                <b></b></td>
        </tr>
        <tr>
            <td>
                <b>REZERWACJE</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                        Width="894px" AllowPaging="True" AllowSorting="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                        SelectCommand="SELECT Clients.login As Login, Cars.marka As Marka, Cars.model As Model, 
                        ReservationDetails.data_wypozyczenia As Data_wypożyczenia, 
                        ReservationDetails.data_zwrotu As Data_zwrotu
                        FROM Cars INNER JOIN ReservationDetails ON 
                        Cars.id_samochodu = ReservationDetails.id_samochodu INNER JOIN Reservations ON 
                        ReservationDetails.id_rezerwacji = Reservations.id_rezerwacji INNER JOIN Clients ON 
                        Reservations.id_klienta = Clients.id_klienta" >
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
</asp:Content>
