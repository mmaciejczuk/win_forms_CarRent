<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Potwierdzenie.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Potwierdzenie" %>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <strong>POTWIERDZENIE REZERWACJI</strong></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" style="font-size: medium" 
                        Text="Gratulacje! Rezerwacja przebiegła pomyślnie!"></asp:Label>
                </td>
            </tr>
        <tr>
                <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Szczegóły rezerwacji:</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                        CellPadding="4" CellSpacing="2" ForeColor="Black" 
                        Height="50px" Width="512px">
                        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="marka" HeaderText="Marka" SortExpression="marka" />
                            <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
                            <asp:BoundField DataField="rodzaj_nadwozia" HeaderText="Rodzaj nadwozia" 
                                SortExpression="rodzaj_nadwozia" />
                            <asp:BoundField DataField="data_wypozyczenia" HeaderText="Data wypożyczenia" 
                                SortExpression="data_wypozyczenia" />
                            <asp:BoundField DataField="data_zwrotu" HeaderText="Data zwrotu" 
                                SortExpression="data_zwrotu" />
                            <asp:BoundField DataField="sposob_platnosci" HeaderText="Płatność" 
                                SortExpression="sposob_platnosci" />
<%--                            <asp:BoundField DataField="zdjecie" HeaderText="Zdjęcie" 
                                SortExpression="zdjecie" />--%>
                        </Fields>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

</asp:Content>
