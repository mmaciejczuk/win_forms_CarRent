<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Client.Master" AutoEventWireup="true" CodeBehind="Samochody_van.aspx.cs" Inherits="WypozyczalniaSamochodow.Views_All.Samochody_van" %>
<%@ Register assembly="Bright.WebControls" namespace="Bright.WebControls" tagprefix="bri" %>
<%@ Register assembly="EeekSoft.Web.PopupWin" namespace="EeekSoft.Web" tagprefix="cc1" %>
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
                <cc1:PopupWin ID="PopupWin1" runat="server" ColorStyle="Green" Width="250" Height="120" 
                    Message="Zaloguj się aby dokonać rezerwacji" Title="Informacja" />
            </td>
        </tr>
        <tr>
            <td>
                <strong>SAMOCHODY VAN</strong></td>
        </tr>
        <tr>
            <td>
                <hr></td>
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
                        <asp:LinkButton ID="LinkButton2" runat="server">rezerwuj</asp:LinkButton>
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
                    WHERE (rodzaj_nadwozia LIKE '2') OR (id_cennika LIKE '3')
                    ORDER BY marka"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
