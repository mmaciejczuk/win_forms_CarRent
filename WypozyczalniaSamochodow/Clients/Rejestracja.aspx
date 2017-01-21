<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Client.Master" AutoEventWireup="true" CodeBehind="Rejestracja.aspx.cs" Inherits="WypozyczalniaSamochodow.Clients.Rejestracja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 362px;
        }
        .style5
        {
            font-size: medium;
            color: #333300;
        }
        .style6
        {
            font-size: medium;
            color: #333300;
            width: 352px;
        }
        .style8
        {
            font-size: small;
            color: #333300;
            width: 362px;
        }
        .style9
        {
            font-size: small;
            color: #333300;
            width: 352px;
        }
        .style10
        {
            height: 21px;
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
                <b>REJESTRACJA</b></td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td class="style10">
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Small" 
                    ForeColor="#6666FF" style="text-align: right" Visible="False"></asp:Label>
            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Small" Visible="false" 
            PostBackUrl="~/Anonymous/Logowanie.aspx"
                    ForeColor="#6666FF">Przejdź do strony logowania</asp:LinkButton>
            </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="282px" DisplaySideBar="false"
                    onfinishbuttonclick="Wizard1_FinishButtonClick" Width="922px" >
                    <WizardSteps>
                        <asp:WizardStep runat="server" title="Step 1" >
                            <table class="style1">
                                <tr>
                                    <td class="style3">
                                        &nbsp;</td>
                                    <td>
                                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                                            ControlToValidate="TextBoxLogin" 
                                            OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8" style="text-align: right">
                                        Login:</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxLogin" runat="server" Font-Size="Small" MaxLength="15" 
                                            Width="148px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBoxLogin" ErrorMessage="Wprowadź login" 
                                            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8" style="text-align: right">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style8" style="text-align: right">
                                        Hasło:</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxHaslo" runat="server" Font-Size="Small" MaxLength="50" 
                                            TextMode="Password" Width="148px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBoxHaslo" ErrorMessage="Wprowadź hasło" 
                                            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style8" style="text-align: right">
                                        &nbsp;</td>
                                    <td>
                                             &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style8" style="text-align: right">
                                        Powtórz hasło:</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxHaslo2" runat="server" 
                                            Font-Size="Small" MaxLength="50" TextMode="Password" Width="148px" 
                                            BackColor="#FFFFCC"></asp:TextBox>
                                        &nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                            ControlToValidate="TextBoxHaslo2" ErrorMessage="Potwierdź hasło" 
                                            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2" style="text-align: center">
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToCompare="TextBoxHaslo" ControlToValidate="TextBoxHaslo2" 
                                            ErrorMessage="Hasła muszą się zgadzać" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" colspan="2" style="text-align: center">
                                        <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: small"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                        <asp:WizardStep runat="server" title="Step 2">
                            <table class="style1">
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        Imię</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxImie" runat="server" Font-Size="Small" MaxLength="20" 
                                            Width="148px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="TextBoxImie" ErrorMessage="Wprowadź imię" 
                                            ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        Nazwisko:</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxNazwisko" runat="server" Font-Size="Small" 
                                            MaxLength="20" Width="148px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="TextBoxNazwisko" ErrorMessage="Wprowadź nazwisko" 
                                            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        Miasto</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxMiasto" runat="server" Font-Size="Small" MaxLength="20" 
                                            Width="148px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="TextBoxMiasto" ErrorMessage="Wprowadź miasto" 
                                            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        Kod:</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxKod" runat="server" Font-Size="Small" MaxLength="20" 
                                            Width="148px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                            ControlToValidate="TextBoxKod" ErrorMessage="Wprowadź kod" Font-Size="Small" 
                                            ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        Ulica:</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxUlica" runat="server" Font-Size="Small" MaxLength="20" 
                                            Width="148px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                            ControlToValidate="TextBoxUlica" ErrorMessage="Wprowadź ulicę" 
                                            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        Nr domu</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxNrDomu" runat="server" Font-Size="Small" MaxLength="20" 
                                            Width="148px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                            ControlToValidate="TextBoxNrDomu" ErrorMessage="Wprowadź nr domu" 
                                            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        &nbsp;</td>
                                    <td>
                                             &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9" style="text-align: right">
                                        Adres e-mail:</td>
                                    <td>
                                        <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="pole_tekstowe" 
                                            Font-Size="Small" MaxLength="50" Width="148px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                            ControlToValidate="TextBoxEmail" ErrorMessage="Wprowadź adres e-mail" 
                                            Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                            ControlToValidate="TextBoxEmail" ErrorMessage="Adres nie jest poprawny" 
                                            Font-Size="Small" ForeColor="Red" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6" style="text-align: right">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:WizardStep>
                    </WizardSteps>
                </asp:Wizard>
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
    </table>
</asp:Content>
