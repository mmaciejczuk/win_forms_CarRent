<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WypozyczalniaSamochodow.Admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent1" runat="server">
    <style type="text/css">
        .tabela
        {}
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent1" runat="server">
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
                    <asp:Label ID="Label1" runat="server" Text="WITAJ W PANELU ADMINISTRACYJNYM!" 
                        Font-Bold="True" ForeColor="#663300" Font-Size="Small" 
                        style="font-size: medium"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Content>
