<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Cennik.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Cennik" %>
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
                <b>CENNIK</b></td>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Label ID="nazwaLabel" runat="server" Text='<%# Eval("nazwa") %>' />
                            </td>
                            <td>
                                <asp:Label ID="cena_za_kmLabel" runat="server" 
                                    Text='<%# Eval("cena_za_km") %>' />
                            </td>
                            <td>
                                <asp:Label ID="cena_za_dobeLabel" runat="server" 
                                    Text='<%# Eval("cena_za_dobe") %>' />
                            </td>
                            <td>
                                <asp:Label ID="km_wliczone_dobaLabel" runat="server" 
                                    Text='<%# Eval("km_wliczone_doba") %>' />
                            </td>
                            <td>
                                <asp:Label ID="cena_za_tydzLabel" runat="server" 
                                    Text='<%# Eval("cena_za_tydz") %>' />
                            </td>
                            <td>
                                <asp:Label ID="km_wliczone_tydzLabel" runat="server" 
                                    Text='<%# Eval("km_wliczone_tydz") %>' />
                            </td>
                            <td>
                                <asp:Label ID="cena_za_miesiacLabel" runat="server" 
                                    Text='<%# Eval("cena_za_miesiac") %>' />
                            </td>
                            <td>
                                <asp:Label ID="km_wliczone_miesiacLabel" runat="server" 
                                    Text='<%# Eval("km_wliczone_miesiac") %>' />
                            </td>
                            <td>
                                <asp:Label ID="kaucjaLabel" runat="server" Text='<%# Eval("kaucja") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                    Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                    Text="Clear" />
                            </td>
                            <td>
                                <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="cena_za_kmTextBox" runat="server" 
                                    Text='<%# Bind("cena_za_km") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="cena_za_dobeTextBox" runat="server" 
                                    Text='<%# Bind("cena_za_dobe") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="km_wliczone_dobaTextBox" runat="server" 
                                    Text='<%# Bind("km_wliczone_doba") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="cena_za_tydzTextBox" runat="server" 
                                    Text='<%# Bind("cena_za_tydz") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="km_wliczone_tydzTextBox" runat="server" 
                                    Text='<%# Bind("km_wliczone_tydz") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="cena_za_miesiacTextBox" runat="server" 
                                    Text='<%# Bind("cena_za_miesiac") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="km_wliczone_miesiacTextBox" runat="server" 
                                    Text='<%# Bind("km_wliczone_miesiac") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="kaucjaTextBox" runat="server" Text='<%# Bind("kaucja") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Label ID="nazwaLabel" runat="server" Text='<%# Eval("nazwa") %>' />
                            </td>
                            <td>
                                <asp:Label ID="cena_za_kmLabel" runat="server" 
                                    Text='<%# Eval("cena_za_km") %>' />
                            </td>
                            <td>
                                <asp:Label ID="cena_za_dobeLabel" runat="server" 
                                    Text='<%# Eval("cena_za_dobe") %>' />
                            </td>
                            <td>
                                <asp:Label ID="km_wliczone_dobaLabel" runat="server" 
                                    Text='<%# Eval("km_wliczone_doba") %>' />
                            </td>
                            <td>
                                <asp:Label ID="cena_za_tydzLabel" runat="server" 
                                    Text='<%# Eval("cena_za_tydz") %>' />
                            </td>
                            <td>
                                <asp:Label ID="km_wliczone_tydzLabel" runat="server" 
                                    Text='<%# Eval("km_wliczone_tydz") %>' />
                            </td>
                            <td>
                                <asp:Label ID="cena_za_miesiacLabel" runat="server" 
                                    Text='<%# Eval("cena_za_miesiac") %>' />
                            </td>
                            <td>
                                <asp:Label ID="km_wliczone_miesiacLabel" runat="server" 
                                    Text='<%# Eval("km_wliczone_miesiac") %>' />
                            </td>
                            <td>
                                <asp:Label ID="kaucjaLabel" runat="server" Text='<%# Eval("kaucja") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table style="border: solid 2px #336699;" cellspacing="0" cellpadding="3" rules="all">
                                        <tr style="background-color: #336699; color: White;">
                                            <th runat="server">
                                                Nazwa</th>
                                            <th runat="server">
                                                Cena za km</th>
                                            <th runat="server">
                                                Cena za dobę</th>
                                            <th runat="server">
                                                Km wliczone</th>
                                            <th runat="server">
                                                Cena za tydz</th>
                                            <th runat="server">
                                                Km wliczone</th>
                                            <th runat="server">
                                                Cena za miesiac</th>
                                            <th runat="server">
                                                Km wliczone</th>
                                            <th runat="server">
                                                Kaucja</th>
                                        </tr>
                                        <tr ID="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" 
                                    style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:WypozyczalniaSamochodowConnectionString %>" 
                    SelectCommand="SELECT [nazwa], [cena_za_km], [cena_za_dobe], [km_wliczone_doba], [cena_za_tydz], [km_wliczone_tydz], [cena_za_miesiac], [km_wliczone_miesiac], [kaucja] FROM [Prices]">
                </asp:SqlDataSource>
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
    </table>
</asp:Content>
