<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <b></b></td>
        </tr>
        <tr>
            <td>
                <b>DANE OSOBOWE</b></td>
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
                
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
                        Height="73px" Width="364px" DataKeyNames="id_klienta">
                        <EditRowStyle BackColor="#cc9933" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="login" HeaderText="Login" 
                                SortExpression="login" />
                            <asp:BoundField DataField="imie" HeaderText="Imię" SortExpression="imie" />
                            <asp:BoundField DataField="nazwisko" HeaderText="Nazwisko" 
                                SortExpression="nazwisko" />
                            <asp:BoundField DataField="miasto" HeaderText="Miasto" 
                                SortExpression="miasto" />
                            <asp:BoundField DataField="kod" HeaderText="Kod pocztowy" 
                                SortExpression="kod" />
                            <asp:BoundField DataField="ulica" HeaderText="Ulica" SortExpression="ulica" />
                            <asp:BoundField DataField="nr_domu" HeaderText="Nr domu" 
                                SortExpression="nr_domu" />
                            <asp:BoundField DataField="email" HeaderText="Adres e-mail" 
                                SortExpression="email" />
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                 
                        SelectCommand="SELECT [login], [imie], [nazwisko], [miasto], [kod], [ulica], [nr_domu], [email], [id_klienta] FROM [Clients] WHERE ([id_klienta] = @id_klienta)" 
                        DeleteCommand="DELETE FROM [Clients] WHERE [id_klienta] = @id_klienta" 
                        InsertCommand="INSERT INTO [Clients] ([login], [imie], [nazwisko], [miasto], [kod], [ulica], [nr_domu], [email]) VALUES (@login, @imie, @nazwisko, @miasto, @kod, @ulica, @nr_domu, @email)" 
                        
                        UpdateCommand="UPDATE [Clients] SET [login] = @login, [imie] = @imie, [nazwisko] = @nazwisko, [miasto] = @miasto, [kod] = @kod, [ulica] = @ulica, [nr_domu] = @nr_domu, [email] = @email WHERE [id_klienta] = @id_klienta">
                        <DeleteParameters>
                            <asp:Parameter Name="id_klienta" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="login" Type="String" />
                            <asp:Parameter Name="imie" Type="String" />
                            <asp:Parameter Name="nazwisko" Type="String" />
                            <asp:Parameter Name="miasto" Type="String" />
                            <asp:Parameter Name="kod" Type="String" />
                            <asp:Parameter Name="ulica" Type="String" />
                            <asp:Parameter Name="nr_domu" Type="Int32" />
                            <asp:Parameter Name="email" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label2" Name="id_klienta" PropertyName="Text" 
                                Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="login" Type="String" />
                            <asp:Parameter Name="imie" Type="String" />
                            <asp:Parameter Name="nazwisko" Type="String" />
                            <asp:Parameter Name="miasto" Type="String" />
                            <asp:Parameter Name="kod" Type="String" />
                            <asp:Parameter Name="ulica" Type="String" />
                            <asp:Parameter Name="nr_domu" Type="Int32" />
                            <asp:Parameter Name="email" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>               
                </td>
            </tr>
        </table>
</asp:Content>
