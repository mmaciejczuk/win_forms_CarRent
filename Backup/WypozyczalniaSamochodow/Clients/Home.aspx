<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.HomeLog" %>
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
                <b>HOME</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="WITAJ W PANELU KLIENTA!" 
                        Font-Bold="True" ForeColor="#663300" Font-Size="Small" 
                        style="font-size: medium"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Content>
