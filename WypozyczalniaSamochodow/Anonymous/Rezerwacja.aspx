<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Client.Master" AutoEventWireup="true" CodeBehind="Rezerwacja.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Rezerwacja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" runat="server">



    <style type="text/css">
        .style1
        {
            width: 184px;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSourceReservations" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT Reservations.* FROM Reservations"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSourceReservationDetails" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT ReservationDetails.* FROM ReservationDetails" 
                    InsertCommand="INSERT INTO [ReservationDetails] ([id_samochodu], [id_rezerwacji], 
                    [platnosc], [pracownik], [rabat], [data_wypozyczenia], [data_zwrotu], [uwagi]) 
                    VALUES (@id_samochodu, @id_rezerwacji, @platnosc, @pracownik, @rabat, 
                    @data_wypozyczenia, @data_zwrotu, @uwagi)"
                    FilterExpression="id_rezerwacji='{0}'">
                    <FilterParameters>
                        <asp:ControlParameter Name="id_rezerwacji" ControlID="GridView1"
                        PropertyName="SelectedValue" />
                    </FilterParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id_samochodu" />
                        <asp:Parameter Name="id_rezerwacji" />
                        <asp:Parameter Name="platnosc" />
                        <asp:Parameter Name="status" />
                        <asp:Parameter Name="pracownik" />
                        <asp:Parameter Name="rabat" />
                        <asp:Parameter Name="data_wypozyczenia" />
                        <asp:Parameter Name="data_zwrotu" />
                        <asp:Parameter Name="uwagi" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSourceCars" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT Cars.* FROM Cars"
                    FilterExpression="id_samochodu='{0}'">
                    <FilterParameters>
                        <asp:ControlParameter Name="id_samochodu" ControlID="GridView2"
                        PropertyName="SelectedValue" />
                    </FilterParameters>
                    </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>Rezerwacja:</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id_rezerwacji" DataSourceID="SqlDataSourceReservations" 
                    Width="342px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_rezerwacji" HeaderText="id_rezerwacji" 
                            InsertVisible="False" ReadOnly="True" SortExpression="id_rezerwacji" />
                        <asp:BoundField DataField="id_klienta" HeaderText="id_klienta" 
                            SortExpression="id_klienta" />
                        <asp:BoundField DataField="data_aktualizacji" HeaderText="data_aktualizacji" 
                            SortExpression="data_aktualizacji" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                Szczegóły rezerwacji:</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="id_samochodu,id_rezerwacji,platnosc,status,pracownik" 
                    DataSourceID="SqlDataSourceReservationDetails" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_samochodu" HeaderText="id_samochodu" 
                            ReadOnly="True" SortExpression="id_samochodu" />
                        <asp:BoundField DataField="id_rezerwacji" HeaderText="id_rezerwacji" 
                            ReadOnly="True" SortExpression="id_rezerwacji" />
                        <asp:BoundField DataField="platnosc" HeaderText="platnosc" ReadOnly="True" 
                            SortExpression="platnosc" />
                        <asp:BoundField DataField="pracownik" HeaderText="pracownik" ReadOnly="True" 
                            SortExpression="pracownik" />
                        <asp:BoundField DataField="rabat" HeaderText="rabat" SortExpression="rabat" />
                        <asp:BoundField DataField="data_wypozyczenia" HeaderText="data_wypozyczenia" 
                            SortExpression="data_wypozyczenia" />
                        <asp:BoundField DataField="data_zwrotu" HeaderText="data_zwrotu" 
                            SortExpression="data_zwrotu" />
                        <asp:BoundField DataField="uwagi" HeaderText="uwagi" SortExpression="uwagi" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                Samochod:</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView4" runat="server" CellPadding="4" 
                    DataSourceID="SqlDataSourceReservationDetails" ForeColor="#333333" 
                    GridLines="None" Height="50px" Width="226px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
            <td>
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="id_samochodu" DataSourceID="SqlDataSourceCars" Height="50px" 
                    Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="id_samochodu" HeaderText="id_samochodu" 
                            InsertVisible="False" ReadOnly="True" SortExpression="id_samochodu" />
                        <asp:BoundField DataField="marka" HeaderText="marka" SortExpression="marka" />
                        <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                        <asp:BoundField DataField="ladownosc" HeaderText="ladownosc" 
                            SortExpression="ladownosc" />
                        <asp:BoundField DataField="pojemnosc_silnika" HeaderText="pojemnosc_silnika" 
                            SortExpression="pojemnosc_silnika" />
                        <asp:BoundField DataField="moc" HeaderText="moc" SortExpression="moc" />
                        <asp:BoundField DataField="rocznik" HeaderText="rocznik" 
                            SortExpression="rocznik" />
                        <asp:BoundField DataField="zdjecie" HeaderText="zdjecie" 
                            SortExpression="zdjecie" />
                        <asp:BoundField DataField="id_cennika" HeaderText="id_cennika" 
                            SortExpression="id_cennika" />
                        <asp:BoundField DataField="rodzaj_nadwozia" HeaderText="rodzaj_nadwozia" 
                            SortExpression="rodzaj_nadwozia" />
                        <asp:BoundField DataField="rodzaj_paliwa" HeaderText="rodzaj_paliwa" 
                            SortExpression="rodzaj_paliwa" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
