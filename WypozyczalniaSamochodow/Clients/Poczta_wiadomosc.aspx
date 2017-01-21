<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientLog.Master" AutoEventWireup="true" CodeBehind="Poczta_wiadomosc.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Poczta_nowa_wiadomosc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 321px;
            text-align: right;
        }
        .style3
        {
            color: #993300;
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
                <b>SKRZYNKA POCZTOWA</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" 
                    ForeColor="#666666" StaticSubMenuIndent="10px" style="text-align: left">
                    <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#E3EAEB" />
                    <DynamicSelectedStyle BackColor="#1C5E55" />
                    <Items>
                        <asp:MenuItem Text="Nowa wiadomość" Value="Nowa wiadomość" 
                            NavigateUrl="~/Clients/Poczta_wiadomosc.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Wiadomości odebrane" Value="Wiadomości odebrane" 
                            NavigateUrl="~/Clients/Poczta_odebrane.aspx">
                        </asp:MenuItem>
                        <asp:MenuItem Text="Wiadomości wysłane" Value="Wiadomości wysłane" 
                            NavigateUrl="~/Clients/Poczta_wyslane.aspx">
                        </asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#1C5E55" />
                </asp:Menu>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Nowa wiadomość:</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxTemat" ErrorMessage="Wpisz temat wiadomości" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Temat wiadomości: </td>
            <td>
                <asp:TextBox ID="TextBoxTemat" runat="server" Height="26px" Width="308px" 
                    Font-Size="Small" MaxLength="40" BackColor="LightGoldenrodYellow"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxWiadomosc" ErrorMessage="Wpisz treść wiadomości" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Treść wiadomości:&nbsp; </td>
            <td>
                <asp:TextBox ID="TextBoxWiadomosc" runat="server" ForeColor="#333300" Height="110px" 
                    TextMode="MultiLine" Width="429px" Font-Size="Small" MaxLength="480" 
                    BackColor="LightGoldenrodYellow"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="ButtonWyczysc" runat="server" Height="26px" 
                    style="text-align: center" Text="Wyczyść" Width="100px" 
                    onclick="ButtonWyczysc_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="ButtonWyslij" runat="server" style="text-align: center" 
                    Text="Wyślij" Width="100px" onclick="ButtonWyslij_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
     </table> 
</asp:Content>
