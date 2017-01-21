<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Client.Master" AutoEventWireup="true" CodeBehind="Klienci.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Klienci" %>
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_klienta" 
                    DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." 
                    EnableSortingAndPagingCallbacks="True" BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id_klienta" HeaderText="Id klienta" ReadOnly="True" 
                            SortExpression="id_klienta" />
                        <asp:BoundField DataField="imie" HeaderText="Imię" SortExpression="imie" />
                        <asp:BoundField DataField="nazwisko" HeaderText="Nazwisko" 
                            SortExpression="nazwisko" />
                        <asp:BoundField DataField="miasto" HeaderText="Miasto" 
                            SortExpression="miasto" />
                        <asp:BoundField DataField="kod" HeaderText="Kod" SortExpression="kod" />
                        <asp:BoundField DataField="ulica" HeaderText="Ulica" SortExpression="ulica" />
                        <asp:BoundField DataField="nr_domu" HeaderText="Nr domu" 
                            SortExpression="nr_domu" />
                        <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                        <asp:CheckBoxField DataField="banned" HeaderText="Ban" 
                            SortExpression="banned" />
                        <asp:HyperLinkField DataNavigateUrlFields="id_klienta" 
                            DataNavigateUrlFormatString="PokazRezerwacje.aspx?id_klienta={0}" 
                            HeaderText="Rezerwacje klienta" Text="sprawdz" />
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
                    DeleteCommand="DELETE FROM [Clients] WHERE [id_klienta] = @id_klienta" 
                    InsertCommand="INSERT INTO [Clients] ([imie], [nazwisko], [miasto], [kod], [ulica], [nr_domu], [email], [banned]) VALUES (@imie, @nazwisko, @miasto, @kod, @ulica, @nr_domu, @email, @banned)" 
                    ProviderName="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString.ProviderName %>" 
                    SelectCommand="SELECT [id_klienta], [imie], [nazwisko], [miasto], [kod], [ulica], [nr_domu], [email], [banned] FROM [Clients]" 
                    
                    UpdateCommand="UPDATE [Clients] SET [imie] = @imie, [nazwisko] = @nazwisko, [miasto] = @miasto, [kod] = @kod, [ulica] = @ulica, [nr_domu] = @nr_domu, [email] = @email, [banned] = @banned WHERE [id_klienta] = @id_klienta">
                    <DeleteParameters>
                        <asp:Parameter Name="id_klienta" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="imie" Type="String" />
                        <asp:Parameter Name="nazwisko" Type="String" />
                        <asp:Parameter Name="miasto" Type="String" />
                        <asp:Parameter Name="kod" Type="String" />
                        <asp:Parameter Name="ulica" Type="String" />
                        <asp:Parameter Name="nr_domu" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="banned" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="imie" Type="String" />
                        <asp:Parameter Name="nazwisko" Type="String" />
                        <asp:Parameter Name="miasto" Type="String" />
                        <asp:Parameter Name="kod" Type="String" />
                        <asp:Parameter Name="ulica" Type="String" />
                        <asp:Parameter Name="nr_domu" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="banned" Type="Boolean" />
                        <asp:Parameter Name="id_klienta" Type="Int32" />
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
        </table>
</asp:Content>
