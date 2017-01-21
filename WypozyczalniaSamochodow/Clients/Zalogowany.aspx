<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Zalogowany.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Zalogowany" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            color: #666666;
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
            <td class="style2">
                <b style="font-size: small">LOGOWANIE</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
    <p class="style1">
        Witaj
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        !! Zapraszamy do skorzystania z naszej oferty.</p>
</asp:Content>
