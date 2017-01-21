<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Employee.Master" AutoEventWireup="true" CodeBehind="Cennik.aspx.cs" Inherits="WypozyczalniaSamochodow.Emploees.Cennik" %>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <strong>Cennik:</strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id_cennika" DataSourceID="SqlDataSource1" BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_cennika" HeaderText="Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="id_cennika" />
                        <asp:BoundField DataField="cena_za_km" HeaderText="Za km [zł]" 
                            SortExpression="cena_za_km" />
                        <asp:BoundField DataField="cena_za_dobe" HeaderText="Za dobę [zł]" 
                            SortExpression="cena_za_dobe" />
                        <asp:BoundField DataField="km_wliczone_doba" HeaderText="Wliczone [km]" 
                            SortExpression="km_wliczone_doba" />
                        <asp:BoundField DataField="cena_za_tydz" HeaderText="Za tydz [zł]" 
                            SortExpression="cena_za_tydz" />
                        <asp:BoundField DataField="km_wliczone_tydz" HeaderText="Wliczone [km]" 
                            SortExpression="km_wliczone_tydz" />
                        <asp:BoundField DataField="cena_za_miesiac" HeaderText="Za mies [km]" 
                            SortExpression="cena_za_miesiac" />
                        <asp:BoundField DataField="km_wliczone_miesiac" 
                            HeaderText="Wliczone [km]" SortExpression="km_wliczone_miesiac" />
                        <asp:BoundField DataField="kaucja" HeaderText="Kaucja [zł]" 
                            SortExpression="kaucja" />
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
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    DeleteCommand="DELETE FROM [Prices] WHERE [id_cennika] = @id_cennika" 
                    InsertCommand="INSERT INTO [Prices] ([cena_za_km], [cena_za_dobe], [km_wliczone_doba], [cena_za_tydz], [km_wliczone_tydz], [cena_za_miesiac], [km_wliczone_miesiac], [kaucja]) VALUES (@cena_za_km, @cena_za_dobe, @km_wliczone_doba, @cena_za_tydz, @km_wliczone_tydz, @cena_za_miesiac, @km_wliczone_miesiac, @kaucja)" 
                    SelectCommand="SELECT * FROM [Prices]" 
                    UpdateCommand="UPDATE [Prices] SET [cena_za_km] = @cena_za_km, [cena_za_dobe] = @cena_za_dobe, [km_wliczone_doba] = @km_wliczone_doba, [cena_za_tydz] = @cena_za_tydz, [km_wliczone_tydz] = @km_wliczone_tydz, [cena_za_miesiac] = @cena_za_miesiac, [km_wliczone_miesiac] = @km_wliczone_miesiac, [kaucja] = @kaucja WHERE [id_cennika] = @id_cennika">
                    <DeleteParameters>
                        <asp:Parameter Name="id_cennika" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cena_za_km" Type="Decimal" />
                        <asp:Parameter Name="cena_za_dobe" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_doba" Type="Int32" />
                        <asp:Parameter Name="cena_za_tydz" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_tydz" Type="Int32" />
                        <asp:Parameter Name="cena_za_miesiac" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_miesiac" Type="Int32" />
                        <asp:Parameter Name="kaucja" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cena_za_km" Type="Decimal" />
                        <asp:Parameter Name="cena_za_dobe" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_doba" Type="Int32" />
                        <asp:Parameter Name="cena_za_tydz" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_tydz" Type="Int32" />
                        <asp:Parameter Name="cena_za_miesiac" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_miesiac" Type="Int32" />
                        <asp:Parameter Name="kaucja" Type="Int32" />
                        <asp:Parameter Name="id_cennika" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="id_cennika" DataSourceID="SqlDataSource2" 
                    GridLines="Vertical" Height="50px" Width="125px" 
                    AllowPaging="True">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="id_cennika" HeaderText="id_cennika" 
                            InsertVisible="False" ReadOnly="True" SortExpression="id_cennika" />
                        <asp:BoundField DataField="cena_za_km" HeaderText="cena_za_km" 
                            SortExpression="cena_za_km" />
                        <asp:BoundField DataField="cena_za_dobe" HeaderText="cena_za_dobe" 
                            SortExpression="cena_za_dobe" />
                        <asp:BoundField DataField="km_wliczone_doba" HeaderText="km_wliczone_doba" 
                            SortExpression="km_wliczone_doba" />
                        <asp:BoundField DataField="cena_za_tydz" HeaderText="cena_za_tydz" 
                            SortExpression="cena_za_tydz" />
                        <asp:BoundField DataField="km_wliczone_tydz" HeaderText="km_wliczone_tydz" 
                            SortExpression="km_wliczone_tydz" />
                        <asp:BoundField DataField="cena_za_miesiac" HeaderText="cena_za_miesiac" 
                            SortExpression="cena_za_miesiac" />
                        <asp:BoundField DataField="km_wliczone_miesiac" 
                            HeaderText="km_wliczone_miesiac" SortExpression="km_wliczone_miesiac" />
                        <asp:BoundField DataField="kaucja" HeaderText="kaucja" 
                            SortExpression="kaucja" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    DeleteCommand="DELETE FROM [Prices] WHERE [id_cennika] = @id_cennika" 
                    InsertCommand="INSERT INTO [Prices] ([cena_za_km], [cena_za_dobe], [km_wliczone_doba], [cena_za_tydz], [km_wliczone_tydz], [cena_za_miesiac], [km_wliczone_miesiac], [kaucja]) VALUES (@cena_za_km, @cena_za_dobe, @km_wliczone_doba, @cena_za_tydz, @km_wliczone_tydz, @cena_za_miesiac, @km_wliczone_miesiac, @kaucja)" 
                    SelectCommand="SELECT * FROM [Prices]" 
                    FilterExpression="id_cennika='{0}'"
                    UpdateCommand="UPDATE [Prices] SET [cena_za_km] = @cena_za_km, [cena_za_dobe] = @cena_za_dobe, [km_wliczone_doba] = @km_wliczone_doba, [cena_za_tydz] = @cena_za_tydz, [km_wliczone_tydz] = @km_wliczone_tydz, [cena_za_miesiac] = @cena_za_miesiac, [km_wliczone_miesiac] = @km_wliczone_miesiac, [kaucja] = @kaucja WHERE [id_cennika] = @id_cennika">
                    <DeleteParameters>
                        <asp:Parameter Name="id_cennika" Type="Int32" />
                    </DeleteParameters>
                    <FilterParameters>
                        <asp:ControlParameter Name="id_cennika" ControlID="GridView1"
                        PropertyName="SelectedValue" />
                    </FilterParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cena_za_km" Type="Decimal" />
                        <asp:Parameter Name="cena_za_dobe" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_doba" Type="Int32" />
                        <asp:Parameter Name="cena_za_tydz" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_tydz" Type="Int32" />
                        <asp:Parameter Name="cena_za_miesiac" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_miesiac" Type="Int32" />
                        <asp:Parameter Name="kaucja" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cena_za_km" Type="Decimal" />
                        <asp:Parameter Name="cena_za_dobe" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_doba" Type="Int32" />
                        <asp:Parameter Name="cena_za_tydz" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_tydz" Type="Int32" />
                        <asp:Parameter Name="cena_za_miesiac" Type="Int32" />
                        <asp:Parameter Name="km_wliczone_miesiac" Type="Int32" />
                        <asp:Parameter Name="kaucja" Type="Int32" />
                        <asp:Parameter Name="id_cennika" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
