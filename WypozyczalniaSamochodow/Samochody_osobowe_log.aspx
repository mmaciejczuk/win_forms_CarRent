<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Samochody_osobowe_log.aspx.cs" Inherits="WypozyczalniaSamochodow.Samochody_osobowe_log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<%@ Register Assembly="Bright.WebControls" Namespace="Bright.WebControls" TagPrefix="bri" %>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <strong>SAMOCHODY OSOBOWE</strong></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" BorderColor="#CCFFFF" 
                    DataKeyField="id_samochodu" DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    RepeatDirection="Horizontal" Font-Bold="False" Font-Italic="False" 
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                    HorizontalAlign="Center">
                    <ItemTemplate>
                        <br />
                        <bri:ThumbViewer ID="ThumbViewer1" runat="server" Height="150" CssClass="zdjecie" 
                            ImageUrl='<%# Eval("zdjecie2") %>' ModalDisplayMode="Fixed" 
                            ModalFixedHeight="525" ModalFixedWidth="700" ModalImagePadding="50px" 
                            ThumbUrl='<%# Eval("zdjecie") %>' Width="200" Title='<%# Eval("model") %>' />
                        <br />
                        <strong>Marka: </strong>
                        <asp:Label ID="markaLabel" runat="server" Text='<%# Eval("marka") %>' />
                        <br />
                        <strong>Model: </strong>
                        <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                        <br />
                        <strong>Nadwozie: </strong>
                        <asp:Label ID="rodzaj_nadwoziaLabel" runat="server" 
                            Text='<%# Eval("rodzaj_nadwozia") %>' />
                        <br />
                        <strong>Pojemność silnika: </strong>
                        <asp:Label ID="pojemnosc_silnikaLabel" runat="server" 
                            Text='<%# Eval("pojemnosc_silnika") %>' />
                        <br />
                        <strong>Paliwo: </strong>
                        <asp:Label ID="rodzaj_paliwaLabel" runat="server" 
                            Text='<%# Eval("rodzaj_paliwa") %>' />
                        <br />
                        <strong>Moc: </strong>
                        <asp:Label ID="mocLabel" runat="server" Text='<%# Eval("moc") %>' />
                        <br />
                        <strong>Rok produkcji: </strong>
                        <asp:Label ID="rocznikLabel" runat="server" Text='<%# Eval("rocznik") %>' />                                              
                        <br />
                        <strong>Ładowność: </strong>
                        <asp:Label ID="ladownoscLabel" runat="server" Text='<%# Eval("ladownosc") %>' />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:HyperLink ID="LinkDoRezerwuj" runat="server" 
                        Text="rezerwuj" NavigateUrl='<%# "~/Clients/Formularz.aspx?id=" + Eval("id_samochodu")  %>'  />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT id_samochodu, marka, model, ladownosc, pojemnosc_silnika, moc, 
                    rocznik, zdjecie, zdjecie2, id_cennika, rodzaj_nadwozia, rodzaj_paliwa FROM Cars 
                    WHERE (rodzaj_nadwozia LIKE '1') OR (id_cennika LIKE '1') OR (id_cennika LIKE '2')
                    ORDER BY marka"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>
