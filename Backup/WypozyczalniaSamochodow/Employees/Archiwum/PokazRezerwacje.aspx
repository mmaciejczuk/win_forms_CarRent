<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Client.Master" AutoEventWireup="true" CodeBehind="PokazRezerwacje.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.PokazRezerwacje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id_rezerwacji" DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_rezerwacji" HeaderText="Id" 
                            ReadOnly="True" SortExpression="id_rezerwacji" />
                        <asp:BoundField DataField="id_klienta" HeaderText="id_klienta" 
                            SortExpression="id_klienta" Visible="False" />
                        <asp:BoundField DataField="data_aktualizacji" HeaderText="Data aktualizacji" 
                            SortExpression="data_aktualizacji" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    DeleteCommand="DELETE FROM [Reservations] WHERE [id_rezerwacji] = @id_rezerwacji" 
                    InsertCommand="INSERT INTO [Reservations] ([id_klienta], [data_aktualizacji]) VALUES (@id_klienta, @data_aktualizacji)" 
                    ProviderName="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [id_rezerwacji], [id_klienta], [data_aktualizacji] FROM [Reservations] WHERE ([id_klienta] = @id_klienta)" 
                    UpdateCommand="UPDATE [Reservations] SET [id_klienta] = @id_klienta, [data_aktualizacji] = @data_aktualizacji WHERE [id_rezerwacji] = @id_rezerwacji">
                    <DeleteParameters>
                        <asp:Parameter Name="id_rezerwacji" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id_klienta" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="data_aktualizacji" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="id_klienta" QueryStringField="id_klienta" 
                            Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="id_klienta" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="data_aktualizacji" />
                        <asp:Parameter Name="id_rezerwacji" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#DEDFDE" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                    GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id_rezerwacji" HeaderText="Id" 
                            SortExpression="id_rezerwacji" />
                        <asp:BoundField DataField="id_samochodu" HeaderText="Samochod" 
                            SortExpression="id_samochodu" />
                        <asp:BoundField DataField="data_wypozyczenia" HeaderText="Data wypożyczenia" 
                            SortExpression="data_wypozyczenia" />
                        <asp:BoundField DataField="data_zwrotu" HeaderText="Data zwrotu" 
                            SortExpression="data_zwrotu" />
                        <asp:BoundField DataField="platnosc" HeaderText="Sposób zapłaty" 
                            SortExpression="platnosc" />
                        <asp:BoundField DataField="status" HeaderText="Status rezerwacji" 
                            SortExpression="status" />
                        <asp:BoundField DataField="rabat" HeaderText="Rabat [%]" SortExpression="rabat" />
                        <asp:BoundField DataField="uwagi" HeaderText="Uwagi" SortExpression="uwagi" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT [id_rezerwacji], [id_samochodu], [data_wypozyczenia], [data_zwrotu], [platnosc], 
                    [status], [rabat], [uwagi] FROM [ReservationDetails] WHERE ([id_rezerwacji] = @id_rezerwacji)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="id_rezerwacji" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
