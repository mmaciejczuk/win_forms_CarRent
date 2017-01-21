<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Client.Master" AutoEventWireup="true" CodeBehind="Zablokowany.aspx.cs" Inherits="WypozyczalniaSamochodow.Anonymous.Zablokowany" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" runat="server">
    <style type="text/css">
        .style2
        {
            color: #FF0000;
        }
        .style3
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" runat="server">
    <p class="style2">
        Przykro nam, Twoje konto zostało zablokowane.
        <br />
        <span class="style3">Proszę skontaktować się z obsługą wypożyczalni aby rozwiązać problem.
        </span>
        </p>
</asp:Content>
