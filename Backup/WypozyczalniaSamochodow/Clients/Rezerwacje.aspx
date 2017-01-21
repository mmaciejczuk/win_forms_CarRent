<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Rezerwacje.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Rezerwacje" %>
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
                <b>REZERWACJE</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="LabelError" runat="server" Visible="False" 
                    style="text-align: center" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ListView ID="ListView1" runat="server" >
                
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Label ID="markaLabel" runat="server" Text='<%# Eval("marka") %>' />
                            </td>
                            <td>
                                <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                            </td>
                            <td>
                                <asp:Label ID="nadwozieLabel" runat="server" Text='<%# Eval("rodzaj_nadwozia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="datawypLabel" runat="server" Text='<%# Eval("data_wypozyczenia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="dataZwrLabel" runat="server" Text='<%# Eval("data_zwrotu") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                     <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Label ID="markaLabel" runat="server" Text='<%# Eval("marka") %>' />
                            </td>
                            <td>
                                <asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
                            </td>
                            <td>
                                <asp:Label ID="nadwozieLabel" runat="server" Text='<%# Eval("rodzaj_nadwozia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="datawypLabel" runat="server" Text='<%# Eval("data_wypozyczenia") %>' />
                            </td>
                            <td>
                                <asp:Label ID="dataZwrLabel" runat="server" Text='<%# Eval("data_zwrotu") %>' />
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
                                                Marka</th>
                                            <th id="Th2" runat="server">
                                                Model</th>
                                            <th id="Th3" runat="server">
                                                Nadwozie</th>
                                            <th id="Th4" runat="server">
                                                Data wypożyczenia</th>
                                            <th id="Th5" runat="server">
                                                Data zwrotu</th>
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
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
