<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Client.Master" AutoEventWireup="true" CodeBehind="Cennik.aspx.cs" Inherits="WypozyczalniaSamochodow.Anonymous.Cennik" %>
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
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Samochody_osobowe.aspx"><%# Eval("nazwa") %>
                                </asp:HyperLink>
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
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Samochody_osobowe.aspx"><%# Eval("nazwa") %>
                                </asp:HyperLink>
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
                        <table id="Table1" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table style="border: solid 2px #336699;" cellspacing="0" cellpadding="3" rules="all">
                                        <tr style="background-color: #336699; color: White;">
                                            <th id="Th1" runat="server">
                                                Nazwa</th>
                                            <th id="Th2" runat="server">
                                                Cena za km</th>
                                            <th id="Th3" runat="server">
                                                Cena za dobę</th>
                                            <th id="Th4" runat="server">
                                                Km wliczone</th>
                                            <th id="Th5" runat="server">
                                                Cena za tydz</th>
                                            <th id="Th6" runat="server">
                                                Km wliczone</th>
                                            <th id="Th7" runat="server">
                                                Cena za miesiac</th>
                                            <th id="Th8" runat="server">
                                                Km wliczone</th>
                                            <th id="Th9" runat="server">
                                                Kaucja</th>
                                        </tr>
                                        <tr ID="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr2" runat="server">
                                <td id="Td2" runat="server" 
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
